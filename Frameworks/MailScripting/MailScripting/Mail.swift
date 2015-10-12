import AppKit
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> AnyObject!
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var delegate: SBApplicationDelegate! { get set }
}

// MARK: MailSaveOptions
@objc public enum MailSaveOptions : AEKeyword {
    case Yes = 0x79657320 /* 'yes ' */
    case No = 0x6e6f2020 /* 'no  ' */
    case Ask = 0x61736b20 /* 'ask ' */
}

// MARK: MailPrintingErrorHandling
@objc public enum MailPrintingErrorHandling : AEKeyword {
    case Standard = 0x6c777374 /* 'lwst' */
    case Detailed = 0x6c776474 /* 'lwdt' */
}

// MARK: MailSaveableFileFormat
@objc public enum MailSaveableFileFormat : AEKeyword {
    case NativeFormat = 0x6974656d /* 'item' */
}

// MARK: MailDefaultMessageFormat
@objc public enum MailDefaultMessageFormat : AEKeyword {
    case PlainFormat = 0x646d7074 /* 'dmpt' */
    case RichFormat = 0x646d7274 /* 'dmrt' */
}

// MARK: MailQuotingColor
@objc public enum MailQuotingColor : AEKeyword {
    case Blue = 0x6363626c /* 'ccbl' */
    case Green = 0x63636772 /* 'ccgr' */
    case Orange = 0x63636f72 /* 'ccor' */
    case Other = 0x63636f74 /* 'ccot' */
    case Purple = 0x63637075 /* 'ccpu' */
    case Red = 0x63637265 /* 'ccre' */
    case Yellow = 0x63637965 /* 'ccye' */
}

// MARK: MailViewerColumns
@objc public enum MailViewerColumns : AEKeyword {
    case AttachmentsColumn = 0x65636174 /* 'ecat' */
    case MessageColor = 0x6563636c /* 'eccl' */
    case DateReceivedColumn = 0x65636472 /* 'ecdr' */
    case DateSentColumn = 0x65636473 /* 'ecds' */
    case FlagsColumn = 0x6563666c /* 'ecfl' */
    case FromColumn = 0x65636672 /* 'ecfr' */
    case MailboxColumn = 0x65636d62 /* 'ecmb' */
    case MessageStatusColumn = 0x65636d73 /* 'ecms' */
    case NumberColumn = 0x65636e6d /* 'ecnm' */
    case SizeColumn = 0x6563737a /* 'ecsz' */
    case SubjectColumn = 0x65637375 /* 'ecsu' */
    case ToColumn = 0x6563746f /* 'ecto' */
    case DateLastSavedColumn = 0x65636c73 /* 'ecls' */
}

// MARK: MailAuthentication
@objc public enum MailAuthentication : AEKeyword {
    case Password = 0x61786374 /* 'axct' */
    case Apop = 0x6161706f /* 'aapo' */
    case Kerberos5 = 0x61786b35 /* 'axk5' */
    case Ntlm = 0x61786e74 /* 'axnt' */
    case Md5 = 0x61786d64 /* 'axmd' */
    case External = 0x61657874 /* 'aext' */
    case AppleToken = 0x61746f6b /* 'atok' */
    case None = 0x63636e6f /* 'ccno' */
}

// MARK: MailHighlightColors
@objc public enum MailHighlightColors : AEKeyword {
    case Blue = 0x6363626c /* 'ccbl' */
    case Gray = 0x63636779 /* 'ccgy' */
    case Green = 0x63636772 /* 'ccgr' */
    case None = 0x63636e6f /* 'ccno' */
    case Orange = 0x63636f72 /* 'ccor' */
    case Other = 0x63636f74 /* 'ccot' */
    case Purple = 0x63637075 /* 'ccpu' */
    case Red = 0x63637265 /* 'ccre' */
    case Yellow = 0x63637965 /* 'ccye' */
}

// MARK: MailMessageCachingPolicy
@objc public enum MailMessageCachingPolicy : AEKeyword {
    case DoNotKeepCopiesOfAnyMessages = 0x78396e6f /* 'x9no' */
    case OnlyMessagesIHaveRead = 0x78397772 /* 'x9wr' */
    case AllMessagesButOmitAttachments = 0x7839626f /* 'x9bo' */
    case AllMessagesAndTheirAttachments = 0x7839616c /* 'x9al' */
}

// MARK: MailRuleQualifier
@objc public enum MailRuleQualifier : AEKeyword {
    case BeginsWithValue = 0x72716277 /* 'rqbw' */
    case DoesContainValue = 0x7271636f /* 'rqco' */
    case DoesNotContainValue = 0x7271646e /* 'rqdn' */
    case EndsWithValue = 0x72716577 /* 'rqew' */
    case EqualToValue = 0x72716965 /* 'rqie' */
    case LessThanValue = 0x72716c74 /* 'rqlt' */
    case GreaterThanValue = 0x72716774 /* 'rqgt' */
    case None = 0x72716e6f /* 'rqno' */
}

// MARK: MailRuleType
@objc public enum MailRuleType : AEKeyword {
    case Account = 0x74616363 /* 'tacc' */
    case AnyRecipient = 0x74616e72 /* 'tanr' */
    case CcHeader = 0x74636363 /* 'tccc' */
    case MatchesEveryMessage = 0x7465766d /* 'tevm' */
    case FromHeader = 0x7466726f /* 'tfro' */
    case HeaderKey = 0x7468646b /* 'thdk' */
    case MessageContent = 0x746d6563 /* 'tmec' */
    case MessageIsJunkMail = 0x746d696a /* 'tmij' */
    case SenderIsInMyContacts = 0x74736969 /* 'tsii' */
    case SenderIsInMyPreviousRecipients = 0x74736168 /* 'tsah' */
    case SenderIsMemberOfGroup = 0x7473696d /* 'tsim' */
    case SenderIsNotInMyContacts = 0x7473696e /* 'tsin' */
    case SenderIsNotInMyPreviousRecipients = 0x746e6168 /* 'tnah' */
    case SenderIsNotMemberOfGroup = 0x74736967 /* 'tsig' */
    case SubjectHeader = 0x74737562 /* 'tsub' */
    case ToHeader = 0x74746f6f /* 'ttoo' */
    case ToOrCcHeader = 0x74746f63 /* 'ttoc' */
    case AttachmentType = 0x74617474 /* 'tatt' */
}

// MARK: MailTypeOfAccount
@objc public enum MailTypeOfAccount : AEKeyword {
    case Pop = 0x6574706f /* 'etpo' */
    case Smtp = 0x6574736d /* 'etsm' */
    case Imap = 0x6574696d /* 'etim' */
    case ICloud = 0x65746974 /* 'etit' */
    case Unknown = 0x6574756e /* 'etun' */
}

// MARK: MailGenericMethods
@objc public protocol MailGenericMethods {
    optional func closeSaving(saving: MailSaveOptions, savingIn: NSURL!) // Close a document.
    optional func saveIn(in_: NSURL!, `as`: MailSaveableFileFormat) // Save a document.
    optional func printWithProperties(withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func delete() // Delete an object.
    optional func duplicateTo(to: SBObject!, withProperties: [NSObject : AnyObject]!) // Copy an object.
    optional func moveTo(to: SBObject!) // Move an object to a new location.
}

// MARK: MailApplication
@objc public protocol MailApplication: SBApplicationProtocol {
    optional func documents() -> SBElementArray
    optional func windows() -> SBElementArray
    optional var name: String { get } // The name of the application.
    optional var frontmost: Bool { get } // Is this the active application?
    optional var version: String { get } // The version number of the application.
    optional func open(x: AnyObject!) -> AnyObject // Open a document.
    optional func print(x: AnyObject!, withProperties: [NSObject : AnyObject]!, printDialog: Bool) // Print a document.
    optional func quitSaving(saving: MailSaveOptions) // Quit the application.
    optional func exists(x: AnyObject!) -> Bool // Verify that an object exists.
    optional func checkForNewMailFor(for_: MailAccount!) // Triggers a check for email.
    optional func extractNameFrom(x: String!) -> String // Command to get the full name out of a fully specified email address. E.g. Calling this with "John Doe <jdoe@example.com>" as the direct object would return "John Doe"
    optional func extractAddressFrom(x: String!) -> String // Command to get just the email address of a fully specified email address. E.g. Calling this with "John Doe <jdoe@example.com>" as the direct object would return "jdoe@example.com"
    optional func GetURL(x: String!) // Opens a mailto URL.
    optional func importMailMailboxAt(at: NSURL!) // Imports a mailbox created by Mail.
    optional func mailto(x: String!) // Opens a mailto URL.
    optional func performMailActionWithMessages(x: [AnyObject]!, inMailboxes: MailMailbox!, forRule: MailRule!) // Script handler invoked by rules and menus that execute AppleScripts. The direct parameter of this handler is a list of messages being acted upon.
    optional func synchronizeWith(with: MailAccount!) // Command to trigger synchronizing of an IMAP account with the server.
    optional func accounts() -> SBElementArray
    optional func popAccounts() -> SBElementArray
    optional func imapAccounts() -> SBElementArray
    optional func iCloudAccounts() -> SBElementArray
    optional func smtpServers() -> SBElementArray
    optional func outgoingMessages() -> SBElementArray
    optional func mailboxes() -> SBElementArray
    optional func messageViewers() -> SBElementArray
    optional func rules() -> SBElementArray
    optional func signatures() -> SBElementArray
    optional var alwaysBccMyself: Bool { get set } // Indicates whether you will be included in the Bcc: field of messages which you are composing
    optional var alwaysCcMyself: Bool { get set } // Indicates whether you will be included in the Cc: field of messages which you are composing
    optional var selection: [AnyObject] { get } // List of messages that the user has selected
    optional var applicationVersion: String { get } // The build number for the Mail application bundle
    optional var fetchInterval: Int { get set } // The interval (in minutes) between automatic fetches of new mail, -1 means to use an automatically determined interval
    optional var backgroundActivityCount: Int { get } // Number of background activities currently running in Mail, according to the Activity window
    optional var chooseSignatureWhenComposing: Bool { get set } // Indicates whether user can choose a signature directly in a new compose window
    optional var colorQuotedText: Bool { get set } // Indicates whether quoted text should be colored
    optional var defaultMessageFormat: MailDefaultMessageFormat { get set } // Default format for messages being composed or message replies
    optional var downloadHtmlAttachments: Bool { get set } // Indicates whether images and attachments in HTML messages should be downloaded and displayed
    optional var draftsMailbox: MailMailbox { get } // The top level Drafts mailbox
    optional var expandGroupAddresses: Bool { get set } // Indicates whether group addresses will be expanded when entered into the address fields of a new compose message
    optional var fixedWidthFont: String { get set } // Font for plain text messages, only used if 'use fixed width font' is set to true
    optional var fixedWidthFontSize: Double { get set } // Font size for plain text messages, only used if 'use fixed width font' is set to true
    optional var frameworkVersion: String { get } // The build number for the Mail framework
    optional var inbox: MailMailbox { get } // The top level In mailbox
    optional var includeAllOriginalMessageText: Bool { get set } // Indicates whether all of the original message will be quoted or only the text you have selected (if any)
    optional var quoteOriginalMessage: Bool { get set } // Indicates whether the text of the original message will be included in replies
    optional var checkSpellingWhileTyping: Bool { get set } // Indicates whether spelling will be checked automatically in messages being composed
    optional var junkMailbox: MailMailbox { get } // The top level Junk mailbox
    optional var levelOneQuotingColor: MailQuotingColor { get set } // Color for quoted text with one level of indentation
    optional var levelTwoQuotingColor: MailQuotingColor { get set } // Color for quoted text with two levels of indentation
    optional var levelThreeQuotingColor: MailQuotingColor { get set } // Color for quoted text with three levels of indentation
    optional var messageFont: String { get set } // Font for messages (proportional font)
    optional var messageFontSize: Double { get set } // Font size for messages (proportional font)
    optional var messageListFont: String { get set } // Font for message list
    optional var messageListFontSize: Double { get set } // Font size for message list
    optional var newMailSound: String { get set } // Name of new mail sound or 'None' if no sound is selected
    optional var outbox: MailMailbox { get } // The top level Out mailbox
    optional var shouldPlayOtherMailSounds: Bool { get set } // Indicates whether sounds will be played for various things such as when a messages is sent or if no mail is found when manually checking for new mail or if there is a fetch error
    optional var sameReplyFormat: Bool { get set } // Indicates whether replies will be in the same text format as the message to which you are replying
    optional var selectedSignature: String { get set } // Name of current selected signature (or 'randomly', 'sequentially', or 'none')
    optional var sentMailbox: MailMailbox { get } // The top level Sent mailbox
    optional var fetchesAutomatically: Bool { get set } // Indicates whether mail will automatically be fetched at a specific interval
    optional var highlightSelectedConversation: Bool { get set } // Indicates whether messages in conversations should be highlighted in the Mail viewer window when not grouped
    optional var trashMailbox: MailMailbox { get } // The top level Trash mailbox
    optional var useAddressCompletion: Bool { get set } // This always returns true, and setting it doesn't do anything (deprecated)
    optional var useFixedWidthFont: Bool { get set } // Should fixed-width font be used for plain text messages?
    optional var primaryEmail: String { get } // The user's primary email address
}
extension SBApplication: MailApplication {}

// MARK: MailDocument
@objc public protocol MailDocument: SBObjectProtocol, MailGenericMethods {
    optional var name: String { get } // Its name.
    optional var modified: Bool { get } // Has it been modified since the last save?
    optional var file: NSURL { get } // Its location on disk, if it has one.
}
extension SBObject: MailDocument {}

// MARK: MailWindow
@objc public protocol MailWindow: SBObjectProtocol, MailGenericMethods {
    optional var name: String { get } // The title of the window.
    optional func id() -> Int // The unique identifier of the window.
    optional var index: Int { get set } // The index of the window, ordered front to back.
    optional var bounds: NSRect { get set } // The bounding rectangle of the window.
    optional var closeable: Bool { get } // Does the window have a close button?
    optional var miniaturizable: Bool { get } // Does the window have a minimize button?
    optional var miniaturized: Bool { get set } // Is the window minimized right now?
    optional var resizable: Bool { get } // Can the window be resized?
    optional var visible: Bool { get set } // Is the window visible right now?
    optional var zoomable: Bool { get } // Does the window have a zoom button?
    optional var zoomed: Bool { get set } // Is the window zoomed right now?
    optional var document: MailDocument { get } // The document whose contents are displayed in the window.
}
extension SBObject: MailWindow {}

// MARK: MailRichText
@objc public protocol MailRichText: SBObjectProtocol, MailGenericMethods {
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func characters() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the first character.
    optional var font: String { get set } // The name of the font of the first character.
    optional var size: NSNumber { get set } // The size in points of the first character.
}
extension SBObject: MailRichText {}

// MARK: MailAttachment
@objc public protocol MailAttachment: MailRichText {
    optional var fileName: NSURL { get set } // The file for the attachment
}
extension SBObject: MailAttachment {}

// MARK: MailParagraph
@objc public protocol MailParagraph: SBObjectProtocol, MailGenericMethods {
    optional func words() -> SBElementArray
    optional func characters() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the first character.
    optional var font: String { get set } // The name of the font of the first character.
    optional var size: NSNumber { get set } // The size in points of the first character.
}
extension SBObject: MailParagraph {}

// MARK: MailWord
@objc public protocol MailWord: SBObjectProtocol, MailGenericMethods {
    optional func characters() -> SBElementArray
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the first character.
    optional var font: String { get set } // The name of the font of the first character.
    optional var size: NSNumber { get set } // The size in points of the first character.
}
extension SBObject: MailWord {}

// MARK: MailCharacter
@objc public protocol MailCharacter: SBObjectProtocol, MailGenericMethods {
    optional func attributeRuns() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the character.
    optional var font: String { get set } // The name of the font of the character.
    optional var size: NSNumber { get set } // The size in points of the character.
}
extension SBObject: MailCharacter {}

// MARK: MailAttributeRun
@objc public protocol MailAttributeRun: SBObjectProtocol, MailGenericMethods {
    optional func paragraphs() -> SBElementArray
    optional func words() -> SBElementArray
    optional func characters() -> SBElementArray
    optional func attachments() -> SBElementArray
    optional var color: NSColor { get set } // The color of the first character.
    optional var font: String { get set } // The name of the font of the first character.
    optional var size: NSNumber { get set } // The size in points of the first character.
}
extension SBObject: MailAttributeRun {}

// MARK: MailOutgoingMessage
@objc public protocol MailOutgoingMessage: SBObjectProtocol, MailGenericMethods {
    optional func bccRecipients() -> SBElementArray
    optional func ccRecipients() -> SBElementArray
    optional func recipients() -> SBElementArray
    optional func toRecipients() -> SBElementArray
    optional var sender: String { get set } // The sender of the message
    optional var subject: String { get set } // The subject of the message
    optional var content: MailRichText { get set } // The contents of the message
    optional var visible: Bool { get set } // Controls whether the message window is shown on the screen. The default is false
    optional var messageSignature: AnyObject { get set } // The signature of the message
    optional func id() -> Int // The unique identifier of the message
    optional func send() -> Bool // Sends a message.
}
extension SBObject: MailOutgoingMessage {}

// MARK: MailMessageViewer
@objc public protocol MailMessageViewer: SBObjectProtocol, MailGenericMethods {
    optional func messages() -> SBElementArray
    optional var draftsMailbox: MailMailbox { get } // The top level Drafts mailbox
    optional var inbox: MailMailbox { get } // The top level In mailbox
    optional var junkMailbox: MailMailbox { get } // The top level Junk mailbox
    optional var outbox: MailMailbox { get } // The top level Out mailbox
    optional var sentMailbox: MailMailbox { get } // The top level Sent mailbox
    optional var trashMailbox: MailMailbox { get } // The top level Trash mailbox
    optional var sortColumn: MailViewerColumns { get set } // The column that is currently sorted in the viewer
    optional var sortedAscending: Bool { get set } // Whether the viewer is sorted ascending or not
    optional var mailboxListVisible: Bool { get set } // Controls whether the list of mailboxes is visible or not
    optional var previewPaneIsVisible: Bool { get set } // Controls whether the preview pane of the message viewer window is visible or not
    optional var visibleColumns: [AnyObject] { get set } // List of columns that are visible. The subject column and the message status column will always be visible
    optional func id() -> Int // The unique identifier of the message viewer
    optional var visibleMessages: [AnyObject] { get set } // List of messages currently being displayed in the viewer
    optional var selectedMessages: [AnyObject] { get set } // List of messages currently selected
    optional var selectedMailboxes: [AnyObject] { get set } // List of mailboxes currently selected in the list of mailboxes
    optional var window: MailWindow { get set } // The window for the message viewer
}
extension SBObject: MailMessageViewer {}

// MARK: MailSignature
@objc public protocol MailSignature: SBObjectProtocol, MailGenericMethods {
    optional var content: String { get set } // Contents of email signature. If there is a version with fonts and/or styles, that will be returned over the plain text version
    optional var name: String { get set } // Name of the signature
}
extension SBObject: MailSignature {}

// MARK: MailMessage
@objc public protocol MailMessage: SBObjectProtocol, MailGenericMethods {
    optional func bccRecipients() -> SBElementArray
    optional func ccRecipients() -> SBElementArray
    optional func recipients() -> SBElementArray
    optional func toRecipients() -> SBElementArray
    optional func headers() -> SBElementArray
    optional func mailAttachments() -> SBElementArray
    optional func id() -> Int // The unique identifier of the message.
    optional var allHeaders: String { get } // All the headers of the message
    optional var backgroundColor: MailHighlightColors { get set } // The background color of the message
    optional var mailbox: MailMailbox { get set } // The mailbox in which this message is filed
    optional var content: MailRichText { get } // Contents of an email message
    optional var dateReceived: NSDate { get } // The date a message was received
    optional var dateSent: NSDate { get } // The date a message was sent
    optional var deletedStatus: Bool { get set } // Indicates whether the message is deleted or not
    optional var flaggedStatus: Bool { get set } // Indicates whether the message is flagged or not
    optional var flagIndex: Int { get set } // The flag on the message, or -1 if the message is not flagged
    optional var junkMailStatus: Bool { get set } // Indicates whether the message has been marked junk or evaluated to be junk by the junk mail filter.
    optional var readStatus: Bool { get set } // Indicates whether the message is read or not
    optional var messageId: String { get } // The unique message ID string
    optional var source: String { get } // Raw source of the message
    optional var replyTo: String { get } // The address that replies should be sent to
    optional var messageSize: Int { get } // The size (in bytes) of a message
    optional var sender: String { get } // The sender of the message
    optional var subject: String { get } // The subject of the message
    optional var wasForwarded: Bool { get } // Indicates whether the message was forwarded or not
    optional var wasRedirected: Bool { get } // Indicates whether the message was redirected or not
    optional var wasRepliedTo: Bool { get } // Indicates whether the message was replied to or not
    optional func forwardOpeningWindow(openingWindow: Bool) -> MailOutgoingMessage // Creates a forwarded message.
    optional func redirectOpeningWindow(openingWindow: Bool) -> MailOutgoingMessage // Creates a redirected message.
    optional func replyOpeningWindow(openingWindow: Bool, replyToAll: Bool) -> MailOutgoingMessage // Creates a reply message.
}
extension SBObject: MailMessage {}

// MARK: MailAccount
@objc public protocol MailAccount: SBObjectProtocol, MailGenericMethods {
    optional func mailboxes() -> SBElementArray
    optional var deliveryAccount: AnyObject { get set } // The delivery account used when sending mail from this account
    optional var name: String { get set } // The name of an account
    optional var password: String { get set } // Password for this account. Can be set, but not read via scripting
    optional var authentication: MailAuthentication { get set } // Preferred authentication scheme for account
    optional var accountType: MailTypeOfAccount { get } // The type of an account
    optional var emailAddresses: [AnyObject] { get set } // The list of email addresses configured for an account
    optional var fullName: String { get set } // The users full name configured for an account
    optional var emptyJunkMessagesFrequency: Int { get set } // Number of days before junk messages are deleted (0 = delete on quit, -1 = never delete)
    optional var emptySentMessagesFrequency: Int { get set } // Number of days before archived sent messages are deleted (0 = delete on quit, -1 = never delete)
    optional var emptyTrashFrequency: Int { get set } // Number of days before messages in the trash are permanently deleted (0 = delete on quit, -1 = never delete)
    optional var emptyJunkMessagesOnQuit: Bool { get set } // Indicates whether the messages in the junk messages mailboxes will be deleted on quit
    optional var emptySentMessagesOnQuit: Bool { get set } // Indicates whether the messages in the sent messages mailboxes will be deleted on quit
    optional var emptyTrashOnQuit: Bool { get set } // Indicates whether the messages in deleted messages mailboxes will be permanently deleted on quit
    optional var enabled: Bool { get set } // Indicates whether the account is enabled or not
    optional var userName: String { get set } // The user name used to connect to an account
    optional var accountDirectory: NSURL { get } // The directory where the account stores things on disk
    optional var port: Int { get set } // The port used to connect to an account
    optional var serverName: String { get set } // The host name used to connect to an account
    optional var includeWhenGettingNewMail: Bool { get set } // Indicates whether the account will be included when getting new mail
    optional var moveDeletedMessagesToTrash: Bool { get set } // Indicates whether messages that are deleted will be moved to the trash mailbox
    optional var usesSsl: Bool { get set } // Indicates whether SSL is enabled for this receiving account
}
extension SBObject: MailAccount {}

// MARK: MailImapAccount
@objc public protocol MailImapAccount: MailAccount {
    optional var compactMailboxesWhenClosing: Bool { get set } // Indicates whether an IMAP mailbox is automatically compacted when you quit Mail or switch to another mailbox
    optional var messageCaching: MailMessageCachingPolicy { get set } // Message caching setting for this account
    optional var storeDraftsOnServer: Bool { get set } // Indicates whether drafts will be stored on the IMAP server
    optional var storeJunkMailOnServer: Bool { get set } // Indicates whether junk mail will be stored on the IMAP server
    optional var storeSentMessagesOnServer: Bool { get set } // Indicates whether sent messages will be stored on the IMAP server
    optional var storeDeletedMessagesOnServer: Bool { get set } // Indicates whether deleted messages will be stored on the IMAP server
}
extension SBObject: MailImapAccount {}

// MARK: MailICloudAccount
@objc public protocol MailICloudAccount: MailImapAccount {
}
extension SBObject: MailICloudAccount {}

// MARK: MailPopAccount
@objc public protocol MailPopAccount: MailAccount {
    optional var bigMessageWarningSize: Int { get set } // If message size (in bytes) is over this amount, Mail will prompt you asking whether you want to download the message (-1 = do not prompt)
    optional var delayedMessageDeletionInterval: Int { get set } // Number of days before messages that have been downloaded will be deleted from the server (0 = delete immediately after downloading)
    optional var deleteMailOnServer: Bool { get set } // Indicates whether POP account deletes messages on the server after downloading
    optional var deleteMessagesWhenMovedFromInbox: Bool { get set } // Indicates whether messages will be deleted from the server when moved from your POP inbox
}
extension SBObject: MailPopAccount {}

// MARK: MailSmtpServer
@objc public protocol MailSmtpServer: SBObjectProtocol, MailGenericMethods {
    optional var name: String { get } // The name of an account
    optional var password: String { get set } // Password for this account. Can be set, but not read via scripting
    optional var accountType: MailTypeOfAccount { get } // The type of an account
    optional var authentication: MailAuthentication { get set } // Preferred authentication scheme for account
    optional var enabled: Bool { get set } // Indicates whether the account is enabled or not
    optional var userName: String { get set } // The user name used to connect to an account
    optional var port: Int { get set } // The port used to connect to an account
    optional var serverName: String { get set } // The host name used to connect to an account
    optional var usesSsl: Bool { get set } // Indicates whether SSL is enabled for this receiving account
}
extension SBObject: MailSmtpServer {}

// MARK: MailMailbox
@objc public protocol MailMailbox: SBObjectProtocol, MailGenericMethods {
    optional func mailboxes() -> SBElementArray
    optional func messages() -> SBElementArray
    optional var name: String { get set } // The name of a mailbox
    optional var unreadCount: Int { get } // The number of unread messages in the mailbox
    optional var account: MailAccount { get }
    optional var container: MailMailbox { get }
}
extension SBObject: MailMailbox {}

// MARK: MailRule
@objc public protocol MailRule: SBObjectProtocol, MailGenericMethods {
    optional func ruleConditions() -> SBElementArray
    optional var colorMessage: MailHighlightColors { get set } // If rule matches, apply this color
    optional var deleteMessage: Bool { get set } // If rule matches, delete message
    optional var forwardText: String { get set } // If rule matches, prepend this text to the forwarded message. Set to empty string to include no prepended text
    optional var forwardMessage: String { get set } // If rule matches, forward message to this address, or multiple addresses, separated by commas. Set to empty string to disable this action
    optional var markFlagged: Bool { get set } // If rule matches, mark message as flagged
    optional var markFlagIndex: Int { get set } // If rule matches, mark message with the specified flag. Set to -1 to disable this action
    optional var markRead: Bool { get set } // If rule matches, mark message as read
    optional var playSound: String { get set } // If rule matches, play this sound (specify name of sound or path to sound)
    optional var redirectMessage: String { get set } // If rule matches, redirect message to this address or multiple addresses, separate by commas. Set to empty string to disable this action
    optional var replyText: String { get set } // If rule matches, reply to message and prepend with this text. Set to empty string to disable this action
    optional var runScript: AnyObject { get set } // If rule matches, run this compiled AppleScript file. Set to empty string to disable this action
    optional var allConditionsMustBeMet: Bool { get set } // Indicates whether all conditions must be met for rule to execute
    optional var copyMessage: MailMailbox { get set } // If rule matches, copy to this mailbox
    optional var moveMessage: MailMailbox { get set } // If rule matches, move to this mailbox
    optional var highlightTextUsingColor: Bool { get set } // Indicates whether the color will be used to highlight the text or background of a message in the message list
    optional var enabled: Bool { get set } // Indicates whether the rule is enabled
    optional var name: String { get set } // Name of rule
    optional var shouldCopyMessage: Bool { get set } // Indicates whether the rule has a copy action
    optional var shouldMoveMessage: Bool { get set } // Indicates whether the rule has a move action
    optional var stopEvaluatingRules: Bool { get set } // If rule matches, stop rule evaluation for this message
}
extension SBObject: MailRule {}

// MARK: MailRuleCondition
@objc public protocol MailRuleCondition: SBObjectProtocol, MailGenericMethods {
    optional var expression: String { get set } // Rule expression field
    optional var header: String { get set } // Rule header key
    optional var qualifier: MailRuleQualifier { get set } // Rule qualifier
    optional var ruleType: MailRuleType { get set } // Rule type
}
extension SBObject: MailRuleCondition {}

// MARK: MailRecipient
@objc public protocol MailRecipient: SBObjectProtocol, MailGenericMethods {
    optional var address: String { get set } // The recipients email address
    optional var name: String { get set } // The name used for display
}
extension SBObject: MailRecipient {}

// MARK: MailBccRecipient
@objc public protocol MailBccRecipient: MailRecipient {
}
extension SBObject: MailBccRecipient {}

// MARK: MailCcRecipient
@objc public protocol MailCcRecipient: MailRecipient {
}
extension SBObject: MailCcRecipient {}

// MARK: MailToRecipient
@objc public protocol MailToRecipient: MailRecipient {
}
extension SBObject: MailToRecipient {}

// MARK: MailContainer
@objc public protocol MailContainer: MailMailbox {
}
extension SBObject: MailContainer {}

// MARK: MailHeader
@objc public protocol MailHeader: SBObjectProtocol, MailGenericMethods {
    optional var content: String { get set } // Contents of the header
    optional var name: String { get set } // Name of the header value
}
extension SBObject: MailHeader {}

// MARK: MailMailAttachment
@objc public protocol MailMailAttachment: SBObjectProtocol, MailGenericMethods {
    optional var name: String { get } // Name of the attachment
    optional var MIMEType: String { get } // MIME type of the attachment E.g. text/plain.
    optional var fileSize: Int { get } // Approximate size in bytes.
    optional var downloaded: Bool { get } // Indicates whether the attachment has been downloaded.
    optional func id() -> String // The unique identifier of the attachment.
}
extension SBObject: MailMailAttachment {}

