libsl "1.0.0";
library `java-standard-library`
    version "17"
    language "Java";

type sun.net.www.protocol.http.logging.HttpLogFormatter {
}

type sun.util.logging.resources.logging_zh_HK {
}

type sun.util.logging.resources.logging_zh_TW {
}

type sun.util.logging.resources.logging {
}

type sun.util.logging.resources.logging_fr {
}

type sun.util.logging.resources.logging_zh_CN {
}

type sun.util.logging.resources.logging_pt_BR {
}

type sun.util.logging.resources.logging_es {
}

type sun.util.logging.resources.logging_ja {
}

type sun.util.logging.resources.logging_de {
}

type sun.util.logging.resources.logging_sv {
}

type sun.util.logging.resources.logging_ko {
}

type sun.util.logging.resources.logging_it {
}

type sun.util.logging.internal.LoggingProviderImpl {
}

type java.util.logging.XMLFormatter {
}

type java.util.logging.Logging {
}

type java.util.logging.LoggingPermission {
}

type java.util.logging.SimpleFormatter {
}

type java.util.logging.Logger {
    var GLOBAL_LOGGER_NAME: java.lang.String;
    var global: java.util.logging.Logger;
}

type java.util.logging.SocketHandler {
}

type java.util.logging.LoggingMXBean {
}

type java.util.logging.ConsoleHandler {
}

type java.util.logging.Handler {
}

type java.util.logging.Filter {
}

type java.util.logging.LogRecord {
}

type java.util.logging.Formatter {
}

type java.util.logging.MemoryHandler {
}

type java.util.logging.LogManager {
    var LOGGING_MXBEAN_NAME: java.lang.String;
}

type java.util.logging.StreamHandler {
}

type java.util.logging.FileHandler {
}

type java.util.logging.ErrorManager {
    var GENERIC_FAILURE: int;
    var WRITE_FAILURE: int;
    var FLUSH_FAILURE: int;
    var CLOSE_FAILURE: int;
    var OPEN_FAILURE: int;
    var FORMAT_FAILURE: int;
}

type java.util.logging.Level {
    var OFF: java.util.logging.Level;
    var SEVERE: java.util.logging.Level;
    var WARNING: java.util.logging.Level;
    var INFO: java.util.logging.Level;
    var CONFIG: java.util.logging.Level;
    var FINE: java.util.logging.Level;
    var FINER: java.util.logging.Level;
    var FINEST: java.util.logging.Level;
    var ALL: java.util.logging.Level;
}

type apple.security.AppleProvider {
}

type apple.security.KeychainStore {
}

type sun.launcher.resources.launcher_ja {
}

type sun.launcher.resources.launcher_de {
}

type sun.launcher.resources.launcher_es {
}

type sun.launcher.resources.launcher_zh_HK {
}

type sun.launcher.resources.launcher_zh_TW {
}

type sun.launcher.resources.launcher_it {
}

type sun.launcher.resources.launcher_ko {
}

type sun.launcher.resources.launcher_sv {
}

type sun.launcher.resources.launcher_zh_CN {
}

type sun.launcher.resources.launcher_pt_BR {
}

type sun.launcher.resources.launcher {
}

type sun.launcher.resources.launcher_fr {
}

type sun.launcher.LauncherHelper {
}

type sun.net.ftp.impl.DefaultFtpClientProvider {
}

type sun.net.ftp.impl.FtpClient {
}

type sun.net.ftp.FtpDirEntry {
}

type sun.net.ftp.FtpProtocolException {
}

type sun.net.ftp.FtpLoginException {
}

enum sun.net.ftp.FtpReplyCode {
    RESTART_MARKER = 0;
    SERVICE_READY_IN = 1;
    DATA_CONNECTION_ALREADY_OPEN = 2;
    FILE_STATUS_OK = 3;
    COMMAND_OK = 4;
    NOT_IMPLEMENTED = 5;
    SYSTEM_STATUS = 6;
    DIRECTORY_STATUS = 7;
    FILE_STATUS = 8;
    HELP_MESSAGE = 9;
    NAME_SYSTEM_TYPE = 10;
    SERVICE_READY = 11;
    SERVICE_CLOSING = 12;
    DATA_CONNECTION_OPEN = 13;
    CLOSING_DATA_CONNECTION = 14;
    ENTERING_PASSIVE_MODE = 15;
    ENTERING_EXT_PASSIVE_MODE = 16;
    LOGGED_IN = 17;
    SECURELY_LOGGED_IN = 18;
    SECURITY_EXCHANGE_OK = 19;
    SECURITY_EXCHANGE_COMPLETE = 20;
    FILE_ACTION_OK = 21;
    PATHNAME_CREATED = 22;
    NEED_PASSWORD = 23;
    NEED_ACCOUNT = 24;
    NEED_ADAT = 25;
    NEED_MORE_ADAT = 26;
    FILE_ACTION_PENDING = 27;
    SERVICE_NOT_AVAILABLE = 28;
    CANT_OPEN_DATA_CONNECTION = 29;
    CONNECTION_CLOSED = 30;
    NEED_SECURITY_RESOURCE = 31;
    FILE_ACTION_NOT_TAKEN = 32;
    ACTION_ABORTED = 33;
    INSUFFICIENT_STORAGE = 34;
    COMMAND_UNRECOGNIZED = 35;
    INVALID_PARAMETER = 36;
    BAD_SEQUENCE = 37;
    NOT_IMPLEMENTED_FOR_PARAMETER = 38;
    NOT_LOGGED_IN = 39;
    NEED_ACCOUNT_FOR_STORING = 40;
    PROT_LEVEL_DENIED = 41;
    REQUEST_DENIED = 42;
    FAILED_SECURITY_CHECK = 43;
    UNSUPPORTED_PROT_LEVEL = 44;
    PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY = 45;
    FILE_UNAVAILABLE = 46;
    PAGE_TYPE_UNKNOWN = 47;
    EXCEEDED_STORAGE = 48;
    FILE_NAME_NOT_ALLOWED = 49;
    PROTECTED_REPLY = 50;
    UNKNOWN_ERROR = 51;
}

type sun.net.ftp.FtpClientProvider {
}

type sun.net.ftp.FtpDirParser {
}

type sun.net.ftp.FtpClient {
}

type sun.net.PortConfig {
}

type sun.net.ProgressSource {
}

type sun.net.NetworkClient {
    var DEFAULT_READ_TIMEOUT: int;
    var DEFAULT_CONNECT_TIMEOUT: int;
    var serverOutput: java.io.PrintStream;
    var serverInput: java.io.InputStream;
}

type sun.net.TransferProtocolClient {
    var DEFAULT_READ_TIMEOUT: int;
    var DEFAULT_CONNECT_TIMEOUT: int;
    var serverOutput: java.io.PrintStream;
    var serverInput: java.io.InputStream;
}

type sun.net.DefaultProgressMeteringPolicy {
}

type sun.net.ConnectionResetException {
}

type sun.net.util.URLUtil {
}

type sun.net.util.SocketExceptions {
}

type sun.net.util.IPAddressUtil {
}

type sun.net.PlatformSocketImpl {
}

type sun.net.ext.ExtendedSocketOptions {
    var SOCK_STREAM: short;
    var SOCK_DGRAM: short;
}

type sun.net.ProgressMonitor {
}

type sun.net.TelnetProtocolException {
}

type sun.net.SocksProxy {
    var NO_PROXY: java.net.Proxy;
}

type sun.net.TelnetInputStream {
    var binaryMode: boolean;
}

type sun.net.www.MimeEntry {
    var UNKNOWN: int;
    var LOAD_INTO_BROWSER: int;
    var SAVE_TO_FILE: int;
    var LAUNCH_APPLICATION: int;
}

type sun.net.www.MimeTable {
}

type sun.net.www.content.text.plain {
}

type sun.net.www.content.text.PlainTextInputStream {
}

type sun.net.www.content.text.Generic {
}

type sun.net.www.MeteredStream {
}

type sun.net.www.protocol.https.HttpsURLConnectionImpl {
    var HTTP_OK: int;
    var HTTP_CREATED: int;
    var HTTP_ACCEPTED: int;
    var HTTP_NOT_AUTHORITATIVE: int;
    var HTTP_NO_CONTENT: int;
    var HTTP_RESET: int;
    var HTTP_PARTIAL: int;
    var HTTP_MULT_CHOICE: int;
    var HTTP_MOVED_PERM: int;
    var HTTP_MOVED_TEMP: int;
    var HTTP_SEE_OTHER: int;
    var HTTP_NOT_MODIFIED: int;
    var HTTP_USE_PROXY: int;
    var HTTP_BAD_REQUEST: int;
    var HTTP_UNAUTHORIZED: int;
    var HTTP_PAYMENT_REQUIRED: int;
    var HTTP_FORBIDDEN: int;
    var HTTP_NOT_FOUND: int;
    var HTTP_BAD_METHOD: int;
    var HTTP_NOT_ACCEPTABLE: int;
    var HTTP_PROXY_AUTH: int;
    var HTTP_CLIENT_TIMEOUT: int;
    var HTTP_CONFLICT: int;
    var HTTP_GONE: int;
    var HTTP_LENGTH_REQUIRED: int;
    var HTTP_PRECON_FAILED: int;
    var HTTP_ENTITY_TOO_LARGE: int;
    var HTTP_REQ_TOO_LONG: int;
    var HTTP_UNSUPPORTED_TYPE: int;
    var HTTP_SERVER_ERROR: int;
    var HTTP_INTERNAL_ERROR: int;
    var HTTP_NOT_IMPLEMENTED: int;
    var HTTP_BAD_GATEWAY: int;
    var HTTP_UNAVAILABLE: int;
    var HTTP_GATEWAY_TIMEOUT: int;
    var HTTP_VERSION: int;
}

type sun.net.www.protocol.https.HttpsClient {
    var usingProxy: boolean;
    var reuse: boolean;
    var DEFAULT_READ_TIMEOUT: int;
    var DEFAULT_CONNECT_TIMEOUT: int;
    var serverOutput: java.io.PrintStream;
    var serverInput: java.io.InputStream;
}

type sun.net.www.protocol.https.Handler {
}

type sun.net.www.protocol.https.AbstractDelegateHttpsURLConnection {
    var userAgent: java.lang.String;
    var HTTP_OK: int;
    var HTTP_CREATED: int;
    var HTTP_ACCEPTED: int;
    var HTTP_NOT_AUTHORITATIVE: int;
    var HTTP_NO_CONTENT: int;
    var HTTP_RESET: int;
    var HTTP_PARTIAL: int;
    var HTTP_MULT_CHOICE: int;
    var HTTP_MOVED_PERM: int;
    var HTTP_MOVED_TEMP: int;
    var HTTP_SEE_OTHER: int;
    var HTTP_NOT_MODIFIED: int;
    var HTTP_USE_PROXY: int;
    var HTTP_BAD_REQUEST: int;
    var HTTP_UNAUTHORIZED: int;
    var HTTP_PAYMENT_REQUIRED: int;
    var HTTP_FORBIDDEN: int;
    var HTTP_NOT_FOUND: int;
    var HTTP_BAD_METHOD: int;
    var HTTP_NOT_ACCEPTABLE: int;
    var HTTP_PROXY_AUTH: int;
    var HTTP_CLIENT_TIMEOUT: int;
    var HTTP_CONFLICT: int;
    var HTTP_GONE: int;
    var HTTP_LENGTH_REQUIRED: int;
    var HTTP_PRECON_FAILED: int;
    var HTTP_ENTITY_TOO_LARGE: int;
    var HTTP_REQ_TOO_LONG: int;
    var HTTP_UNSUPPORTED_TYPE: int;
    var HTTP_SERVER_ERROR: int;
    var HTTP_INTERNAL_ERROR: int;
    var HTTP_NOT_IMPLEMENTED: int;
    var HTTP_BAD_GATEWAY: int;
    var HTTP_UNAVAILABLE: int;
    var HTTP_GATEWAY_TIMEOUT: int;
    var HTTP_VERSION: int;
}

type sun.net.www.protocol.https.DelegateHttpsURLConnection {
    var httpsURLConnection: javax.net.ssl.HttpsURLConnection;
    var userAgent: java.lang.String;
    var HTTP_OK: int;
    var HTTP_CREATED: int;
    var HTTP_ACCEPTED: int;
    var HTTP_NOT_AUTHORITATIVE: int;
    var HTTP_NO_CONTENT: int;
    var HTTP_RESET: int;
    var HTTP_PARTIAL: int;
    var HTTP_MULT_CHOICE: int;
    var HTTP_MOVED_PERM: int;
    var HTTP_MOVED_TEMP: int;
    var HTTP_SEE_OTHER: int;
    var HTTP_NOT_MODIFIED: int;
    var HTTP_USE_PROXY: int;
    var HTTP_BAD_REQUEST: int;
    var HTTP_UNAUTHORIZED: int;
    var HTTP_PAYMENT_REQUIRED: int;
    var HTTP_FORBIDDEN: int;
    var HTTP_NOT_FOUND: int;
    var HTTP_BAD_METHOD: int;
    var HTTP_NOT_ACCEPTABLE: int;
    var HTTP_PROXY_AUTH: int;
    var HTTP_CLIENT_TIMEOUT: int;
    var HTTP_CONFLICT: int;
    var HTTP_GONE: int;
    var HTTP_LENGTH_REQUIRED: int;
    var HTTP_PRECON_FAILED: int;
    var HTTP_ENTITY_TOO_LARGE: int;
    var HTTP_REQ_TOO_LONG: int;
    var HTTP_UNSUPPORTED_TYPE: int;
    var HTTP_SERVER_ERROR: int;
    var HTTP_INTERNAL_ERROR: int;
    var HTTP_NOT_IMPLEMENTED: int;
    var HTTP_BAD_GATEWAY: int;
    var HTTP_UNAVAILABLE: int;
    var HTTP_GATEWAY_TIMEOUT: int;
    var HTTP_VERSION: int;
}

type sun.net.www.protocol.ftp.Handler {
}

type sun.net.www.protocol.ftp.FtpURLConnection {
}

type sun.net.www.protocol.file.FileURLConnection {
}

type sun.net.www.protocol.file.Handler {
}

type sun.net.www.protocol.jar.JarFileFactory {
}

type sun.net.www.protocol.jar.URLJarFile {
    var MANIFEST_NAME: java.lang.String;
    var OPEN_READ: int;
    var OPEN_DELETE: int;
    var LOCSIG: long;
    var EXTSIG: long;
    var CENSIG: long;
    var ENDSIG: long;
    var LOCHDR: int;
    var EXTHDR: int;
    var CENHDR: int;
    var ENDHDR: int;
    var LOCVER: int;
    var LOCFLG: int;
    var LOCHOW: int;
    var LOCTIM: int;
    var LOCCRC: int;
    var LOCSIZ: int;
    var LOCLEN: int;
    var LOCNAM: int;
    var LOCEXT: int;
    var EXTCRC: int;
    var EXTSIZ: int;
    var EXTLEN: int;
    var CENVEM: int;
    var CENVER: int;
    var CENFLG: int;
    var CENHOW: int;
    var CENTIM: int;
    var CENCRC: int;
    var CENSIZ: int;
    var CENLEN: int;
    var CENNAM: int;
    var CENEXT: int;
    var CENCOM: int;
    var CENDSK: int;
    var CENATT: int;
    var CENATX: int;
    var CENOFF: int;
    var ENDSUB: int;
    var ENDTOT: int;
    var ENDSIZ: int;
    var ENDOFF: int;
    var ENDCOM: int;
}

type sun.net.www.protocol.jar.URLJarFileCallBack {
}

type sun.net.www.protocol.jar.Handler {
}

type sun.net.www.protocol.jar.JarURLConnection {
}

type sun.net.www.protocol.mailto.Handler {
}

type sun.net.www.protocol.mailto.MailToURLConnection {
}

type sun.net.www.protocol.jrt.Handler {
}

type sun.net.www.protocol.jrt.JavaRuntimeURLConnection {
}

type sun.net.www.protocol.http.AuthCacheImpl {
}

type sun.net.www.protocol.http.HttpURLConnection {
    var userAgent: java.lang.String;
    var HTTP_OK: int;
    var HTTP_CREATED: int;
    var HTTP_ACCEPTED: int;
    var HTTP_NOT_AUTHORITATIVE: int;
    var HTTP_NO_CONTENT: int;
    var HTTP_RESET: int;
    var HTTP_PARTIAL: int;
    var HTTP_MULT_CHOICE: int;
    var HTTP_MOVED_PERM: int;
    var HTTP_MOVED_TEMP: int;
    var HTTP_SEE_OTHER: int;
    var HTTP_NOT_MODIFIED: int;
    var HTTP_USE_PROXY: int;
    var HTTP_BAD_REQUEST: int;
    var HTTP_UNAUTHORIZED: int;
    var HTTP_PAYMENT_REQUIRED: int;
    var HTTP_FORBIDDEN: int;
    var HTTP_NOT_FOUND: int;
    var HTTP_BAD_METHOD: int;
    var HTTP_NOT_ACCEPTABLE: int;
    var HTTP_PROXY_AUTH: int;
    var HTTP_CLIENT_TIMEOUT: int;
    var HTTP_CONFLICT: int;
    var HTTP_GONE: int;
    var HTTP_LENGTH_REQUIRED: int;
    var HTTP_PRECON_FAILED: int;
    var HTTP_ENTITY_TOO_LARGE: int;
    var HTTP_REQ_TOO_LONG: int;
    var HTTP_UNSUPPORTED_TYPE: int;
    var HTTP_SERVER_ERROR: int;
    var HTTP_INTERNAL_ERROR: int;
    var HTTP_NOT_IMPLEMENTED: int;
    var HTTP_BAD_GATEWAY: int;
    var HTTP_UNAVAILABLE: int;
    var HTTP_GATEWAY_TIMEOUT: int;
    var HTTP_VERSION: int;
}

type sun.net.www.protocol.http.ntlm.NTLMAuthentication {
    var SERVER_AUTHENTICATION: char;
    var PROXY_AUTHENTICATION: char;
}

type sun.net.www.protocol.http.ntlm.NTLMAuthenticationCallback {
}

type sun.net.www.protocol.http.Negotiator {
}

type sun.net.www.protocol.http.HttpAuthenticator {
}

type sun.net.www.protocol.http.NTLMAuthenticationProxy {
}

type sun.net.www.protocol.http.EmptyInputStream {
}

type sun.net.www.protocol.http.AuthCacheValue {
}

type sun.net.www.protocol.http.Handler {
}

enum sun.net.www.protocol.http.AuthScheme {
    BASIC = 0;
    DIGEST = 1;
    NTLM = 2;
    NEGOTIATE = 3;
    KERBEROS = 4;
    UNKNOWN = 5;
}

type sun.net.www.protocol.http.AuthCache {
}

type sun.net.www.protocol.http.HttpCallerInfo {
    var `url`: java.net.URL;
    var host: java.lang.String;
    var protocol: java.lang.String;
    var prompt: java.lang.String;
    var scheme: java.lang.String;
    var port: int;
    var addr: java.net.InetAddress;
    var authenticator: java.net.Authenticator;
    var serverCert: java.security.cert.X509Certificate;
}

type sun.net.www.protocol.http.AuthenticationInfo {
    var SERVER_AUTHENTICATION: char;
    var PROXY_AUTHENTICATION: char;
}

type sun.net.www.protocol.http.BasicAuthentication {
    var SERVER_AUTHENTICATION: char;
    var PROXY_AUTHENTICATION: char;
}

type sun.net.www.protocol.http.DigestAuthentication {
    var SERVER_AUTHENTICATION: char;
    var PROXY_AUTHENTICATION: char;
}

type sun.net.www.protocol.http.AuthenticationHeader {
}

type sun.net.www.protocol.http.AuthenticatorKeys {
    var DEFAULT: java.lang.String;
}

type sun.net.www.protocol.http.NegotiateAuthentication {
    var SERVER_AUTHENTICATION: char;
    var PROXY_AUTHENTICATION: char;
}

type sun.net.www.protocol.jmod.Handler {
}

type sun.net.www.http.ChunkedOutputStream {
}

type sun.net.www.http.ChunkedInputStream {
}

type sun.net.www.http.KeepAliveStream {
}

type sun.net.www.http.ClientVector {
}

type sun.net.www.http.KeepAliveEntry {
}

type sun.net.www.http.KeepAliveStreamCleaner {
}

type sun.net.www.http.HttpCaptureOutputStream {
}

type sun.net.www.http.HttpClient {
    var usingProxy: boolean;
    var reuse: boolean;
    var DEFAULT_READ_TIMEOUT: int;
    var DEFAULT_CONNECT_TIMEOUT: int;
    var serverOutput: java.io.PrintStream;
    var serverInput: java.io.InputStream;
}

type sun.net.www.http.PosterOutputStream {
}

type sun.net.www.http.KeepAliveCache {
}

type sun.net.www.http.KeepAliveCleanerEntry {
}

type sun.net.www.http.KeepAliveKey {
}

type sun.net.www.http.HttpCaptureInputStream {
}

type sun.net.www.http.Hurryable {
}

type sun.net.www.http.HttpCapture {
}

type sun.net.www.HeaderParser {
}

type sun.net.www.ParseUtil {
}

type sun.net.www.MessageHeader {
}

type sun.net.www.URLConnection {
}

type sun.net.ResourceManager {
}

type sun.net.spi.DefaultProxySelector {
}

type sun.net.ApplicationProxy {
    var NO_PROXY: java.net.Proxy;
}

type sun.net.ProgressEvent {
}

type sun.net.ProgressMeteringPolicy {
}

type sun.net.smtp.SmtpProtocolException {
}

type sun.net.smtp.SmtpPrintStream {
}

type sun.net.smtp.SmtpClient {
    var DEFAULT_READ_TIMEOUT: int;
    var DEFAULT_CONNECT_TIMEOUT: int;
    var serverOutput: java.io.PrintStream;
    var serverInput: java.io.InputStream;
}

type sun.net.sdp.SdpProvider {
}

type sun.net.sdp.SdpSupport {
}

type sun.net.NetHooks {
}

type sun.net.dns.ResolverConfiguration {
}

type sun.net.dns.OptionsImpl {
}

type sun.net.dns.ResolverConfigurationImpl {
}

type sun.net.TelnetOutputStream {
    var binaryMode: boolean;
}

type sun.net.NetProperties {
}

type sun.net.ProgressListener {
}

type sun.net.InetAddressCachePolicy {
    var FOREVER: int;
    var NEVER: int;
    var DEFAULT_POSITIVE: int;
}

type sun.util.calendar.JulianCalendar {
    var JANUARY: int;
    var FEBRUARY: int;
    var MARCH: int;
    var APRIL: int;
    var MAY: int;
    var JUNE: int;
    var JULY: int;
    var AUGUST: int;
    var SEPTEMBER: int;
    var OCTOBER: int;
    var NOVEMBER: int;
    var DECEMBER: int;
    var SUNDAY: int;
    var MONDAY: int;
    var TUESDAY: int;
    var WEDNESDAY: int;
    var THURSDAY: int;
    var FRIDAY: int;
    var SATURDAY: int;
}

type sun.util.calendar.ZoneInfoFile {
}

type sun.util.calendar.CalendarSystem {
}

type sun.util.calendar.BaseCalendar {
    var JANUARY: int;
    var FEBRUARY: int;
    var MARCH: int;
    var APRIL: int;
    var MAY: int;
    var JUNE: int;
    var JULY: int;
    var AUGUST: int;
    var SEPTEMBER: int;
    var OCTOBER: int;
    var NOVEMBER: int;
    var DECEMBER: int;
    var SUNDAY: int;
    var MONDAY: int;
    var TUESDAY: int;
    var WEDNESDAY: int;
    var THURSDAY: int;
    var FRIDAY: int;
    var SATURDAY: int;
}

type sun.util.calendar.LocalGregorianCalendar {
    var JANUARY: int;
    var FEBRUARY: int;
    var MARCH: int;
    var APRIL: int;
    var MAY: int;
    var JUNE: int;
    var JULY: int;
    var AUGUST: int;
    var SEPTEMBER: int;
    var OCTOBER: int;
    var NOVEMBER: int;
    var DECEMBER: int;
    var SUNDAY: int;
    var MONDAY: int;
    var TUESDAY: int;
    var WEDNESDAY: int;
    var THURSDAY: int;
    var FRIDAY: int;
    var SATURDAY: int;
}

type sun.util.calendar.AbstractCalendar {
}

type sun.util.calendar.ZoneInfo {
    var SHORT: int;
    var LONG: int;
}

type sun.util.calendar.CalendarDate {
    var FIELD_UNDEFINED: int;
    var TIME_UNDEFINED: long;
}

type sun.util.calendar.CalendarUtils {
}

type sun.util.calendar.ImmutableGregorianDate {
    var FIELD_UNDEFINED: int;
    var TIME_UNDEFINED: long;
}

type sun.util.calendar.Gregorian {
    var JANUARY: int;
    var FEBRUARY: int;
    var MARCH: int;
    var APRIL: int;
    var MAY: int;
    var JUNE: int;
    var JULY: int;
    var AUGUST: int;
    var SEPTEMBER: int;
    var OCTOBER: int;
    var NOVEMBER: int;
    var DECEMBER: int;
    var SUNDAY: int;
    var MONDAY: int;
    var TUESDAY: int;
    var WEDNESDAY: int;
    var THURSDAY: int;
    var FRIDAY: int;
    var SATURDAY: int;
}

type sun.util.calendar.Era {
}

type sun.util.locale.UnicodeLocaleExtension {
    var SINGLETON: char;
    var CA_JAPANESE: sun.util.locale.UnicodeLocaleExtension;
    var NU_THAI: sun.util.locale.UnicodeLocaleExtension;
}

type sun.util.locale.LocaleUtils {
}

type sun.util.locale.LanguageTag {
    var SEP: java.lang.String;
    var PRIVATEUSE: java.lang.String;
    var UNDETERMINED: java.lang.String;
    var PRIVUSE_VARIANT_PREFIX: java.lang.String;
}

type sun.util.locale.BaseLocale {
    var constantBaseLocales: array<sun.util.locale.BaseLocale>;
    var ENGLISH: byte;
    var FRENCH: byte;
    var GERMAN: byte;
    var ITALIAN: byte;
    var JAPANESE: byte;
    var KOREAN: byte;
    var CHINESE: byte;
    var SIMPLIFIED_CHINESE: byte;
    var TRADITIONAL_CHINESE: byte;
    var FRANCE: byte;
    var GERMANY: byte;
    var ITALY: byte;
    var JAPAN: byte;
    var KOREA: byte;
    var UK: byte;
    var US: byte;
    var CANADA: byte;
    var CANADA_FRENCH: byte;
    var ROOT: byte;
    var NUM_CONSTANTS: byte;
    var SEP: java.lang.String;
}

type sun.util.locale.LocaleEquivalentMaps {
}

type sun.util.locale.LocaleObjectCache {
}

type sun.util.locale.provider.LocaleProviderAdapter {
}

type sun.util.locale.provider.JavaTimeDateTimePatternImpl {
}

type sun.util.locale.provider.CalendarNameProviderImpl {
}

type sun.util.locale.provider.SPILocaleProviderAdapter {
}

type sun.util.locale.provider.BreakIteratorProviderImpl {
}

type sun.util.locale.provider.JRELocaleConstants {
    var JA_JP_JP: java.util.Locale;
    var NO_NO_NY: java.util.Locale;
    var TH_TH: java.util.Locale;
    var TH_TH_TH: java.util.Locale;
}

type sun.util.locale.provider.CalendarDataProviderImpl {
}

type sun.util.locale.provider.LocaleServiceProviderPool {
}

type sun.util.locale.provider.HostLocaleProviderAdapterImpl {
}

type sun.util.locale.provider.ResourceBundleBasedAdapter {
}

type sun.util.locale.provider.TimeZoneNameUtility {
}

type sun.util.locale.provider.CurrencyNameProviderImpl {
}

type sun.util.locale.provider.CollationRules {
}

type sun.util.locale.provider.FallbackLocaleProviderAdapter {
}

type sun.util.locale.provider.AuxLocaleProviderAdapter {
}

type sun.util.locale.provider.NumberFormatProviderImpl {
}

type sun.util.locale.provider.TimeZoneNameProviderImpl {
}

type sun.util.locale.provider.DateFormatProviderImpl {
}

type sun.util.locale.provider.DateFormatSymbolsProviderImpl {
}

type sun.util.locale.provider.CollatorProviderImpl {
}

type sun.util.locale.provider.AvailableLanguageTags {
}

type sun.util.locale.provider.JRELocaleProviderAdapter {
}

type sun.util.locale.provider.CalendarProviderImpl {
}

type sun.util.locale.provider.BaseLocaleDataMetaInfo {
}

type sun.util.locale.provider.LocaleResources {
}

type sun.util.locale.provider.CalendarDataUtility {
    var FIRST_DAY_OF_WEEK: java.lang.String;
    var MINIMAL_DAYS_IN_FIRST_WEEK: java.lang.String;
}

type sun.util.locale.provider.LocaleNameProviderImpl {
}

type sun.util.locale.provider.DecimalFormatSymbolsProviderImpl {
}

type sun.util.locale.provider.LocaleDataMetaInfo {
}

type sun.util.locale.provider.HostLocaleProviderAdapter {
}

type sun.util.locale.LocaleSyntaxException {
}

type sun.util.locale.StringTokenIterator {
}

type sun.util.locale.Extension {
}

type sun.util.locale.LocaleExtensions {
    var CALENDAR_JAPANESE: sun.util.locale.LocaleExtensions;
    var NUMBER_THAI: sun.util.locale.LocaleExtensions;
}

type sun.util.locale.LocaleMatcher {
}

type sun.util.locale.ParseStatus {
}

type sun.util.locale.InternalLocaleBuilder {
}

type sun.util.resources.TimeZoneNames {
}

type sun.util.resources.CalendarData_en {
}

type sun.util.resources.TimeZoneNamesProvider {
}

type sun.util.resources.BreakIteratorResourceBundle {
}

type sun.util.resources.LocaleData {
}

type sun.util.resources.TimeZoneNames_en {
}

type sun.util.resources.OpenListResourceBundle {
}

type sun.util.resources.TimeZoneNamesBundle {
}

type sun.util.resources.CurrencyNamesProvider {
}

type sun.util.resources.LocaleNames_en {
}

type sun.util.resources.ParallelListResourceBundle {
}

type sun.util.resources.CalendarDataProvider {
}

type sun.util.resources.LocaleNamesProvider {
}

type sun.util.resources.cldr.TimeZoneNames {
}

type sun.util.resources.cldr.TimeZoneNamesProvider {
}

type sun.util.resources.cldr.TimeZoneNames_en {
}

type sun.util.resources.cldr.CurrencyNamesProvider {
}

type sun.util.resources.cldr.LocaleNames_en {
}

type sun.util.resources.cldr.CalendarDataProvider {
}

type sun.util.resources.cldr.LocaleNamesProvider {
}

type sun.util.resources.cldr.CurrencyNames_en {
}

type sun.util.resources.cldr.CalendarData {
}

type sun.util.resources.cldr.LocaleNames {
}

type sun.util.resources.cldr.CurrencyNames {
}

type sun.util.resources.CurrencyNames_en_US {
}

type sun.util.resources.Bundles {
}

type sun.util.resources.LocaleNamesBundle {
}

type sun.util.resources.CalendarData {
}

type sun.util.resources.LocaleDataProvider {
}

type sun.util.resources.LocaleNames {
}

type sun.util.resources.CurrencyNames {
}

type sun.util.ResourceBundleEnumeration {
}

type sun.util.PreHashedMap {
}

type sun.util.PropertyResourceBundleCharset {
}

type sun.util.spi.CalendarProvider {
}

type sun.util.cldr.CLDRBaseLocaleDataMetaInfo {
}

type sun.util.cldr.CLDRLocaleProviderAdapter {
}

type sun.util.cldr.CLDRTimeZoneNameProviderImpl {
}

type sun.util.cldr.CLDRCalendarDataProviderImpl {
}

type sun.util.cldr.CLDRCalendarNameProviderImpl {
}

type sun.util.BuddhistCalendar {
    var BC: int;
    var AD: int;
    var ERA: int;
    var YEAR: int;
    var MONTH: int;
    var WEEK_OF_YEAR: int;
    var WEEK_OF_MONTH: int;
    var DATE: int;
    var DAY_OF_MONTH: int;
    var DAY_OF_YEAR: int;
    var DAY_OF_WEEK: int;
    var DAY_OF_WEEK_IN_MONTH: int;
    var AM_PM: int;
    var HOUR: int;
    var HOUR_OF_DAY: int;
    var MINUTE: int;
    var SECOND: int;
    var MILLISECOND: int;
    var ZONE_OFFSET: int;
    var DST_OFFSET: int;
    var FIELD_COUNT: int;
    var SUNDAY: int;
    var MONDAY: int;
    var TUESDAY: int;
    var WEDNESDAY: int;
    var THURSDAY: int;
    var FRIDAY: int;
    var SATURDAY: int;
    var JANUARY: int;
    var FEBRUARY: int;
    var MARCH: int;
    var APRIL: int;
    var MAY: int;
    var JUNE: int;
    var JULY: int;
    var AUGUST: int;
    var SEPTEMBER: int;
    var OCTOBER: int;
    var NOVEMBER: int;
    var DECEMBER: int;
    var UNDECIMBER: int;
    var AM: int;
    var PM: int;
    var ALL_STYLES: int;
    var SHORT: int;
    var LONG: int;
    var NARROW_FORMAT: int;
    var NARROW_STANDALONE: int;
    var SHORT_FORMAT: int;
    var LONG_FORMAT: int;
    var SHORT_STANDALONE: int;
    var LONG_STANDALONE: int;
}

type sun.util.logging.PlatformLogger {
}

type sun.security.ssl.SSLSocketOutputRecord {
    var headerSize: int;
    var handshakeHeaderSize: int;
    var headerPlusMaxIVSize: int;
    var maxPlaintextPlusSize: int;
    var maxRecordSize: int;
    var maxLargeRecordSize: int;
    var v2NoCipher: array<byte>;
    var maxMacSize: int;
    var maxDataSize: int;
    var maxPadding: int;
    var maxIVLength: int;
    var maxFragmentSize: int;
    var enableCBCProtection: boolean;
    var OVERFLOW_OF_INT08: int;
    var OVERFLOW_OF_INT16: int;
    var OVERFLOW_OF_INT24: int;
}

type sun.security.ssl.SSLBasicKeyDerivation {
}

type sun.security.ssl.SSLAlgorithmConstraints {
}

enum sun.security.ssl.SSLCipher {
    B_NULL = 0;
    B_RC4_40 = 1;
    B_RC2_40 = 2;
    B_DES_40 = 3;
    B_RC4_128 = 4;
    B_DES = 5;
    B_3DES = 6;
    B_IDEA = 7;
    B_AES_128 = 8;
    B_AES_256 = 9;
    B_AES_128_GCM = 10;
    B_AES_256_GCM = 11;
    B_AES_128_GCM_IV = 12;
    B_AES_256_GCM_IV = 13;
    B_CC20_P1305 = 14;
}

enum sun.security.ssl.X509Authentication {
    RSA = 0;
    RSASSA_PSS = 1;
    RSA_OR_PSS = 2;
    DSA = 3;
    EC = 4;
    EDDSA = 5;
}

type sun.security.ssl.HKDF {
}

type sun.security.ssl.Ciphertext {
}

enum sun.security.ssl.SignatureScheme {
    ECDSA_SECP256R1_SHA256 = 0;
    ECDSA_SECP384R1_SHA384 = 1;
    ECDSA_SECP521R1_SHA512 = 2;
    ED25519 = 3;
    ED448 = 4;
    RSA_PSS_RSAE_SHA256 = 5;
    RSA_PSS_RSAE_SHA384 = 6;
    RSA_PSS_RSAE_SHA512 = 7;
    RSA_PSS_PSS_SHA256 = 8;
    RSA_PSS_PSS_SHA384 = 9;
    RSA_PSS_PSS_SHA512 = 10;
    RSA_PKCS1_SHA256 = 11;
    RSA_PKCS1_SHA384 = 12;
    RSA_PKCS1_SHA512 = 13;
    DSA_SHA256 = 14;
    ECDSA_SHA224 = 15;
    RSA_SHA224 = 16;
    DSA_SHA224 = 17;
    ECDSA_SHA1 = 18;
    RSA_PKCS1_SHA1 = 19;
    DSA_SHA1 = 20;
    RSA_MD5 = 21;
}

enum sun.security.ssl.Alert {
    CLOSE_NOTIFY = 0;
    UNEXPECTED_MESSAGE = 1;
    BAD_RECORD_MAC = 2;
    DECRYPTION_FAILED = 3;
    RECORD_OVERFLOW = 4;
    DECOMPRESSION_FAILURE = 5;
    HANDSHAKE_FAILURE = 6;
    NO_CERTIFICATE = 7;
    BAD_CERTIFICATE = 8;
    UNSUPPORTED_CERTIFICATE = 9;
    CERTIFICATE_REVOKED = 10;
    CERTIFICATE_EXPIRED = 11;
    CERTIFICATE_UNKNOWN = 12;
    ILLEGAL_PARAMETER = 13;
    UNKNOWN_CA = 14;
    ACCESS_DENIED = 15;
    DECODE_ERROR = 16;
    DECRYPT_ERROR = 17;
    EXPORT_RESTRICTION = 18;
    PROTOCOL_VERSION = 19;
    INSUFFICIENT_SECURITY = 20;
    INTERNAL_ERROR = 21;
    INAPPROPRIATE_FALLBACK = 22;
    USER_CANCELED = 23;
    NO_RENEGOTIATION = 24;
    MISSING_EXTENSION = 25;
    UNSUPPORTED_EXTENSION = 26;
    CERT_UNOBTAINABLE = 27;
    UNRECOGNIZED_NAME = 28;
    BAD_CERT_STATUS_RESPONSE = 29;
    BAD_CERT_HASH_VALUE = 30;
    UNKNOWN_PSK_IDENTITY = 31;
    CERTIFICATE_REQUIRED = 32;
    NO_APPLICATION_PROTOCOL = 33;
}

type sun.security.ssl.ServerNameExtension {
}

type sun.security.ssl.CertificateMessage {
}

type sun.security.ssl.ServerKeyExchange {
}

type sun.security.ssl.Utilities {
}

type sun.security.ssl.ClientHandshakeContext {
}

type sun.security.ssl.SSLKeyDerivationGenerator {
}

type sun.security.ssl.SupportedVersionsExtension {
}

type sun.security.ssl.JsseJce {
}

type sun.security.ssl.Finished {
}

enum sun.security.ssl.SSLTrafficKeyDerivation {
    SSL30 = 0;
    TLS10 = 1;
    TLS12 = 2;
    TLS13 = 3;
}

type sun.security.ssl.PredefinedDHParameterSpecs {
}

type sun.security.ssl.HandshakeOutStream {
}

type sun.security.ssl.DTLSInputRecord {
    var headerSize: int;
    var handshakeHeaderSize: int;
    var headerPlusMaxIVSize: int;
    var maxPlaintextPlusSize: int;
    var maxRecordSize: int;
    var minCertPlaintextSize: int;
    var maxMacSize: int;
    var maxDataSize: int;
    var maxPadding: int;
    var maxIVLength: int;
    var maxFragmentSize: int;
    var enableCBCProtection: boolean;
    var OVERFLOW_OF_INT08: int;
    var OVERFLOW_OF_INT16: int;
    var OVERFLOW_OF_INT24: int;
}

type sun.security.ssl.KAKeyDerivation {
}

type sun.security.ssl.SSLAuthentication {
}

type sun.security.ssl.DHServerKeyExchange {
}

enum sun.security.ssl.ProtocolVersion {
    TLS13 = 0;
    TLS12 = 1;
    TLS11 = 2;
    TLS10 = 3;
    SSL30 = 4;
    SSL20Hello = 5;
    DTLS12 = 6;
    DTLS10 = 7;
    NONE = 8;
}

type sun.security.ssl.SSLServerSocketFactoryImpl {
}

type sun.security.ssl.AbstractTrustManagerWrapper {
}

type sun.security.ssl.RandomCookie {
}

type sun.security.ssl.StatusResponseManager {
}

type sun.security.ssl.SSLTransport {
}

type sun.security.ssl.ServerHello {
}

type sun.security.ssl.HandshakeAbsence {
}

type sun.security.ssl.OutputRecord {
    var maxMacSize: int;
    var maxDataSize: int;
    var maxPadding: int;
    var maxIVLength: int;
    var maxFragmentSize: int;
    var enableCBCProtection: boolean;
    var OVERFLOW_OF_INT08: int;
    var OVERFLOW_OF_INT16: int;
    var OVERFLOW_OF_INT24: int;
}

type sun.security.ssl.SSLSocketImpl {
}

type sun.security.ssl.DummyX509KeyManager {
}

type sun.security.ssl.SSLEngineImpl {
}

type sun.security.ssl.SSLKeyExchange {
}

type sun.security.ssl.SunJSSE {
}

type sun.security.ssl.PostHandshakeContext {
}

type sun.security.ssl.NamedGroupPossession {
}

type sun.security.ssl.EncryptedExtensions {
}

type sun.security.ssl.SSLStringizer {
}

type sun.security.ssl.SSLHandshakeBinding {
}

type sun.security.ssl.NewSessionTicket {
}

type sun.security.ssl.SSLLogger {
    var isOn: boolean;
}

type sun.security.ssl.MaxFragExtension {
}

type sun.security.ssl.BaseSSLSocketImpl {
}

type sun.security.ssl.ServerHelloDone {
}

type sun.security.ssl.SSLEngineInputRecord {
    var headerSize: int;
    var handshakeHeaderSize: int;
    var headerPlusMaxIVSize: int;
    var maxPlaintextPlusSize: int;
    var maxRecordSize: int;
    var maxLargeRecordSize: int;
    var v2NoCipher: array<byte>;
    var maxMacSize: int;
    var maxDataSize: int;
    var maxPadding: int;
    var maxIVLength: int;
    var maxFragmentSize: int;
    var enableCBCProtection: boolean;
    var OVERFLOW_OF_INT08: int;
    var OVERFLOW_OF_INT16: int;
    var OVERFLOW_OF_INT24: int;
}

type sun.security.ssl.TrustManagerFactoryImpl {
}

type sun.security.ssl.ECDHClientKeyExchange {
}

type sun.security.ssl.TrustStoreManager {
}

type sun.security.ssl.KeyManagerFactoryImpl {
}

type sun.security.ssl.KeyShareExtension {
}

type sun.security.ssl.SessionId {
}

type sun.security.ssl.InputRecord {
    var maxMacSize: int;
    var maxDataSize: int;
    var maxPadding: int;
    var maxIVLength: int;
    var maxFragmentSize: int;
    var enableCBCProtection: boolean;
    var OVERFLOW_OF_INT08: int;
    var OVERFLOW_OF_INT16: int;
    var OVERFLOW_OF_INT24: int;
}

type sun.security.ssl.RSAKeyExchange {
}

type sun.security.ssl.RSAClientKeyExchange {
}

type sun.security.ssl.Plaintext {
}

enum sun.security.ssl.SSLMasterKeyDerivation {
    SSL30 = 0;
    TLS10 = 1;
    TLS12 = 2;
}

type sun.security.ssl.HelloRequest {
}

type sun.security.ssl.NamedGroupCredentials {
}

type sun.security.ssl.RSASignature {
}

enum sun.security.ssl.CipherSuite {
    TLS_AES_256_GCM_SHA384 = 0;
    TLS_AES_128_GCM_SHA256 = 1;
    TLS_CHACHA20_POLY1305_SHA256 = 2;
    TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 = 3;
    TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 = 4;
    TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256 = 5;
    TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 = 6;
    TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 = 7;
    TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 = 8;
    TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 = 9;
    TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256 = 10;
    TLS_DHE_DSS_WITH_AES_256_GCM_SHA384 = 11;
    TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 = 12;
    TLS_DHE_DSS_WITH_AES_128_GCM_SHA256 = 13;
    TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384 = 14;
    TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 = 15;
    TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256 = 16;
    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 = 17;
    TLS_DHE_RSA_WITH_AES_256_CBC_SHA256 = 18;
    TLS_DHE_DSS_WITH_AES_256_CBC_SHA256 = 19;
    TLS_DHE_RSA_WITH_AES_128_CBC_SHA256 = 20;
    TLS_DHE_DSS_WITH_AES_128_CBC_SHA256 = 21;
    TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384 = 22;
    TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384 = 23;
    TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256 = 24;
    TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256 = 25;
    TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384 = 26;
    TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384 = 27;
    TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256 = 28;
    TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256 = 29;
    TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA = 30;
    TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA = 31;
    TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA = 32;
    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA = 33;
    TLS_DHE_RSA_WITH_AES_256_CBC_SHA = 34;
    TLS_DHE_DSS_WITH_AES_256_CBC_SHA = 35;
    TLS_DHE_RSA_WITH_AES_128_CBC_SHA = 36;
    TLS_DHE_DSS_WITH_AES_128_CBC_SHA = 37;
    TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA = 38;
    TLS_ECDH_RSA_WITH_AES_256_CBC_SHA = 39;
    TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA = 40;
    TLS_ECDH_RSA_WITH_AES_128_CBC_SHA = 41;
    TLS_RSA_WITH_AES_256_GCM_SHA384 = 42;
    TLS_RSA_WITH_AES_128_GCM_SHA256 = 43;
    TLS_RSA_WITH_AES_256_CBC_SHA256 = 44;
    TLS_RSA_WITH_AES_128_CBC_SHA256 = 45;
    TLS_RSA_WITH_AES_256_CBC_SHA = 46;
    TLS_RSA_WITH_AES_128_CBC_SHA = 47;
    TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA = 48;
    TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA = 49;
    SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA = 50;
    SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA = 51;
    TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA = 52;
    TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA = 53;
    SSL_RSA_WITH_3DES_EDE_CBC_SHA = 54;
    TLS_EMPTY_RENEGOTIATION_INFO_SCSV = 55;
    TLS_DH_anon_WITH_AES_256_GCM_SHA384 = 56;
    TLS_DH_anon_WITH_AES_128_GCM_SHA256 = 57;
    TLS_DH_anon_WITH_AES_256_CBC_SHA256 = 58;
    TLS_ECDH_anon_WITH_AES_256_CBC_SHA = 59;
    TLS_DH_anon_WITH_AES_256_CBC_SHA = 60;
    TLS_DH_anon_WITH_AES_128_CBC_SHA256 = 61;
    TLS_ECDH_anon_WITH_AES_128_CBC_SHA = 62;
    TLS_DH_anon_WITH_AES_128_CBC_SHA = 63;
    TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA = 64;
    SSL_DH_anon_WITH_3DES_EDE_CBC_SHA = 65;
    TLS_ECDHE_ECDSA_WITH_RC4_128_SHA = 66;
    TLS_ECDHE_RSA_WITH_RC4_128_SHA = 67;
    SSL_RSA_WITH_RC4_128_SHA = 68;
    TLS_ECDH_ECDSA_WITH_RC4_128_SHA = 69;
    TLS_ECDH_RSA_WITH_RC4_128_SHA = 70;
    SSL_RSA_WITH_RC4_128_MD5 = 71;
    TLS_ECDH_anon_WITH_RC4_128_SHA = 72;
    SSL_DH_anon_WITH_RC4_128_MD5 = 73;
    SSL_RSA_WITH_DES_CBC_SHA = 74;
    SSL_DHE_RSA_WITH_DES_CBC_SHA = 75;
    SSL_DHE_DSS_WITH_DES_CBC_SHA = 76;
    SSL_DH_anon_WITH_DES_CBC_SHA = 77;
    SSL_RSA_EXPORT_WITH_DES40_CBC_SHA = 78;
    SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA = 79;
    SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA = 80;
    SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA = 81;
    SSL_RSA_EXPORT_WITH_RC4_40_MD5 = 82;
    SSL_DH_anon_EXPORT_WITH_RC4_40_MD5 = 83;
    TLS_RSA_WITH_NULL_SHA256 = 84;
    TLS_ECDHE_ECDSA_WITH_NULL_SHA = 85;
    TLS_ECDHE_RSA_WITH_NULL_SHA = 86;
    SSL_RSA_WITH_NULL_SHA = 87;
    TLS_ECDH_ECDSA_WITH_NULL_SHA = 88;
    TLS_ECDH_RSA_WITH_NULL_SHA = 89;
    TLS_ECDH_anon_WITH_NULL_SHA = 90;
    SSL_RSA_WITH_NULL_MD5 = 91;
    TLS_AES_128_CCM_SHA256 = 92;
    TLS_AES_128_CCM_8_SHA256 = 93;
    CS_0006 = 94;
    CS_0007 = 95;
    CS_000B = 96;
    CS_000C = 97;
    CS_000D = 98;
    CS_000E = 99;
    CS_000F = 100;
    CS_0010 = 101;
    CS_001C = 102;
    CS_001D = 103;
    CS_0062 = 104;
    CS_0063 = 105;
    CS_0064 = 106;
    CS_0065 = 107;
    CS_0066 = 108;
    CS_FFE0 = 109;
    CS_FFE1 = 110;
    CS_FEFE = 111;
    CS_FEFF = 112;
    CS_001E = 113;
    CS_001F = 114;
    CS_0020 = 115;
    CS_0021 = 116;
    CS_0022 = 117;
    CS_0023 = 118;
    CS_0024 = 119;
    CS_0025 = 120;
    CS_0026 = 121;
    CS_0027 = 122;
    CS_0028 = 123;
    CS_0029 = 124;
    CS_002A = 125;
    CS_002B = 126;
    CS_0096 = 127;
    CS_0097 = 128;
    CS_0098 = 129;
    CS_0099 = 130;
    CS_009A = 131;
    CS_009B = 132;
    CS_008A = 133;
    CS_008B = 134;
    CS_008C = 135;
    CS_008D = 136;
    CS_008E = 137;
    CS_008F = 138;
    CS_0090 = 139;
    CS_0091 = 140;
    CS_0092 = 141;
    CS_0093 = 142;
    CS_0094 = 143;
    CS_0095 = 144;
    CS_002C = 145;
    CS_002D = 146;
    CS_002E = 147;
    CS_0030 = 148;
    CS_0031 = 149;
    CS_0036 = 150;
    CS_0037 = 151;
    CS_003E = 152;
    CS_003F = 153;
    CS_0068 = 154;
    CS_0069 = 155;
    CS_00A0 = 156;
    CS_00A1 = 157;
    CS_00A4 = 158;
    CS_00A5 = 159;
    CS_00A8 = 160;
    CS_00A9 = 161;
    CS_00AA = 162;
    CS_00AB = 163;
    CS_00AC = 164;
    CS_00AD = 165;
    CS_00AE = 166;
    CS_00AF = 167;
    CS_00B0 = 168;
    CS_00B1 = 169;
    CS_00B2 = 170;
    CS_00B3 = 171;
    CS_00B4 = 172;
    CS_00B5 = 173;
    CS_00B6 = 174;
    CS_00B7 = 175;
    CS_00B8 = 176;
    CS_00B9 = 177;
    CS_0041 = 178;
    CS_0042 = 179;
    CS_0043 = 180;
    CS_0044 = 181;
    CS_0045 = 182;
    CS_0046 = 183;
    CS_0084 = 184;
    CS_0085 = 185;
    CS_0086 = 186;
    CS_0087 = 187;
    CS_0088 = 188;
    CS_0089 = 189;
    CS_00BA = 190;
    CS_00BB = 191;
    CS_00BC = 192;
    CS_00BD = 193;
    CS_00BE = 194;
    CS_00BF = 195;
    CS_00C0 = 196;
    CS_00C1 = 197;
    CS_00C2 = 198;
    CS_00C3 = 199;
    CS_00C4 = 200;
    CS_00C5 = 201;
    CS_5600 = 202;
    CS_C01A = 203;
    CS_C01B = 204;
    CS_C01C = 205;
    CS_C01D = 206;
    CS_C01E = 207;
    CS_C01F = 208;
    CS_C020 = 209;
    CS_C021 = 210;
    CS_C022 = 211;
    CS_C033 = 212;
    CS_C034 = 213;
    CS_C035 = 214;
    CS_C036 = 215;
    CS_C037 = 216;
    CS_C038 = 217;
    CS_C039 = 218;
    CS_C03A = 219;
    CS_C03B = 220;
    CS_C03C = 221;
    CS_C03D = 222;
    CS_C03E = 223;
    CS_C03F = 224;
    CS_C040 = 225;
    CS_C041 = 226;
    CS_C042 = 227;
    CS_C043 = 228;
    CS_C044 = 229;
    CS_C045 = 230;
    CS_C046 = 231;
    CS_C047 = 232;
    CS_C048 = 233;
    CS_C049 = 234;
    CS_C04A = 235;
    CS_C04B = 236;
    CS_C04C = 237;
    CS_C04D = 238;
    CS_C04E = 239;
    CS_C04F = 240;
    CS_C050 = 241;
    CS_C051 = 242;
    CS_C052 = 243;
    CS_C053 = 244;
    CS_C054 = 245;
    CS_C055 = 246;
    CS_C056 = 247;
    CS_C057 = 248;
    CS_C058 = 249;
    CS_C059 = 250;
    CS_C05A = 251;
    CS_C05B = 252;
    CS_C05C = 253;
    CS_C05D = 254;
    CS_C05E = 255;
    CS_C05F = 256;
    CS_C060 = 257;
    CS_C061 = 258;
    CS_C062 = 259;
    CS_C063 = 260;
    CS_C064 = 261;
    CS_C065 = 262;
    CS_C066 = 263;
    CS_C067 = 264;
    CS_C068 = 265;
    CS_C069 = 266;
    CS_C06A = 267;
    CS_C06B = 268;
    CS_C06C = 269;
    CS_C06D = 270;
    CS_C06E = 271;
    CS_C06F = 272;
    CS_C070 = 273;
    CS_C071 = 274;
    CS_C072 = 275;
    CS_C073 = 276;
    CS_C074 = 277;
    CS_C075 = 278;
    CS_C076 = 279;
    CS_C077 = 280;
    CS_C078 = 281;
    CS_C079 = 282;
    CS_C07A = 283;
    CS_C07B = 284;
    CS_C07C = 285;
    CS_C07D = 286;
    CS_C07E = 287;
    CS_C07F = 288;
    CS_C080 = 289;
    CS_C081 = 290;
    CS_C082 = 291;
    CS_C083 = 292;
    CS_C084 = 293;
    CS_C085 = 294;
    CS_C086 = 295;
    CS_C087 = 296;
    CS_C088 = 297;
    CS_C089 = 298;
    CS_C08A = 299;
    CS_C08B = 300;
    CS_C08C = 301;
    CS_C08D = 302;
    CS_C08E = 303;
    CS_C08F = 304;
    CS_C090 = 305;
    CS_C091 = 306;
    CS_C092 = 307;
    CS_C093 = 308;
    CS_C094 = 309;
    CS_C095 = 310;
    CS_C096 = 311;
    CS_C097 = 312;
    CS_C098 = 313;
    CS_C099 = 314;
    CS_C09A = 315;
    CS_C09B = 316;
    CS_C09C = 317;
    CS_C09D = 318;
    CS_C09E = 319;
    CS_C09F = 320;
    CS_C0A0 = 321;
    CS_C0A1 = 322;
    CS_C0A2 = 323;
    CS_C0A3 = 324;
    CS_C0A4 = 325;
    CS_C0A5 = 326;
    CS_C0A6 = 327;
    CS_C0A7 = 328;
    CS_C0A8 = 329;
    CS_C0A9 = 330;
    CS_C0AA = 331;
    CS_C0AB = 332;
    CS_C0AC = 333;
    CS_C0AD = 334;
    CS_C0AE = 335;
    CS_C0AF = 336;
    C_NULL = 337;
}

type sun.security.ssl.CertSignAlgsExtension {
}

type sun.security.ssl.CertificateStatus {
}

type sun.security.ssl.HandshakeConsumer {
}

type sun.security.ssl.ECPointFormatsExtension {
}

type sun.security.ssl.AlpnExtension {
}

enum sun.security.ssl.NamedGroup {
    SECT163_K1 = 0;
    SECT163_R1 = 1;
    SECT163_R2 = 2;
    SECT193_R1 = 3;
    SECT193_R2 = 4;
    SECT233_K1 = 5;
    SECT233_R1 = 6;
    SECT239_K1 = 7;
    SECT283_K1 = 8;
    SECT283_R1 = 9;
    SECT409_K1 = 10;
    SECT409_R1 = 11;
    SECT571_K1 = 12;
    SECT571_R1 = 13;
    SECP160_K1 = 14;
    SECP160_R1 = 15;
    SECP160_R2 = 16;
    SECP192_K1 = 17;
    SECP192_R1 = 18;
    SECP224_K1 = 19;
    SECP224_R1 = 20;
    SECP256_K1 = 21;
    SECP256_R1 = 22;
    SECP384_R1 = 23;
    SECP521_R1 = 24;
    X25519 = 25;
    X448 = 26;
    FFDHE_2048 = 27;
    FFDHE_3072 = 28;
    FFDHE_4096 = 29;
    FFDHE_6144 = 30;
    FFDHE_8192 = 31;
    ARBITRARY_PRIME = 32;
    ARBITRARY_CHAR2 = 33;
}

type sun.security.ssl.CookieExtension {
}

type sun.security.ssl.X509TrustManagerImpl {
}

type sun.security.ssl.SessionTicketExtension {
}

type sun.security.ssl.XDHKeyExchange {
}

type sun.security.ssl.PreSharedKeyExtension {
}

type sun.security.ssl.SSLSocketFactoryImpl {
}

type sun.security.ssl.ClientKeyExchange {
}

type sun.security.ssl.SSLConfiguration {
}

type sun.security.ssl.SSLSessionImpl {
}

type sun.security.ssl.SSLContextImpl {
}

type sun.security.ssl.Authenticator {
}

type sun.security.ssl.SSLProducer {
}

type sun.security.ssl.SSLKeyDerivation {
}

enum sun.security.ssl.SSLHandshake {
    HELLO_REQUEST = 0;
    CLIENT_HELLO = 1;
    SERVER_HELLO = 2;
    HELLO_RETRY_REQUEST = 3;
    HELLO_VERIFY_REQUEST = 4;
    NEW_SESSION_TICKET = 5;
    END_OF_EARLY_DATA = 6;
    ENCRYPTED_EXTENSIONS = 7;
    CERTIFICATE = 8;
    SERVER_KEY_EXCHANGE = 9;
    CERTIFICATE_REQUEST = 10;
    SERVER_HELLO_DONE = 11;
    CERTIFICATE_VERIFY = 12;
    CLIENT_KEY_EXCHANGE = 13;
    FINISHED = 14;
    CERTIFICATE_URL = 15;
    CERTIFICATE_STATUS = 16;
    SUPPLEMENTAL_DATA = 17;
    KEY_UPDATE = 18;
    MESSAGE_HASH = 19;
    NOT_APPLICABLE = 20;
}

type sun.security.ssl.SSLPossession {
}

type sun.security.ssl.DummyX509TrustManager {
}

type sun.security.ssl.ServerHandshakeContext {
}

type sun.security.ssl.CertificateVerify {
}

enum sun.security.ssl.SSLExtension {
    CH_SERVER_NAME = 0;
    SH_SERVER_NAME = 1;
    EE_SERVER_NAME = 2;
    CH_MAX_FRAGMENT_LENGTH = 3;
    SH_MAX_FRAGMENT_LENGTH = 4;
    EE_MAX_FRAGMENT_LENGTH = 5;
    CLIENT_CERTIFICATE_URL = 6;
    TRUSTED_CA_KEYS = 7;
    TRUNCATED_HMAC = 8;
    CH_STATUS_REQUEST = 9;
    SH_STATUS_REQUEST = 10;
    CR_STATUS_REQUEST = 11;
    CT_STATUS_REQUEST = 12;
    USER_MAPPING = 13;
    CLIENT_AUTHZ = 14;
    SERVER_AUTHZ = 15;
    CERT_TYPE = 16;
    CH_SUPPORTED_GROUPS = 17;
    EE_SUPPORTED_GROUPS = 18;
    CH_EC_POINT_FORMATS = 19;
    SH_EC_POINT_FORMATS = 20;
    SRP = 21;
    USE_SRTP = 22;
    HEARTBEAT = 23;
    CH_ALPN = 24;
    SH_ALPN = 25;
    EE_ALPN = 26;
    CH_STATUS_REQUEST_V2 = 27;
    SH_STATUS_REQUEST_V2 = 28;
    SIGNED_CERT_TIMESTAMP = 29;
    CLIENT_CERT_TYPE = 30;
    SERVER_CERT_TYPE = 31;
    PADDING = 32;
    ENCRYPT_THEN_MAC = 33;
    CH_EXTENDED_MASTER_SECRET = 34;
    SH_EXTENDED_MASTER_SECRET = 35;
    TOKEN_BINDING = 36;
    CACHED_INFO = 37;
    CH_SESSION_TICKET = 38;
    SH_SESSION_TICKET = 39;
    CH_SIGNATURE_ALGORITHMS = 40;
    CR_SIGNATURE_ALGORITHMS = 41;
    CH_EARLY_DATA = 42;
    EE_EARLY_DATA = 43;
    NST_EARLY_DATA = 44;
    CH_SUPPORTED_VERSIONS = 45;
    SH_SUPPORTED_VERSIONS = 46;
    HRR_SUPPORTED_VERSIONS = 47;
    MH_SUPPORTED_VERSIONS = 48;
    CH_COOKIE = 49;
    HRR_COOKIE = 50;
    MH_COOKIE = 51;
    PSK_KEY_EXCHANGE_MODES = 52;
    CH_CERTIFICATE_AUTHORITIES = 53;
    CR_CERTIFICATE_AUTHORITIES = 54;
    OID_FILTERS = 55;
    POST_HANDSHAKE_AUTH = 56;
    CH_SIGNATURE_ALGORITHMS_CERT = 57;
    CR_SIGNATURE_ALGORITHMS_CERT = 58;
    CH_KEY_SHARE = 59;
    SH_KEY_SHARE = 60;
    HRR_KEY_SHARE = 61;
    MH_KEY_SHARE = 62;
    CH_RENEGOTIATION_INFO = 63;
    SH_RENEGOTIATION_INFO = 64;
    CH_PRE_SHARED_KEY = 65;
    SH_PRE_SHARED_KEY = 66;
}

type sun.security.ssl.HelloVerifyRequest {
}

type sun.security.ssl.DHClientKeyExchange {
}

type sun.security.ssl.HandshakeProducer {
}

type sun.security.ssl.SSLKeyAgreementGenerator {
}

enum sun.security.ssl.CipherType {
    NULL_CIPHER = 0;
    STREAM_CIPHER = 1;
    BLOCK_CIPHER = 2;
    AEAD_CIPHER = 3;
}

type sun.security.ssl.SSLKeyAgreement {
}

enum sun.security.ssl.ClientAuthType {
    CLIENT_AUTH_NONE = 0;
    CLIENT_AUTH_REQUESTED = 1;
    CLIENT_AUTH_REQUIRED = 2;
}

type sun.security.ssl.SSLConsumer {
}

type sun.security.ssl.HandshakeHash {
}

type sun.security.ssl.DTLSOutputRecord {
    var headerSize: int;
    var handshakeHeaderSize: int;
    var headerPlusMaxIVSize: int;
    var maxPlaintextPlusSize: int;
    var maxRecordSize: int;
    var minCertPlaintextSize: int;
    var maxMacSize: int;
    var maxDataSize: int;
    var maxPadding: int;
    var maxIVLength: int;
    var maxFragmentSize: int;
    var enableCBCProtection: boolean;
    var OVERFLOW_OF_INT08: int;
    var OVERFLOW_OF_INT16: int;
    var OVERFLOW_OF_INT24: int;
}

type sun.security.ssl.SSLExtensions {
}

type sun.security.ssl.ECDHKeyExchange {
}

enum sun.security.ssl.ContentType {
    INVALID = 0;
    CHANGE_CIPHER_SPEC = 1;
    ALERT = 2;
    HANDSHAKE = 3;
    APPLICATION_DATA = 4;
}

type sun.security.ssl.SupportedGroupsExtension {
}

type sun.security.ssl.CertificateAuthoritiesExtension {
}

type sun.security.ssl.ChangeCipherSpec {
}

type sun.security.ssl.TransportContext {
}

type sun.security.ssl.SignatureAlgorithmsExtension {
}

type sun.security.ssl.SunX509KeyManagerImpl {
}

type sun.security.ssl.X509KeyManagerImpl {
}

type sun.security.ssl.SSLCredentials {
}

type sun.security.ssl.ConnectionContext {
}

type sun.security.ssl.SSLSocketInputRecord {
    var headerSize: int;
    var handshakeHeaderSize: int;
    var headerPlusMaxIVSize: int;
    var maxPlaintextPlusSize: int;
    var maxRecordSize: int;
    var maxLargeRecordSize: int;
    var v2NoCipher: array<byte>;
    var maxMacSize: int;
    var maxDataSize: int;
    var maxPadding: int;
    var maxIVLength: int;
    var maxFragmentSize: int;
    var enableCBCProtection: boolean;
    var OVERFLOW_OF_INT08: int;
    var OVERFLOW_OF_INT16: int;
    var OVERFLOW_OF_INT24: int;
}

type sun.security.ssl.KeyUpdate {
}

type sun.security.ssl.SSLPossessionGenerator {
}

type sun.security.ssl.SSLAlgorithmDecomposer {
}

type sun.security.ssl.Record {
    var maxMacSize: int;
    var maxDataSize: int;
    var maxPadding: int;
    var maxIVLength: int;
    var maxFragmentSize: int;
    var enableCBCProtection: boolean;
    var OVERFLOW_OF_INT08: int;
    var OVERFLOW_OF_INT16: int;
    var OVERFLOW_OF_INT24: int;
}

type sun.security.ssl.SSLEngineOutputRecord {
    var headerSize: int;
    var handshakeHeaderSize: int;
    var headerPlusMaxIVSize: int;
    var maxPlaintextPlusSize: int;
    var maxRecordSize: int;
    var maxLargeRecordSize: int;
    var v2NoCipher: array<byte>;
    var maxMacSize: int;
    var maxDataSize: int;
    var maxPadding: int;
    var maxIVLength: int;
    var maxFragmentSize: int;
    var enableCBCProtection: boolean;
    var OVERFLOW_OF_INT08: int;
    var OVERFLOW_OF_INT16: int;
    var OVERFLOW_OF_INT24: int;
}

type sun.security.ssl.CertStatusExtension {
}

type sun.security.ssl.SSLSecretDerivation {
}

type sun.security.ssl.DHKeyExchange {
}

type sun.security.ssl.ECDHServerKeyExchange {
}

type sun.security.ssl.ClientHello {
}

type sun.security.ssl.SSLRecord {
    var headerSize: int;
    var handshakeHeaderSize: int;
    var headerPlusMaxIVSize: int;
    var maxPlaintextPlusSize: int;
    var maxRecordSize: int;
    var maxLargeRecordSize: int;
    var v2NoCipher: array<byte>;
    var maxMacSize: int;
    var maxDataSize: int;
    var maxPadding: int;
    var maxIVLength: int;
    var maxFragmentSize: int;
    var enableCBCProtection: boolean;
    var OVERFLOW_OF_INT08: int;
    var OVERFLOW_OF_INT16: int;
    var OVERFLOW_OF_INT24: int;
}

type sun.security.ssl.HandshakeContext {
}

type sun.security.ssl.RSAServerKeyExchange {
}

type sun.security.ssl.HelloCookieManager {
}

type sun.security.ssl.RenegoInfoExtension {
}

type sun.security.ssl.SSLSessionContextImpl {
}

type sun.security.ssl.EphemeralKeyManager {
}

type sun.security.ssl.SSLServerSocketImpl {
}

type sun.security.ssl.SecureKey {
}

type sun.security.ssl.AbstractKeyManagerWrapper {
}

type sun.security.ssl.CertificateRequest {
}

type sun.security.ssl.DTLSRecord {
    var headerSize: int;
    var handshakeHeaderSize: int;
    var headerPlusMaxIVSize: int;
    var maxPlaintextPlusSize: int;
    var maxRecordSize: int;
    var minCertPlaintextSize: int;
    var maxMacSize: int;
    var maxDataSize: int;
    var maxPadding: int;
    var maxIVLength: int;
    var maxFragmentSize: int;
    var enableCBCProtection: boolean;
    var OVERFLOW_OF_INT08: int;
    var OVERFLOW_OF_INT16: int;
    var OVERFLOW_OF_INT24: int;
}

type sun.security.ssl.ExtendedMasterSecretExtension {
}

type sun.security.ssl.PskKeyExchangeModesExtension {
}

type sun.security.tools.KeyStoreUtil {
}

type sun.security.tools.PathList {
}

type sun.security.tools.keytool.Resources_zh_HK {
}

type sun.security.tools.keytool.ShowInfo {
}

type sun.security.tools.keytool.Resources_zh_TW {
}

type sun.security.tools.keytool.Pair {
    var fst: java.lang.Object;
    var snd: java.lang.Object;
}

type sun.security.tools.keytool.Resources_fr {
}

type sun.security.tools.keytool.Resources_es {
}

type sun.security.tools.keytool.Resources_zh_CN {
}

type sun.security.tools.keytool.Resources_pt_BR {
}

type sun.security.tools.keytool.CertAndKeyGen {
}

type sun.security.tools.keytool.Resources_de {
}

type sun.security.tools.keytool.Resources_ja {
}

type sun.security.tools.keytool.Resources_ko {
}

type sun.security.tools.keytool.Main {
}

type sun.security.tools.keytool.Resources_sv {
}

type sun.security.tools.keytool.Resources {
}

type sun.security.tools.keytool.Resources_it {
}

type sun.security.validator.PKIXValidator {
    var TYPE_SIMPLE: java.lang.String;
    var TYPE_PKIX: java.lang.String;
    var VAR_GENERIC: java.lang.String;
    var VAR_CODE_SIGNING: java.lang.String;
    var VAR_JCE_SIGNING: java.lang.String;
    var VAR_TLS_CLIENT: java.lang.String;
    var VAR_TLS_SERVER: java.lang.String;
    var VAR_TSA_SERVER: java.lang.String;
    var VAR_PLUGIN_CODE_SIGNING: java.lang.String;
}

type sun.security.validator.SymantecTLSPolicy {
}

type sun.security.validator.ValidatorException {
    var T_NO_TRUST_ANCHOR: java.lang.Object;
    var T_EE_EXTENSIONS: java.lang.Object;
    var T_CA_EXTENSIONS: java.lang.Object;
    var T_CERT_EXPIRED: java.lang.Object;
    var T_SIGNATURE_ERROR: java.lang.Object;
    var T_NAME_CHAINING: java.lang.Object;
    var T_ALGORITHM_DISABLED: java.lang.Object;
    var T_UNTRUSTED_CERT: java.lang.Object;
}

type sun.security.validator.Validator {
    var TYPE_SIMPLE: java.lang.String;
    var TYPE_PKIX: java.lang.String;
    var VAR_GENERIC: java.lang.String;
    var VAR_CODE_SIGNING: java.lang.String;
    var VAR_JCE_SIGNING: java.lang.String;
    var VAR_TLS_CLIENT: java.lang.String;
    var VAR_TLS_SERVER: java.lang.String;
    var VAR_TSA_SERVER: java.lang.String;
    var VAR_PLUGIN_CODE_SIGNING: java.lang.String;
}

type sun.security.validator.TrustStoreUtil {
}

type sun.security.validator.EndEntityChecker {
}

enum sun.security.validator.CADistrustPolicy {
    SYMANTEC_TLS = 0;
}

type sun.security.validator.SimpleValidator {
    var TYPE_SIMPLE: java.lang.String;
    var TYPE_PKIX: java.lang.String;
    var VAR_GENERIC: java.lang.String;
    var VAR_CODE_SIGNING: java.lang.String;
    var VAR_JCE_SIGNING: java.lang.String;
    var VAR_TLS_CLIENT: java.lang.String;
    var VAR_TLS_SERVER: java.lang.String;
    var VAR_TSA_SERVER: java.lang.String;
    var VAR_PLUGIN_CODE_SIGNING: java.lang.String;
}

type sun.security.pkcs12.PKCS12KeyStore {
    var VERSION_3: int;
}

type sun.security.pkcs12.MacData {
}

type sun.security.util.ECUtil {
}

type sun.security.util.ByteArrayTagOrder {
}

type sun.security.util.ConstraintsParameters {
}

type sun.security.util.UntrustedCertificates {
}

enum sun.security.util.KnownOIDs {
    CommonName = 0;
    Surname = 1;
    SerialNumber = 2;
    CountryName = 3;
    LocalityName = 4;
    StateName = 5;
    StreetAddress = 6;
    OrgName = 7;
    OrgUnitName = 8;
    Title = 9;
    GivenName = 10;
    Initials = 11;
    GenerationQualifier = 12;
    DNQualifier = 13;
    SubjectDirectoryAttributes = 14;
    SubjectKeyID = 15;
    KeyUsage = 16;
    PrivateKeyUsage = 17;
    SubjectAlternativeName = 18;
    IssuerAlternativeName = 19;
    BasicConstraints = 20;
    CRLNumber = 21;
    ReasonCode = 22;
    HoldInstructionCode = 23;
    InvalidityDate = 24;
    DeltaCRLIndicator = 25;
    IssuingDistributionPoint = 26;
    CertificateIssuer = 27;
    NameConstraints = 28;
    CRLDistributionPoints = 29;
    CertificatePolicies = 30;
    CE_CERT_POLICIES_ANY = 31;
    PolicyMappings = 32;
    AuthorityKeyID = 33;
    PolicyConstraints = 34;
    extendedKeyUsage = 35;
    anyExtendedKeyUsage = 36;
    FreshestCRL = 37;
    InhibitAnyPolicy = 38;
    AuthInfoAccess = 39;
    SubjectInfoAccess = 40;
    serverAuth = 41;
    clientAuth = 42;
    codeSigning = 43;
    emailProtection = 44;
    ipsecEndSystem = 45;
    ipsecTunnel = 46;
    ipsecUser = 47;
    KP_TimeStamping = 48;
    OCSPSigning = 49;
    OCSP = 50;
    OCSPBasicResponse = 51;
    OCSPNonceExt = 52;
    OCSPNoCheck = 53;
    caIssuers = 54;
    AD_TimeStamping = 55;
    caRepository = 56;
    AES = 57;
    AES_128$ECB$NoPadding = 58;
    AES_128$CBC$NoPadding = 59;
    AES_128$OFB$NoPadding = 60;
    AES_128$CFB$NoPadding = 61;
    AES_128$KW$NoPadding = 62;
    AES_128$GCM$NoPadding = 63;
    AES_128$KWP$NoPadding = 64;
    AES_192$ECB$NoPadding = 65;
    AES_192$CBC$NoPadding = 66;
    AES_192$OFB$NoPadding = 67;
    AES_192$CFB$NoPadding = 68;
    AES_192$KW$NoPadding = 69;
    AES_192$GCM$NoPadding = 70;
    AES_192$KWP$NoPadding = 71;
    AES_256$ECB$NoPadding = 72;
    AES_256$CBC$NoPadding = 73;
    AES_256$OFB$NoPadding = 74;
    AES_256$CFB$NoPadding = 75;
    AES_256$KW$NoPadding = 76;
    AES_256$GCM$NoPadding = 77;
    AES_256$KWP$NoPadding = 78;
    SHA_256 = 79;
    SHA_384 = 80;
    SHA_512 = 81;
    SHA_224 = 82;
    SHA_512$224 = 83;
    SHA_512$256 = 84;
    SHA3_224 = 85;
    SHA3_256 = 86;
    SHA3_384 = 87;
    SHA3_512 = 88;
    SHAKE128 = 89;
    SHAKE256 = 90;
    HmacSHA3_224 = 91;
    HmacSHA3_256 = 92;
    HmacSHA3_384 = 93;
    HmacSHA3_512 = 94;
    SHAKE128_LEN = 95;
    SHAKE256_LEN = 96;
    SHA224withDSA = 97;
    SHA256withDSA = 98;
    SHA384withDSA = 99;
    SHA512withDSA = 100;
    SHA3_224withDSA = 101;
    SHA3_256withDSA = 102;
    SHA3_384withDSA = 103;
    SHA3_512withDSA = 104;
    SHA3_224withECDSA = 105;
    SHA3_256withECDSA = 106;
    SHA3_384withECDSA = 107;
    SHA3_512withECDSA = 108;
    SHA3_224withRSA = 109;
    SHA3_256withRSA = 110;
    SHA3_384withRSA = 111;
    SHA3_512withRSA = 112;
    PKCS1 = 113;
    RSA = 114;
    MD2withRSA = 115;
    MD5withRSA = 116;
    SHA1withRSA = 117;
    OAEP = 118;
    MGF1 = 119;
    PSpecified = 120;
    RSASSA_PSS = 121;
    SHA256withRSA = 122;
    SHA384withRSA = 123;
    SHA512withRSA = 124;
    SHA224withRSA = 125;
    SHA512$224withRSA = 126;
    SHA512$256withRSA = 127;
    DiffieHellman = 128;
    PBEWithMD5AndDES = 129;
    PBEWithMD5AndRC2 = 130;
    PBEWithSHA1AndDES = 131;
    PBEWithSHA1AndRC2 = 132;
    PBKDF2WithHmacSHA1 = 133;
    PBES2 = 134;
    PKCS7 = 135;
    Data = 136;
    SignedData = 137;
    JDK_OLD_Data = 138;
    JDK_OLD_SignedData = 139;
    EnvelopedData = 140;
    SignedAndEnvelopedData = 141;
    DigestedData = 142;
    EncryptedData = 143;
    EmailAddress = 144;
    UnstructuredName = 145;
    ContentType = 146;
    MessageDigest = 147;
    SigningTime = 148;
    CounterSignature = 149;
    ChallengePassword = 150;
    UnstructuredAddress = 151;
    ExtendedCertificateAttributes = 152;
    IssuerAndSerialNumber = 153;
    ExtensionRequest = 154;
    SMIMECapability = 155;
    TimeStampTokenInfo = 156;
    SigningCertificate = 157;
    SignatureTimestampToken = 158;
    CHACHA20_POLY1305 = 159;
    FriendlyName = 160;
    LocalKeyID = 161;
    CertTypeX509 = 162;
    CMSAlgorithmProtection = 163;
    PBEWithSHA1AndRC4_128 = 164;
    PBEWithSHA1AndRC4_40 = 165;
    PBEWithSHA1AndDESede = 166;
    PBEWithSHA1AndRC2_128 = 167;
    PBEWithSHA1AndRC2_40 = 168;
    PKCS8ShroudedKeyBag = 169;
    CertBag = 170;
    SecretBag = 171;
    MD2 = 172;
    MD5 = 173;
    HmacSHA1 = 174;
    HmacSHA224 = 175;
    HmacSHA256 = 176;
    HmacSHA384 = 177;
    HmacSHA512 = 178;
    HmacSHA512$224 = 179;
    HmacSHA512$256 = 180;
    RC2$CBC$PKCS5Padding = 181;
    ARCFOUR = 182;
    DESede$CBC$NoPadding = 183;
    RC5$CBC$PKCS5Padding = 184;
    DSA = 185;
    SHA1withDSA = 186;
    EC = 187;
    c2tnb191v1 = 188;
    c2tnb191v2 = 189;
    c2tnb191v3 = 190;
    c2tnb239v1 = 191;
    c2tnb239v2 = 192;
    c2tnb239v3 = 193;
    c2tnb359v1 = 194;
    c2tnb431r1 = 195;
    secp192r1 = 196;
    prime192v2 = 197;
    prime192v3 = 198;
    prime239v1 = 199;
    prime239v2 = 200;
    prime239v3 = 201;
    secp256r1 = 202;
    SHA1withECDSA = 203;
    SHA224withECDSA = 204;
    SHA256withECDSA = 205;
    SHA384withECDSA = 206;
    SHA512withECDSA = 207;
    SpecifiedSHA2withECDSA = 208;
    X942_DH = 209;
    brainpoolP160r1 = 210;
    brainpoolP192r1 = 211;
    brainpoolP224r1 = 212;
    brainpoolP256r1 = 213;
    brainpoolP320r1 = 214;
    brainpoolP384r1 = 215;
    brainpoolP512r1 = 216;
    sect163k1 = 217;
    sect163r1 = 218;
    sect239k1 = 219;
    sect113r1 = 220;
    sect113r2 = 221;
    secp112r1 = 222;
    secp112r2 = 223;
    secp160r1 = 224;
    secp160k1 = 225;
    secp256k1 = 226;
    sect163r2 = 227;
    sect283k1 = 228;
    sect283r1 = 229;
    sect131r1 = 230;
    sect131r2 = 231;
    sect193r1 = 232;
    sect193r2 = 233;
    sect233k1 = 234;
    sect233r1 = 235;
    secp128r1 = 236;
    secp128r2 = 237;
    secp160r2 = 238;
    secp192k1 = 239;
    secp224k1 = 240;
    secp224r1 = 241;
    secp384r1 = 242;
    secp521r1 = 243;
    sect409k1 = 244;
    sect409r1 = 245;
    sect571k1 = 246;
    sect571r1 = 247;
    ECDH = 248;
    OIW_DES_CBC = 249;
    OIW_DSA = 250;
    OIW_JDK_SHA1withDSA = 251;
    OIW_SHA1withRSA_Odd = 252;
    DESede = 253;
    SHA_1 = 254;
    OIW_SHA1withDSA = 255;
    OIW_SHA1withRSA = 256;
    X25519 = 257;
    X448 = 258;
    Ed25519 = 259;
    Ed448 = 260;
    UCL_UserID = 261;
    UCL_DomainComponent = 262;
    NETSCAPE_CertType = 263;
    NETSCAPE_CertSequence = 264;
    NETSCAPE_ExportApproved = 265;
    ORACLE_TrustedKeyUsage = 266;
    ITUX509_RSA = 267;
    SkipIPAddress = 268;
    JAVASOFT_JDKKeyProtector = 269;
    JAVASOFT_JCEKeyProtector = 270;
    MICROSOFT_ExportApproved = 271;
}

type sun.security.util.Event {
}

type sun.security.util.ManifestDigester {
    var MF_MAIN_ATTRS: java.lang.String;
}

type sun.security.util.GCMParameters {
}

type sun.security.util.SecurityProperties {
    var INCLUDE_JAR_NAME_IN_EXCEPTIONS: boolean;
}

type sun.security.util.Resources_zh_HK {
}

type sun.security.util.DisabledAlgorithmConstraints {
    var PROPERTY_CERTPATH_DISABLED_ALGS: java.lang.String;
    var PROPERTY_SECURITY_LEGACY_ALGS: java.lang.String;
    var PROPERTY_TLS_DISABLED_ALGS: java.lang.String;
    var PROPERTY_JAR_DISABLED_ALGS: java.lang.String;
}

type sun.security.util.SecurityProviderConstants {
    var DEF_DSA_KEY_SIZE: int;
    var DEF_RSA_KEY_SIZE: int;
    var DEF_RSASSA_PSS_KEY_SIZE: int;
    var DEF_DH_KEY_SIZE: int;
    var DEF_EC_KEY_SIZE: int;
    var DEF_ED_KEY_SIZE: int;
    var DEF_XEC_KEY_SIZE: int;
}

type sun.security.util.Length {
}

type sun.security.util.RegisteredDomain {
}

type sun.security.util.NamedCurve {
}

type sun.security.util.FilePermCompat {
    var nb: boolean;
    var compat: boolean;
}

type sun.security.util.LegacyAlgorithmConstraints {
    var PROPERTY_TLS_LEGACY_ALGS: java.lang.String;
}

type sun.security.util.ByteArrayLexOrder {
}

type sun.security.util.Resources_zh_TW {
}

type sun.security.util.AuthResources_fr {
}

type sun.security.util.KeyStoreDelegator {
}

type sun.security.util.AbstractAlgorithmConstraints {
}

type sun.security.util.SecurityConstants {
    var FILE_DELETE_ACTION: java.lang.String;
    var FILE_EXECUTE_ACTION: java.lang.String;
    var FILE_READ_ACTION: java.lang.String;
    var FILE_WRITE_ACTION: java.lang.String;
    var FILE_READLINK_ACTION: java.lang.String;
    var SOCKET_RESOLVE_ACTION: java.lang.String;
    var SOCKET_CONNECT_ACTION: java.lang.String;
    var SOCKET_LISTEN_ACTION: java.lang.String;
    var SOCKET_ACCEPT_ACTION: java.lang.String;
    var SOCKET_CONNECT_ACCEPT_ACTION: java.lang.String;
    var PROPERTY_RW_ACTION: java.lang.String;
    var PROPERTY_READ_ACTION: java.lang.String;
    var PROPERTY_WRITE_ACTION: java.lang.String;
    var ALL_PERMISSION: java.security.AllPermission;
    var SPECIFY_HANDLER_PERMISSION: java.net.NetPermission;
    var SET_PROXYSELECTOR_PERMISSION: java.net.NetPermission;
    var GET_PROXYSELECTOR_PERMISSION: java.net.NetPermission;
    var SET_COOKIEHANDLER_PERMISSION: java.net.NetPermission;
    var GET_COOKIEHANDLER_PERMISSION: java.net.NetPermission;
    var SET_RESPONSECACHE_PERMISSION: java.net.NetPermission;
    var GET_RESPONSECACHE_PERMISSION: java.net.NetPermission;
    var SET_SOCKETIMPL_PERMISSION: java.net.NetPermission;
    var CREATE_CLASSLOADER_PERMISSION: java.lang.RuntimePermission;
    var CHECK_MEMBER_ACCESS_PERMISSION: java.lang.RuntimePermission;
    var MODIFY_THREAD_PERMISSION: java.lang.RuntimePermission;
    var MODIFY_THREADGROUP_PERMISSION: java.lang.RuntimePermission;
    var GET_PD_PERMISSION: java.lang.RuntimePermission;
    var GET_CLASSLOADER_PERMISSION: java.lang.RuntimePermission;
    var STOP_THREAD_PERMISSION: java.lang.RuntimePermission;
    var GET_STACK_TRACE_PERMISSION: java.lang.RuntimePermission;
    var SUBCLASS_IMPLEMENTATION_PERMISSION: java.lang.RuntimePermission;
    var CREATE_ACC_PERMISSION: java.security.SecurityPermission;
    var GET_COMBINER_PERMISSION: java.security.SecurityPermission;
    var GET_POLICY_PERMISSION: java.security.SecurityPermission;
    var LOCAL_LISTEN_PERMISSION: java.net.SocketPermission;
    var PROVIDER_VER: java.lang.String;
    var ACCESS_PERMISSION: java.lang.reflect.ReflectPermission;
    var REFLECTION_FACTORY_ACCESS_PERMISSION: java.lang.RuntimePermission;
}

type sun.security.util.DerInputStream {
}

type sun.security.util.PermissionFactory {
}

type sun.security.util.LazyCodeSourcePermissionCollection {
}

type sun.security.util.BitArray {
}

type sun.security.util.AuthResources_zh_TW {
}

type sun.security.util.DomainName {
}

type sun.security.util.ECKeySizeParameterSpec {
}

type sun.security.util.FilePaths {
}

type sun.security.util.DerValue {
    var TAG_UNIVERSAL: byte;
    var TAG_APPLICATION: byte;
    var TAG_CONTEXT: byte;
    var TAG_PRIVATE: byte;
    var tag_Boolean: byte;
    var tag_Integer: byte;
    var tag_BitString: byte;
    var tag_OctetString: byte;
    var tag_Null: byte;
    var tag_ObjectId: byte;
    var tag_Enumerated: byte;
    var tag_UTF8String: byte;
    var tag_PrintableString: byte;
    var tag_T61String: byte;
    var tag_IA5String: byte;
    var tag_UtcTime: byte;
    var tag_GeneralizedTime: byte;
    var tag_GeneralString: byte;
    var tag_UniversalString: byte;
    var tag_BMPString: byte;
    var tag_Sequence: byte;
    var tag_SequenceOf: byte;
    var tag_Set: byte;
    var tag_SetOf: byte;
    var tag: byte;
    var data: sun.security.util.DerInputStream;
}

type sun.security.util.AuthResources_zh_HK {
}

type sun.security.util.NullCache {
}

type sun.security.util.ManifestEntryVerifier {
}

type sun.security.util.ECParameters {
}

type sun.security.util.MemoryCache {
}

type sun.security.util.SignatureFileVerifier {
}

type sun.security.util.math.intpoly.P521OrderField {
    var MODULUS: java.math.BigInteger;
}

type sun.security.util.math.intpoly.IntegerPolynomial448 {
    var MODULUS: java.math.BigInteger;
}

type sun.security.util.math.intpoly.IntegerPolynomialModBinP {
}

type sun.security.util.math.intpoly.IntegerPolynomialP384 {
    var MODULUS: java.math.BigInteger;
}

type sun.security.util.math.intpoly.IntegerPolynomial1305 {
}

type sun.security.util.math.intpoly.Curve25519OrderField {
    var MODULUS: java.math.BigInteger;
}

type sun.security.util.math.intpoly.P256OrderField {
    var MODULUS: java.math.BigInteger;
}

type sun.security.util.math.intpoly.IntegerPolynomial25519 {
    var MODULUS: java.math.BigInteger;
}

type sun.security.util.math.intpoly.IntegerPolynomialP256 {
    var MODULUS: java.math.BigInteger;
}

type sun.security.util.math.intpoly.Curve448OrderField {
    var MODULUS: java.math.BigInteger;
}

type sun.security.util.math.intpoly.IntegerPolynomial {
}

type sun.security.util.math.intpoly.P384OrderField {
    var MODULUS: java.math.BigInteger;
}

type sun.security.util.math.intpoly.IntegerPolynomialP521 {
    var MODULUS: java.math.BigInteger;
}

type sun.security.util.math.IntegerModuloP {
}

type sun.security.util.math.ImmutableIntegerModuloP {
}

type sun.security.util.math.IntegerFieldModuloP {
}

type sun.security.util.math.MutableIntegerModuloP {
}

type sun.security.util.math.SmallValue {
}

type sun.security.util.Resources_fr {
}

type sun.security.util.DerIndefLenConverter {
}

type sun.security.util.ResourcesMgr {
}

type sun.security.util.Resources_es {
}

type sun.security.util.Password {
}

type sun.security.util.ObjectIdentifier {
}

type sun.security.util.Resources_zh_CN {
}

type sun.security.util.SignatureUtil {
}

type sun.security.util.AuthResources_ko {
}

type sun.security.util.HexDumpEncoder {
}

type sun.security.util.Resources_pt_BR {
}

type sun.security.util.HostnameChecker {
    var TYPE_TLS: byte;
    var TYPE_LDAP: byte;
}

type sun.security.util.JarConstraintsParameters {
}

type sun.security.util.PropertyExpander {
}

type sun.security.util.AlgorithmDecomposer {
}

type sun.security.util.AuthResources_sv {
}

type sun.security.util.IOUtils {
}

type sun.security.util.DerEncoder {
}

type sun.security.util.Pem {
}

type sun.security.util.ArrayUtil {
}

type sun.security.util.Resources_de {
}

type sun.security.util.AnchorCertificates {
}

type sun.security.util.Cache {
}

type sun.security.util.AuthResources_it {
}

type sun.security.util.Resources_ja {
}

type sun.security.util.KeyUtil {
}

type sun.security.util.PolicyUtil {
}

type sun.security.util.Resources_ko {
}

type sun.security.util.LocalizedMessage {
}

type sun.security.util.AuthResources {
}

type sun.security.util.AuthResources_es {
}

type sun.security.util.Debug {
}

type sun.security.util.Resources_sv {
}

type sun.security.util.PendingException {
}

type sun.security.util.MessageDigestSpi2 {
}

type sun.security.util.CurveDB {
}

type sun.security.util.Resources {
}

type sun.security.util.DerOutputStream {
}

type sun.security.util.AuthResources_pt_BR {
}

type sun.security.util.AuthResources_zh_CN {
}

type sun.security.util.Resources_it {
}

type sun.security.util.AuthResources_ja {
}

type sun.security.util.ConsoleCallbackHandler {
}

type sun.security.util.AuthResources_de {
}

type sun.security.rsa.RSAPrivateKeyImpl {
    var serialVersionUID: long;
}

type sun.security.rsa.RSAPSSSignature {
}

type sun.security.rsa.RSAKeyPairGenerator {
}

type sun.security.rsa.RSAKeyFactory {
    var MIN_MODLEN: int;
    var MAX_MODLEN: int;
    var MAX_MODLEN_RESTRICT_EXP: int;
    var MAX_RESTRICTED_EXPLEN: int;
}

type sun.security.rsa.PSSParameters {
}

type sun.security.rsa.RSASignature {
}

type sun.security.rsa.RSAPrivateCrtKeyImpl {
    var serialVersionUID: long;
}

type sun.security.rsa.RSAPublicKeyImpl {
    var serialVersionUID: long;
}

type sun.security.rsa.RSAUtil {
}

type sun.security.rsa.MGF1 {
}

type sun.security.rsa.SunRsaSignEntries {
}

type sun.security.rsa.RSACore {
}

type sun.security.rsa.SunRsaSign {
}

type sun.security.rsa.RSAPadding {
    var PAD_BLOCKTYPE_1: int;
    var PAD_BLOCKTYPE_2: int;
    var PAD_NONE: int;
    var PAD_OAEP_MGF1: int;
}

type sun.security.internal.spec.TlsMasterSecretParameterSpec {
}

type sun.security.internal.spec.TlsPrfParameterSpec {
}

type sun.security.internal.spec.TlsKeyMaterialParameterSpec {
}

type sun.security.internal.spec.TlsRsaPremasterSecretParameterSpec {
}

type sun.security.internal.spec.TlsKeyMaterialSpec {
    var serialVersionUID: long;
}

type sun.security.internal.interfaces.TlsMasterSecret {
    var serialVersionUID: long;
}

type sun.security.provider.HashDrbg {
}

type sun.security.provider.DSAKeyPairGenerator {
}

type sun.security.provider.MD2 {
}

type sun.security.provider.KeyProtector {
}

type sun.security.provider.certpath.X509CertPath {
}

type sun.security.provider.certpath.AdjacencyList {
}

type sun.security.provider.certpath.IndexedCollectionCertStore {
}

type sun.security.provider.certpath.RevocationChecker {
}

type sun.security.provider.certpath.SunCertPathBuilderResult {
}

type sun.security.provider.certpath.AdaptableX509CertSelector {
}

type sun.security.provider.certpath.ssl.SSLServerCertStore {
}

type sun.security.provider.certpath.BasicChecker {
}

type sun.security.provider.certpath.OCSPNonceExtension {
}

type sun.security.provider.certpath.PKIXCertPathValidator {
}

type sun.security.provider.certpath.PolicyChecker {
}

type sun.security.provider.certpath.OCSPResponse {
}

type sun.security.provider.certpath.ConstraintsChecker {
}

type sun.security.provider.certpath.ForwardState {
}

type sun.security.provider.certpath.OCSP {
}

type sun.security.provider.certpath.CollectionCertStore {
}

type sun.security.provider.certpath.SunCertPathBuilder {
}

type sun.security.provider.certpath.CertId {
}

type sun.security.provider.certpath.UntrustedChecker {
}

type sun.security.provider.certpath.SunCertPathBuilderException {
}

type sun.security.provider.certpath.X509CertificatePair {
}

type sun.security.provider.certpath.Builder {
}

type sun.security.provider.certpath.URICertStore {
}

type sun.security.provider.certpath.State {
}

type sun.security.provider.certpath.KeyChecker {
}

type sun.security.provider.certpath.PKIXExtendedParameters {
}

type sun.security.provider.certpath.AlgorithmChecker {
}

type sun.security.provider.certpath.PKIX {
}

type sun.security.provider.certpath.PKIXMasterCertPathValidator {
}

type sun.security.provider.certpath.CertPathHelper {
}

type sun.security.provider.certpath.CertPathConstraintsParameters {
}

type sun.security.provider.certpath.OCSPRequest {
}

type sun.security.provider.certpath.DistributionPointFetcher {
}

type sun.security.provider.certpath.Vertex {
}

type sun.security.provider.certpath.ResponderId {
}

type sun.security.provider.certpath.PolicyNodeImpl {
}

type sun.security.provider.certpath.BuildStep {
    var POSSIBLE: int;
    var BACK: int;
    var FOLLOW: int;
    var FAIL: int;
    var SUCCEED: int;
}

type sun.security.provider.certpath.ForwardBuilder {
}

type sun.security.provider.PolicyParser {
}

type sun.security.provider.SeedGenerator {
}

type sun.security.provider.PolicySpiFile {
}

type sun.security.provider.MD4 {
}

type sun.security.provider.ByteArrayAccess {
}

type sun.security.provider.EntropySource {
}

type sun.security.provider.DigestBase {
}

type sun.security.provider.DSAParameterGenerator {
}

type sun.security.provider.DSAPublicKeyImpl {
    var serialVersionUID: long;
}

type sun.security.provider.DSA {
}

type sun.security.provider.SHAKE256 {
}

type sun.security.provider.JavaKeyStore {
}

type sun.security.provider.MoreDrbgParameters {
}

type sun.security.provider.NativePRNG {
}

type sun.security.provider.CtrDrbg {
}

type sun.security.provider.DSAPrivateKey {
    var serialVersionUID: long;
}

type sun.security.provider.ParameterCache {
}

type sun.security.provider.AbstractDrbg {
}

type sun.security.provider.MD5 {
}

type sun.security.provider.SecureRandom {
}

type sun.security.provider.SHA {
}

type sun.security.provider.VerificationProvider {
}

type sun.security.provider.AbstractHashDrbg {
}

type sun.security.provider.DSAKeyFactory {
}

type sun.security.provider.SHA3 {
}

type sun.security.provider.DRBG {
}

type sun.security.provider.HmacDrbg {
}

type sun.security.provider.SubjectCodeSource {
}

type sun.security.provider.SunEntries {
    var DEF_SECURE_RANDOM_ALGO: java.lang.String;
}

type sun.security.provider.SHA5 {
}

type sun.security.provider.NativeSeedGenerator {
}

type sun.security.provider.DSAPublicKey {
    var serialVersionUID: long;
}

type sun.security.provider.SHA2 {
}

type sun.security.provider.Sun {
}

type sun.security.provider.ConfigFile {
}

type sun.security.provider.DSAParameters {
}

type sun.security.provider.PolicyFile {
    var UNSUPPORTED_EMPTY_COLLECTION: java.security.PermissionCollection;
}

type sun.security.provider.FileInputStreamPool {
}

type sun.security.provider.X509Factory {
    var BEGIN_CERT: java.lang.String;
    var END_CERT: java.lang.String;
}

type sun.security.provider.DomainKeyStore {
}

type sun.security.x509.SubjectInfoAccessExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var DESCRIPTIONS: java.lang.String;
}

type sun.security.x509.NetscapeCertTypeExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var SSL_CLIENT: java.lang.String;
    var SSL_SERVER: java.lang.String;
    var S_MIME: java.lang.String;
    var OBJECT_SIGNING: java.lang.String;
    var SSL_CA: java.lang.String;
    var S_MIME_CA: java.lang.String;
    var OBJECT_SIGNING_CA: java.lang.String;
    var NetscapeCertType_Id: sun.security.util.ObjectIdentifier;
}

type sun.security.x509.RDN {
}

type sun.security.x509.AlgorithmId {
    var MD2_oid: sun.security.util.ObjectIdentifier;
    var MD5_oid: sun.security.util.ObjectIdentifier;
    var SHA_oid: sun.security.util.ObjectIdentifier;
    var SHA224_oid: sun.security.util.ObjectIdentifier;
    var SHA256_oid: sun.security.util.ObjectIdentifier;
    var SHA384_oid: sun.security.util.ObjectIdentifier;
    var SHA512_oid: sun.security.util.ObjectIdentifier;
    var SHA512_224_oid: sun.security.util.ObjectIdentifier;
    var SHA512_256_oid: sun.security.util.ObjectIdentifier;
    var SHA3_224_oid: sun.security.util.ObjectIdentifier;
    var SHA3_256_oid: sun.security.util.ObjectIdentifier;
    var SHA3_384_oid: sun.security.util.ObjectIdentifier;
    var SHA3_512_oid: sun.security.util.ObjectIdentifier;
    var DSA_oid: sun.security.util.ObjectIdentifier;
    var EC_oid: sun.security.util.ObjectIdentifier;
    var RSAEncryption_oid: sun.security.util.ObjectIdentifier;
    var RSASSA_PSS_oid: sun.security.util.ObjectIdentifier;
    var MGF1_oid: sun.security.util.ObjectIdentifier;
    var ed25519_oid: sun.security.util.ObjectIdentifier;
    var ed448_oid: sun.security.util.ObjectIdentifier;
    var x25519_oid: sun.security.util.ObjectIdentifier;
    var x448_oid: sun.security.util.ObjectIdentifier;
    var SHA224withECDSA_oid: sun.security.util.ObjectIdentifier;
    var SHA256withECDSA_oid: sun.security.util.ObjectIdentifier;
    var SHA384withECDSA_oid: sun.security.util.ObjectIdentifier;
    var SHA512withECDSA_oid: sun.security.util.ObjectIdentifier;
}

type sun.security.x509.CertParseError {
    var verf_INVALID_SIG: int;
    var verf_INVALID_REVOKED: int;
    var verf_INVALID_NOTBEFORE: int;
    var verf_INVALID_EXPIRED: int;
    var verf_CA_UNTRUSTED: int;
    var verf_CHAIN_LENGTH: int;
    var verf_PARSE_ERROR: int;
    var err_CONSTRUCTION: int;
    var err_INVALID_PUBLIC_KEY: int;
    var err_INVALID_VERSION: int;
    var err_INVALID_FORMAT: int;
    var err_ENCODING: int;
}

type sun.security.x509.CertificateVersion {
    var V1: int;
    var V2: int;
    var V3: int;
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var VERSION: java.lang.String;
}

type sun.security.x509.PolicyInformation {
    var NAME: java.lang.String;
    var ID: java.lang.String;
    var QUALIFIERS: java.lang.String;
}

type sun.security.x509.NameConstraintsExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var PERMITTED_SUBTREES: java.lang.String;
    var EXCLUDED_SUBTREES: java.lang.String;
}

type sun.security.x509.GeneralNames {
}

type sun.security.x509.OIDMap {
}

type sun.security.x509.CertificateSerialNumber {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var NUMBER: java.lang.String;
}

type sun.security.x509.CertificateSubjectName {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var DN_NAME: java.lang.String;
    var DN_PRINCIPAL: java.lang.String;
}

type sun.security.x509.PrivateKeyUsageExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var NOT_BEFORE: java.lang.String;
    var NOT_AFTER: java.lang.String;
}

type sun.security.x509.CertificateIssuerName {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var DN_NAME: java.lang.String;
    var DN_PRINCIPAL: java.lang.String;
}

type sun.security.x509.AttributeNameEnumeration {
}

type sun.security.x509.EDIPartyName {
    var NAME_ANY: int;
    var NAME_RFC822: int;
    var NAME_DNS: int;
    var NAME_X400: int;
    var NAME_DIRECTORY: int;
    var NAME_EDI: int;
    var NAME_URI: int;
    var NAME_IP: int;
    var NAME_OID: int;
    var NAME_DIFF_TYPE: int;
    var NAME_MATCH: int;
    var NAME_NARROWS: int;
    var NAME_WIDENS: int;
    var NAME_SAME_TYPE: int;
}

type sun.security.x509.KeyUsageExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var DIGITAL_SIGNATURE: java.lang.String;
    var NON_REPUDIATION: java.lang.String;
    var KEY_ENCIPHERMENT: java.lang.String;
    var DATA_ENCIPHERMENT: java.lang.String;
    var KEY_AGREEMENT: java.lang.String;
    var KEY_CERTSIGN: java.lang.String;
    var CRL_SIGN: java.lang.String;
    var ENCIPHER_ONLY: java.lang.String;
    var DECIPHER_ONLY: java.lang.String;
}

type sun.security.x509.ReasonFlags {
    var UNUSED: java.lang.String;
    var KEY_COMPROMISE: java.lang.String;
    var CA_COMPROMISE: java.lang.String;
    var AFFILIATION_CHANGED: java.lang.String;
    var SUPERSEDED: java.lang.String;
    var CESSATION_OF_OPERATION: java.lang.String;
    var CERTIFICATE_HOLD: java.lang.String;
    var PRIVILEGE_WITHDRAWN: java.lang.String;
    var AA_COMPROMISE: java.lang.String;
}

type sun.security.x509.DNSName {
    var NAME_ANY: int;
    var NAME_RFC822: int;
    var NAME_DNS: int;
    var NAME_X400: int;
    var NAME_DIRECTORY: int;
    var NAME_EDI: int;
    var NAME_URI: int;
    var NAME_IP: int;
    var NAME_OID: int;
    var NAME_DIFF_TYPE: int;
    var NAME_MATCH: int;
    var NAME_NARROWS: int;
    var NAME_WIDENS: int;
    var NAME_SAME_TYPE: int;
}

type sun.security.x509.AVA {
}

type sun.security.x509.BasicConstraintsExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var IS_CA: java.lang.String;
    var PATH_LEN: java.lang.String;
}

type sun.security.x509.CertificatePolicyMap {
}

type sun.security.x509.CertificateValidity {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var NOT_BEFORE: java.lang.String;
    var NOT_AFTER: java.lang.String;
}

type sun.security.x509.CertificatePoliciesExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var POLICIES: java.lang.String;
}

type sun.security.x509.CertificateIssuerExtension {
    var NAME: java.lang.String;
    var ISSUER: java.lang.String;
}

type sun.security.x509.CRLExtensions {
}

type sun.security.x509.UniqueIdentity {
}

type sun.security.x509.OIDName {
    var NAME_ANY: int;
    var NAME_RFC822: int;
    var NAME_DNS: int;
    var NAME_X400: int;
    var NAME_DIRECTORY: int;
    var NAME_EDI: int;
    var NAME_URI: int;
    var NAME_IP: int;
    var NAME_OID: int;
    var NAME_DIFF_TYPE: int;
    var NAME_MATCH: int;
    var NAME_NARROWS: int;
    var NAME_WIDENS: int;
    var NAME_SAME_TYPE: int;
}

type sun.security.x509.UnparseableExtension {
}

type sun.security.x509.OtherName {
    var NAME_ANY: int;
    var NAME_RFC822: int;
    var NAME_DNS: int;
    var NAME_X400: int;
    var NAME_DIRECTORY: int;
    var NAME_EDI: int;
    var NAME_URI: int;
    var NAME_IP: int;
    var NAME_OID: int;
    var NAME_DIFF_TYPE: int;
    var NAME_MATCH: int;
    var NAME_NARROWS: int;
    var NAME_WIDENS: int;
    var NAME_SAME_TYPE: int;
}

type sun.security.x509.X509CRLImpl {
}

type sun.security.x509.InvalidityDateExtension {
    var NAME: java.lang.String;
    var DATE: java.lang.String;
}

type sun.security.x509.AccessDescription {
    var Ad_OCSP_Id: sun.security.util.ObjectIdentifier;
    var Ad_CAISSUERS_Id: sun.security.util.ObjectIdentifier;
    var Ad_TIMESTAMPING_Id: sun.security.util.ObjectIdentifier;
    var Ad_CAREPOSITORY_Id: sun.security.util.ObjectIdentifier;
}

type sun.security.x509.CertificatePolicySet {
}

type sun.security.x509.URIName {
    var NAME_ANY: int;
    var NAME_RFC822: int;
    var NAME_DNS: int;
    var NAME_X400: int;
    var NAME_DIRECTORY: int;
    var NAME_EDI: int;
    var NAME_URI: int;
    var NAME_IP: int;
    var NAME_OID: int;
    var NAME_DIFF_TYPE: int;
    var NAME_MATCH: int;
    var NAME_NARROWS: int;
    var NAME_WIDENS: int;
    var NAME_SAME_TYPE: int;
}

type sun.security.x509.GeneralSubtrees {
}

type sun.security.x509.DistributionPointName {
}

type sun.security.x509.AlgIdDSA {
    var MD2_oid: sun.security.util.ObjectIdentifier;
    var MD5_oid: sun.security.util.ObjectIdentifier;
    var SHA_oid: sun.security.util.ObjectIdentifier;
    var SHA224_oid: sun.security.util.ObjectIdentifier;
    var SHA256_oid: sun.security.util.ObjectIdentifier;
    var SHA384_oid: sun.security.util.ObjectIdentifier;
    var SHA512_oid: sun.security.util.ObjectIdentifier;
    var SHA512_224_oid: sun.security.util.ObjectIdentifier;
    var SHA512_256_oid: sun.security.util.ObjectIdentifier;
    var SHA3_224_oid: sun.security.util.ObjectIdentifier;
    var SHA3_256_oid: sun.security.util.ObjectIdentifier;
    var SHA3_384_oid: sun.security.util.ObjectIdentifier;
    var SHA3_512_oid: sun.security.util.ObjectIdentifier;
    var DSA_oid: sun.security.util.ObjectIdentifier;
    var EC_oid: sun.security.util.ObjectIdentifier;
    var RSAEncryption_oid: sun.security.util.ObjectIdentifier;
    var RSASSA_PSS_oid: sun.security.util.ObjectIdentifier;
    var MGF1_oid: sun.security.util.ObjectIdentifier;
    var ed25519_oid: sun.security.util.ObjectIdentifier;
    var ed448_oid: sun.security.util.ObjectIdentifier;
    var x25519_oid: sun.security.util.ObjectIdentifier;
    var x448_oid: sun.security.util.ObjectIdentifier;
    var SHA224withECDSA_oid: sun.security.util.ObjectIdentifier;
    var SHA256withECDSA_oid: sun.security.util.ObjectIdentifier;
    var SHA384withECDSA_oid: sun.security.util.ObjectIdentifier;
    var SHA512withECDSA_oid: sun.security.util.ObjectIdentifier;
}

type sun.security.x509.AuthorityInfoAccessExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var DESCRIPTIONS: java.lang.String;
}

type sun.security.x509.SubjectKeyIdentifierExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var KEY_ID: java.lang.String;
}

type sun.security.x509.PolicyMappingsExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var MAP: java.lang.String;
}

type sun.security.x509.X509Key {
    var serialVersionUID: long;
}

type sun.security.x509.IssuerAlternativeNameExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var ISSUER_NAME: java.lang.String;
}

type sun.security.x509.SerialNumber {
}

type sun.security.x509.Extension {
}

type sun.security.x509.AuthorityKeyIdentifierExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var KEY_ID: java.lang.String;
    var AUTH_NAME: java.lang.String;
    var SERIAL_NUMBER: java.lang.String;
}

type sun.security.x509.PolicyConstraintsExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var REQUIRE: java.lang.String;
    var INHIBIT: java.lang.String;
}

type sun.security.x509.CertException {
    var verf_INVALID_SIG: int;
    var verf_INVALID_REVOKED: int;
    var verf_INVALID_NOTBEFORE: int;
    var verf_INVALID_EXPIRED: int;
    var verf_CA_UNTRUSTED: int;
    var verf_CHAIN_LENGTH: int;
    var verf_PARSE_ERROR: int;
    var err_CONSTRUCTION: int;
    var err_INVALID_PUBLIC_KEY: int;
    var err_INVALID_VERSION: int;
    var err_INVALID_FORMAT: int;
    var err_ENCODING: int;
}

type sun.security.x509.X400Address {
    var NAME_ANY: int;
    var NAME_RFC822: int;
    var NAME_DNS: int;
    var NAME_X400: int;
    var NAME_DIRECTORY: int;
    var NAME_EDI: int;
    var NAME_URI: int;
    var NAME_IP: int;
    var NAME_OID: int;
    var NAME_DIFF_TYPE: int;
    var NAME_MATCH: int;
    var NAME_NARROWS: int;
    var NAME_WIDENS: int;
    var NAME_SAME_TYPE: int;
}

type sun.security.x509.FreshestCRLExtension {
    var NAME: java.lang.String;
    var IDENT: java.lang.String;
    var POINTS: java.lang.String;
}

type sun.security.x509.DistributionPoint {
    var KEY_COMPROMISE: int;
    var CA_COMPROMISE: int;
    var AFFILIATION_CHANGED: int;
    var SUPERSEDED: int;
    var CESSATION_OF_OPERATION: int;
    var CERTIFICATE_HOLD: int;
    var PRIVILEGE_WITHDRAWN: int;
    var AA_COMPROMISE: int;
}

type sun.security.x509.RFC822Name {
    var NAME_ANY: int;
    var NAME_RFC822: int;
    var NAME_DNS: int;
    var NAME_X400: int;
    var NAME_DIRECTORY: int;
    var NAME_EDI: int;
    var NAME_URI: int;
    var NAME_IP: int;
    var NAME_OID: int;
    var NAME_DIFF_TYPE: int;
    var NAME_MATCH: int;
    var NAME_NARROWS: int;
    var NAME_WIDENS: int;
    var NAME_SAME_TYPE: int;
}

type sun.security.x509.X509AttributeName {
}

type sun.security.x509.AVAComparator {
}

type sun.security.x509.ExtendedKeyUsageExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var USAGES: java.lang.String;
}

type sun.security.x509.X509CertInfo {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var DN_NAME: java.lang.String;
    var VERSION: java.lang.String;
    var SERIAL_NUMBER: java.lang.String;
    var ALGORITHM_ID: java.lang.String;
    var ISSUER: java.lang.String;
    var SUBJECT: java.lang.String;
    var VALIDITY: java.lang.String;
    var KEY: java.lang.String;
    var ISSUER_ID: java.lang.String;
    var SUBJECT_ID: java.lang.String;
    var EXTENSIONS: java.lang.String;
}

type sun.security.x509.OCSPNoCheckExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
}

type sun.security.x509.IPAddressName {
    var NAME_ANY: int;
    var NAME_RFC822: int;
    var NAME_DNS: int;
    var NAME_X400: int;
    var NAME_DIRECTORY: int;
    var NAME_EDI: int;
    var NAME_URI: int;
    var NAME_IP: int;
    var NAME_OID: int;
    var NAME_DIFF_TYPE: int;
    var NAME_MATCH: int;
    var NAME_NARROWS: int;
    var NAME_WIDENS: int;
    var NAME_SAME_TYPE: int;
}

type sun.security.x509.DeltaCRLIndicatorExtension {
    var NAME: java.lang.String;
    var NUMBER: java.lang.String;
}

type sun.security.x509.KeyIdentifier {
}

type sun.security.x509.InhibitAnyPolicyExtension {
    var IDENT: java.lang.String;
    var AnyPolicy_Id: sun.security.util.ObjectIdentifier;
    var NAME: java.lang.String;
    var SKIP_CERTS: java.lang.String;
}

type sun.security.x509.IssuingDistributionPointExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var POINT: java.lang.String;
    var REASONS: java.lang.String;
    var ONLY_USER_CERTS: java.lang.String;
    var ONLY_CA_CERTS: java.lang.String;
    var ONLY_ATTRIBUTE_CERTS: java.lang.String;
    var INDIRECT_CRL: java.lang.String;
}

type sun.security.x509.CRLReasonCodeExtension {
    var NAME: java.lang.String;
    var REASON: java.lang.String;
}

type sun.security.x509.PKIXExtensions {
    var AuthorityKey_Id: sun.security.util.ObjectIdentifier;
    var SubjectKey_Id: sun.security.util.ObjectIdentifier;
    var KeyUsage_Id: sun.security.util.ObjectIdentifier;
    var PrivateKeyUsage_Id: sun.security.util.ObjectIdentifier;
    var CertificatePolicies_Id: sun.security.util.ObjectIdentifier;
    var PolicyMappings_Id: sun.security.util.ObjectIdentifier;
    var SubjectAlternativeName_Id: sun.security.util.ObjectIdentifier;
    var IssuerAlternativeName_Id: sun.security.util.ObjectIdentifier;
    var SubjectDirectoryAttributes_Id: sun.security.util.ObjectIdentifier;
    var BasicConstraints_Id: sun.security.util.ObjectIdentifier;
    var NameConstraints_Id: sun.security.util.ObjectIdentifier;
    var PolicyConstraints_Id: sun.security.util.ObjectIdentifier;
    var CRLDistributionPoints_Id: sun.security.util.ObjectIdentifier;
    var CRLNumber_Id: sun.security.util.ObjectIdentifier;
    var IssuingDistributionPoint_Id: sun.security.util.ObjectIdentifier;
    var DeltaCRLIndicator_Id: sun.security.util.ObjectIdentifier;
    var ReasonCode_Id: sun.security.util.ObjectIdentifier;
    var HoldInstructionCode_Id: sun.security.util.ObjectIdentifier;
    var InvalidityDate_Id: sun.security.util.ObjectIdentifier;
    var ExtendedKeyUsage_Id: sun.security.util.ObjectIdentifier;
    var InhibitAnyPolicy_Id: sun.security.util.ObjectIdentifier;
    var CertificateIssuer_Id: sun.security.util.ObjectIdentifier;
    var AuthInfoAccess_Id: sun.security.util.ObjectIdentifier;
    var SubjectInfoAccess_Id: sun.security.util.ObjectIdentifier;
    var FreshestCRL_Id: sun.security.util.ObjectIdentifier;
    var OCSPNoCheck_Id: sun.security.util.ObjectIdentifier;
    var OCSPNonce_Id: sun.security.util.ObjectIdentifier;
}

type sun.security.x509.CertificateX509Key {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var KEY: java.lang.String;
}

type sun.security.x509.AVAKeyword {
}

type sun.security.x509.GeneralName {
}

type sun.security.x509.CertificateExtensions {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
}

type sun.security.x509.CertificatePolicyId {
}

type sun.security.x509.X500Name {
    var commonName_oid: sun.security.util.ObjectIdentifier;
    var SURNAME_OID: sun.security.util.ObjectIdentifier;
    var SERIALNUMBER_OID: sun.security.util.ObjectIdentifier;
    var countryName_oid: sun.security.util.ObjectIdentifier;
    var localityName_oid: sun.security.util.ObjectIdentifier;
    var stateName_oid: sun.security.util.ObjectIdentifier;
    var streetAddress_oid: sun.security.util.ObjectIdentifier;
    var orgName_oid: sun.security.util.ObjectIdentifier;
    var orgUnitName_oid: sun.security.util.ObjectIdentifier;
    var title_oid: sun.security.util.ObjectIdentifier;
    var GIVENNAME_OID: sun.security.util.ObjectIdentifier;
    var INITIALS_OID: sun.security.util.ObjectIdentifier;
    var GENERATIONQUALIFIER_OID: sun.security.util.ObjectIdentifier;
    var DNQUALIFIER_OID: sun.security.util.ObjectIdentifier;
    var ipAddress_oid: sun.security.util.ObjectIdentifier;
    var DOMAIN_COMPONENT_OID: sun.security.util.ObjectIdentifier;
    var userid_oid: sun.security.util.ObjectIdentifier;
    var NAME_ANY: int;
    var NAME_RFC822: int;
    var NAME_DNS: int;
    var NAME_X400: int;
    var NAME_DIRECTORY: int;
    var NAME_EDI: int;
    var NAME_URI: int;
    var NAME_IP: int;
    var NAME_OID: int;
    var NAME_DIFF_TYPE: int;
    var NAME_MATCH: int;
    var NAME_NARROWS: int;
    var NAME_WIDENS: int;
    var NAME_SAME_TYPE: int;
}

type sun.security.x509.X509CertImpl {
    var NAME: java.lang.String;
    var INFO: java.lang.String;
    var ALG_ID: java.lang.String;
    var SIGNATURE: java.lang.String;
    var SIGNED_CERT: java.lang.String;
    var SUBJECT_DN: java.lang.String;
    var ISSUER_DN: java.lang.String;
    var SERIAL_ID: java.lang.String;
    var PUBLIC_KEY: java.lang.String;
    var VERSION: java.lang.String;
    var SIG_ALG: java.lang.String;
    var SIG: java.lang.String;
}

type sun.security.x509.X509CRLEntryImpl {
}

type sun.security.x509.GeneralSubtree {
}

type sun.security.x509.GeneralNameInterface {
    var NAME_ANY: int;
    var NAME_RFC822: int;
    var NAME_DNS: int;
    var NAME_X400: int;
    var NAME_DIRECTORY: int;
    var NAME_EDI: int;
    var NAME_URI: int;
    var NAME_IP: int;
    var NAME_OID: int;
    var NAME_DIFF_TYPE: int;
    var NAME_MATCH: int;
    var NAME_NARROWS: int;
    var NAME_WIDENS: int;
    var NAME_SAME_TYPE: int;
}

type sun.security.x509.CertAttrSet {
}

type sun.security.x509.SubjectAlternativeNameExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var SUBJECT_NAME: java.lang.String;
}

type sun.security.x509.CertificateAlgorithmId {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var ALGORITHM: java.lang.String;
}

type sun.security.x509.CRLDistributionPointsExtension {
    var IDENT: java.lang.String;
    var NAME: java.lang.String;
    var POINTS: java.lang.String;
}

type sun.security.x509.CRLNumberExtension {
    var NAME: java.lang.String;
    var NUMBER: java.lang.String;
}

type `sun.security.action.GetPropertyAction` {
}

type `sun.security.action.GetIntegerAction` {
}

type `sun.security.action.GetLongAction` {
}

type `sun.security.action.OpenFileInputStreamAction` {
}

type `sun.security.action.PutAllAction` {
}

type `sun.security.action.GetBooleanAction` {
}

type sun.security.jca.GetInstance {
}

type sun.security.jca.Providers {
}

type sun.security.jca.JCAUtil {
}

type sun.security.jca.ProviderList {
}

type sun.security.jca.ServiceId {
    var `type`: java.lang.String;
    var algorithm: java.lang.String;
}

type sun.security.jca.ProviderConfig {
}

type sun.security.pkcs10.PKCS10 {
}

type sun.security.pkcs10.PKCS10Attribute {
}

type sun.security.pkcs10.PKCS10Attributes {
}

type sun.security.timestamp.TSRequest {
}

type sun.security.timestamp.TSResponse {
    var GRANTED: int;
    var GRANTED_WITH_MODS: int;
    var REJECTION: int;
    var WAITING: int;
    var REVOCATION_WARNING: int;
    var REVOCATION_NOTIFICATION: int;
    var BAD_ALG: int;
    var BAD_REQUEST: int;
    var BAD_DATA_FORMAT: int;
    var TIME_NOT_AVAILABLE: int;
    var UNACCEPTED_POLICY: int;
    var UNACCEPTED_EXTENSION: int;
    var ADD_INFO_NOT_AVAILABLE: int;
    var SYSTEM_FAILURE: int;
}

type sun.security.timestamp.Timestamper {
}

type sun.security.timestamp.TimestampToken {
}

type sun.security.timestamp.HttpTimestamper {
}

type sun.security.pkcs.PKCS9Attribute {
    var EMAIL_ADDRESS_OID: sun.security.util.ObjectIdentifier;
    var UNSTRUCTURED_NAME_OID: sun.security.util.ObjectIdentifier;
    var CONTENT_TYPE_OID: sun.security.util.ObjectIdentifier;
    var MESSAGE_DIGEST_OID: sun.security.util.ObjectIdentifier;
    var SIGNING_TIME_OID: sun.security.util.ObjectIdentifier;
    var COUNTERSIGNATURE_OID: sun.security.util.ObjectIdentifier;
    var CHALLENGE_PASSWORD_OID: sun.security.util.ObjectIdentifier;
    var UNSTRUCTURED_ADDRESS_OID: sun.security.util.ObjectIdentifier;
    var EXTENDED_CERTIFICATE_ATTRIBUTES_OID: sun.security.util.ObjectIdentifier;
    var ISSUER_SERIALNUMBER_OID: sun.security.util.ObjectIdentifier;
    var EXTENSION_REQUEST_OID: sun.security.util.ObjectIdentifier;
    var SIGNING_CERTIFICATE_OID: sun.security.util.ObjectIdentifier;
    var SIGNATURE_TIMESTAMP_TOKEN_OID: sun.security.util.ObjectIdentifier;
    var CMS_ALGORITHM_PROTECTION_OID: sun.security.util.ObjectIdentifier;
}

type sun.security.pkcs.PKCS9Attributes {
}

type sun.security.pkcs.ParsingException {
}

type sun.security.pkcs.ESSCertId {
}

type sun.security.pkcs.PKCS7 {
}

type sun.security.pkcs.EncryptedPrivateKeyInfo {
}

type sun.security.pkcs.ContentInfo {
    var PKCS7_OID: sun.security.util.ObjectIdentifier;
    var DATA_OID: sun.security.util.ObjectIdentifier;
    var SIGNED_DATA_OID: sun.security.util.ObjectIdentifier;
    var ENVELOPED_DATA_OID: sun.security.util.ObjectIdentifier;
    var SIGNED_AND_ENVELOPED_DATA_OID: sun.security.util.ObjectIdentifier;
    var DIGESTED_DATA_OID: sun.security.util.ObjectIdentifier;
    var ENCRYPTED_DATA_OID: sun.security.util.ObjectIdentifier;
    var OLD_SIGNED_DATA_OID: sun.security.util.ObjectIdentifier;
    var OLD_DATA_OID: sun.security.util.ObjectIdentifier;
    var NETSCAPE_CERT_SEQUENCE_OID: sun.security.util.ObjectIdentifier;
    var TIMESTAMP_TOKEN_INFO_OID: sun.security.util.ObjectIdentifier;
}

type sun.security.pkcs.PKCS8Key {
    var serialVersionUID: long;
}

type sun.security.pkcs.SigningCertificateInfo {
}

type sun.security.pkcs.SignerInfo {
}

type sun.invoke.empty.Empty {
}

type sun.invoke.util.VerifyAccess {
}

enum sun.invoke.util.Wrapper {
    BOOLEAN = 0;
    BYTE = 1;
    SHORT = 2;
    CHAR = 3;
    INT = 4;
    LONG = 5;
    FLOAT = 6;
    DOUBLE = 7;
    OBJECT = 8;
    VOID = 9;
}

type sun.invoke.util.VerifyType {
}

type sun.invoke.util.BytecodeName {
}

type sun.invoke.util.ValueConversions {
}

type sun.invoke.util.BytecodeDescriptor {
}

type sun.invoke.WrapperInstance {
}

type sun.reflect.generics.tree.DoubleSignature {
}

type sun.reflect.generics.tree.BottomSignature {
}

type sun.reflect.generics.tree.FieldTypeSignature {
}

type sun.reflect.generics.tree.ArrayTypeSignature {
}

type sun.reflect.generics.tree.ShortSignature {
}

type sun.reflect.generics.tree.Signature {
}

type sun.reflect.generics.tree.CharSignature {
}

type sun.reflect.generics.tree.ClassTypeSignature {
}

type sun.reflect.generics.tree.SimpleClassTypeSignature {
}

type sun.reflect.generics.tree.ByteSignature {
}

type sun.reflect.generics.tree.ReturnType {
}

type sun.reflect.generics.tree.Wildcard {
}

type sun.reflect.generics.tree.TypeVariableSignature {
}

type sun.reflect.generics.tree.TypeArgument {
}

type sun.reflect.generics.tree.BaseType {
}

type sun.reflect.generics.tree.BooleanSignature {
}

type sun.reflect.generics.tree.Tree {
}

type sun.reflect.generics.tree.IntSignature {
}

type sun.reflect.generics.tree.TypeSignature {
}

type sun.reflect.generics.tree.FormalTypeParameter {
}

type sun.reflect.generics.tree.LongSignature {
}

type sun.reflect.generics.tree.ClassSignature {
}

type sun.reflect.generics.tree.FloatSignature {
}

type sun.reflect.generics.tree.VoidDescriptor {
}

type sun.reflect.generics.tree.MethodTypeSignature {
}

type sun.reflect.generics.tree.TypeTree {
}

type sun.reflect.generics.repository.MethodRepository {
}

type sun.reflect.generics.repository.AbstractRepository {
}

type sun.reflect.generics.repository.FieldRepository {
}

type sun.reflect.generics.repository.ConstructorRepository {
}

type sun.reflect.generics.repository.GenericDeclRepository {
}

type sun.reflect.generics.repository.ClassRepository {
    var NONE: sun.reflect.generics.repository.ClassRepository;
}

type sun.reflect.generics.scope.Scope {
}

type sun.reflect.generics.scope.MethodScope {
}

type sun.reflect.generics.scope.ConstructorScope {
}

type sun.reflect.generics.scope.AbstractScope {
}

type sun.reflect.generics.scope.ClassScope {
}

type sun.reflect.generics.scope.DummyScope {
}

type sun.reflect.generics.parser.SignatureParser {
}

type sun.reflect.generics.visitor.Visitor {
}

type sun.reflect.generics.visitor.Reifier {
}

type sun.reflect.generics.visitor.TypeTreeVisitor {
}

type sun.reflect.generics.reflectiveObjects.GenericArrayTypeImpl {
}

type sun.reflect.generics.reflectiveObjects.WildcardTypeImpl {
}

type sun.reflect.generics.reflectiveObjects.TypeVariableImpl {
}

type sun.reflect.generics.reflectiveObjects.NotImplementedException {
}

type sun.reflect.generics.reflectiveObjects.ParameterizedTypeImpl {
}

type sun.reflect.generics.reflectiveObjects.LazyReflectiveObjectGenerator {
}

type sun.reflect.generics.factory.GenericsFactory {
}

type sun.reflect.generics.factory.CoreReflectionFactory {
}

type sun.reflect.misc.FieldUtil {
}

type sun.reflect.misc.ReflectUtil {
    var PROXY_PACKAGE: java.lang.String;
}

type sun.reflect.misc.ConstructorUtil {
}

type sun.reflect.misc.MethodUtil {
}

type `sun.reflect.annotation.TypeNotPresentExceptionProxy` {
}

type `sun.reflect.annotation.AnnotationInvocationHandler` {
}

type `sun.reflect.annotation.EnumConstantNotPresentExceptionProxy` {
}

type `sun.reflect.annotation.AnnotationParser` {
}

type `sun.reflect.annotation.AnnotationTypeMismatchExceptionProxy` {
}

type `sun.reflect.annotation.AnnotationSupport` {
}

type `sun.reflect.annotation.ExceptionProxy` {
}

type `sun.reflect.annotation.AnnotatedTypeFactory` {
}

type `sun.reflect.annotation.TypeAnnotationParser` {
}

type `sun.reflect.annotation.TypeAnnotation` {
}

type `sun.reflect.annotation.AnnotationType` {
}

type sun.nio.ch.UnixAsynchronousSocketChannelImpl {
}

type sun.nio.ch.KQueueSelectorImpl {
}

type sun.nio.ch.ThreadPool {
}

type sun.nio.ch.Reflect {
}

type sun.nio.ch.MembershipKeyImpl {
}

type sun.nio.ch.UnixDomainSockets {
}

type sun.nio.ch.ServerSocketChannelImpl {
}

type sun.nio.ch.AllocatedNativeObject {
}

type sun.nio.ch.IOStatus {
    var EOF: int;
    var UNAVAILABLE: int;
    var INTERRUPTED: int;
    var UNSUPPORTED: int;
    var THROWN: int;
    var UNSUPPORTED_CASE: int;
}

type sun.nio.ch.DirectBuffer {
}

type sun.nio.ch.SocketDispatcher {
}

type sun.nio.ch.NativeThread {
}

type sun.nio.ch.PollSelectorImpl {
}

type sun.nio.ch.Port {
}

type sun.nio.ch.FileDispatcher {
    var NO_LOCK: int;
    var LOCKED: int;
    var RET_EX_LOCK: int;
    var INTERRUPTED: int;
}

type sun.nio.ch.UnixDomainSocketsUtil {
}

type sun.nio.ch.AsynchronousSocketChannelImpl {
}

type sun.nio.ch.AsynchronousServerSocketChannelImpl {
}

type sun.nio.ch.SelectorProviderImpl {
}

type sun.nio.ch.NativeSocketAddress {
}

type sun.nio.ch.PendingFuture {
}

type sun.nio.ch.UnixAsynchronousServerSocketChannelImpl {
}

type sun.nio.ch.SocketAdaptor {
}

type sun.nio.ch.Groupable {
}

type sun.nio.ch.DatagramSocketAdaptor {
}

type sun.nio.ch.KQueueSelectorProvider {
}

type sun.nio.ch.SocketOptionRegistry {
}

type sun.nio.ch.Cancellable {
}

type sun.nio.ch.ExtendedSocketOption {
}

type sun.nio.ch.SimpleAsynchronousFileChannelImpl {
}

type sun.nio.ch.Util {
}

type sun.nio.ch.CompletedFuture {
}

type sun.nio.ch.NativeObject {
}

type sun.nio.ch.KQueuePort {
}

type sun.nio.ch.IOVecWrapper {
}

type sun.nio.ch.NioSocketImpl {
    var TCP_NODELAY: int;
    var SO_BINDADDR: int;
    var SO_REUSEADDR: int;
    var SO_REUSEPORT: int;
    var SO_BROADCAST: int;
    var IP_MULTICAST_IF: int;
    var IP_MULTICAST_IF2: int;
    var IP_MULTICAST_LOOP: int;
    var IP_TOS: int;
    var SO_LINGER: int;
    var SO_TIMEOUT: int;
    var SO_SNDBUF: int;
    var SO_RCVBUF: int;
    var SO_KEEPALIVE: int;
    var SO_OOBINLINE: int;
}

type sun.nio.ch.KQueue {
}

type sun.nio.ch.PipeImpl {
}

type sun.nio.ch.ChannelInputStream {
}

type sun.nio.ch.NativeDispatcher {
}

type sun.nio.ch.ServerSocketAdaptor {
}

type sun.nio.ch.FileChannelImpl {
}

type sun.nio.ch.SinkChannelImpl {
}

type sun.nio.ch.SelChImpl {
}

type sun.nio.ch.FileLockTable {
}

type sun.nio.ch.NativeThreadSet {
}

type sun.nio.ch.OptionKey {
}

type sun.nio.ch.FileKey {
}

type sun.nio.ch.AsynchronousFileChannelImpl {
}

type sun.nio.ch.SourceChannelImpl {
}

type sun.nio.ch.SocketChannelImpl {
}

type sun.nio.ch.Net {
    var SHUT_RD: int;
    var SHUT_WR: int;
    var SHUT_RDWR: int;
    var POLLIN: short;
    var POLLOUT: short;
    var POLLERR: short;
    var POLLHUP: short;
    var POLLNVAL: short;
    var POLLCONN: short;
}

type sun.nio.ch.DummySocketImpl {
    var TCP_NODELAY: int;
    var SO_BINDADDR: int;
    var SO_REUSEADDR: int;
    var SO_REUSEPORT: int;
    var SO_BROADCAST: int;
    var IP_MULTICAST_IF: int;
    var IP_MULTICAST_IF2: int;
    var IP_MULTICAST_LOOP: int;
    var IP_TOS: int;
    var SO_LINGER: int;
    var SO_TIMEOUT: int;
    var SO_SNDBUF: int;
    var SO_RCVBUF: int;
    var SO_KEEPALIVE: int;
    var SO_OOBINLINE: int;
}

type sun.nio.ch.DatagramChannelImpl {
}

type sun.nio.ch.BsdAsynchronousChannelProvider {
}

type sun.nio.ch.SelectionKeyImpl {
    var OP_READ: int;
    var OP_WRITE: int;
    var OP_CONNECT: int;
    var OP_ACCEPT: int;
}

type sun.nio.ch.IOUtil {
}

type sun.nio.ch.Invoker {
}

type sun.nio.ch.DefaultSelectorProvider {
}

type sun.nio.ch.DatagramDispatcher {
}

type sun.nio.ch.DefaultAsynchronousChannelProvider {
}

type sun.nio.ch.FileLockImpl {
}

type sun.nio.ch.Interruptible {
}

type sun.nio.ch.FileDispatcherImpl {
    var NO_LOCK: int;
    var LOCKED: int;
    var RET_EX_LOCK: int;
    var INTERRUPTED: int;
}

type sun.nio.ch.SelectorImpl {
}

type sun.nio.ch.PollSelectorProvider {
}

type sun.nio.ch.MembershipRegistry {
}

type sun.nio.ch.InheritedChannel {
}

type sun.nio.ch.AsynchronousChannelGroupImpl {
}

type sun.nio.cs.MS1250 {
}

type sun.nio.cs.HKSCS {
}

type sun.nio.cs.IBM437 {
}

type sun.nio.cs.DoubleByte {
    var B2C_UNMAPPABLE: array<char>;
}

type sun.nio.cs.IBM858 {
}

type sun.nio.cs.UTF_16LE {
}

type sun.nio.cs.KOI8_R {
}

type sun.nio.cs.ISO_8859_13 {
}

type sun.nio.cs.MS1252 {
}

type sun.nio.cs.UnicodeEncoder {
}

type sun.nio.cs.UTF_16BE {
}

type sun.nio.cs.UTF_32Coder {
}

type sun.nio.cs.ISO_8859_9 {
}

type sun.nio.cs.StreamEncoder {
}

type sun.nio.cs.Unicode {
}

type sun.nio.cs.IBM775 {
}

type sun.nio.cs.MS1254 {
}

type sun.nio.cs.ISO_8859_15 {
}

type sun.nio.cs.StreamDecoder {
}

type sun.nio.cs.IBM737 {
}

type sun.nio.cs.US_ASCII {
    var INSTANCE: sun.nio.cs.US_ASCII;
}

type sun.nio.cs.MS1253 {
}

type sun.nio.cs.MS1251 {
}

type sun.nio.cs.DelegatableDecoder {
}

type sun.nio.cs.UTF_32BE {
}

type sun.nio.cs.IBM866 {
}

type sun.nio.cs.IBM862 {
}

type sun.nio.cs.UTF_32BE_BOM {
}

type sun.nio.cs.KOI8_U {
}

type sun.nio.cs.CESU_8 {
}

type sun.nio.cs.UTF_8 {
    var INSTANCE: sun.nio.cs.UTF_8;
}

type sun.nio.cs.UnicodeDecoder {
}

type sun.nio.cs.UTF_32LE {
}

type sun.nio.cs.Surrogate {
    var MIN_HIGH: char;
    var MAX_HIGH: char;
    var MIN_LOW: char;
    var MAX_LOW: char;
    var MIN: char;
    var MAX: char;
    var UCS4_MIN: int;
    var UCS4_MAX: int;
}

type sun.nio.cs.MS1257 {
}

type sun.nio.cs.StringUTF16 {
}

type sun.nio.cs.ISO_8859_16 {
}

type sun.nio.cs.CharsetMapping {
    var UNMAPPABLE_DECODING: char;
    var UNMAPPABLE_ENCODING: int;
}

type sun.nio.cs.ThreadLocalCoders {
}

type sun.nio.cs.ArrayEncoder {
}

type sun.nio.cs.ISO_8859_4 {
}

type sun.nio.cs.UTF_32 {
}

type sun.nio.cs.SingleByte {
}

type sun.nio.cs.UTF_32LE_BOM {
}

type sun.nio.cs.UTF_16 {
}

type sun.nio.cs.ISO_8859_2 {
}

type sun.nio.cs.IBM857 {
}

type sun.nio.cs.IBM855 {
}

type sun.nio.cs.IBM852 {
}

type sun.nio.cs.ISO_8859_7 {
}

type sun.nio.cs.HistoricallyNamedCharset {
}

type sun.nio.cs.ISO_8859_5 {
}

type sun.nio.cs.IBM850 {
}

type sun.nio.cs.IBM874 {
}

type sun.nio.cs.ISO_8859_1 {
    var INSTANCE: sun.nio.cs.ISO_8859_1;
}

type sun.nio.cs.ArrayDecoder {
}

type sun.nio.cs.UTF_16LE_BOM {
}

type sun.nio.cs.StandardCharsets {
}

type sun.nio.ByteBuffered {
}

type sun.nio.fs.BasicFileAttributesHolder {
}

type sun.nio.fs.DefaultFileSystemProvider {
}

type sun.nio.fs.Reflect {
}

type sun.nio.fs.NativeBuffers {
}

type sun.nio.fs.BsdFileSystem {
}

type sun.nio.fs.UnixNativeDispatcher {
}

type sun.nio.fs.MacOSXFileSystem {
}

type sun.nio.fs.UnixChannelFactory {
}

type sun.nio.fs.UnixFileAttributes {
}

type sun.nio.fs.UnixDirectoryStream {
}

type sun.nio.fs.MimeTypesFileTypeDetector {
}

type sun.nio.fs.UTIFileTypeDetector {
}

type sun.nio.fs.UnixConstants {
}

type sun.nio.fs.ExtendedOptions {
}

type sun.nio.fs.UnixUserPrincipals {
}

type sun.nio.fs.UnixUriUtils {
}

type sun.nio.fs.AbstractPoller {
}

type sun.nio.fs.UnixException {
}

type sun.nio.fs.DynamicFileAttributeView {
}

type sun.nio.fs.UnixFileModeAttribute {
}

type sun.nio.fs.NativeBuffer {
}

type sun.nio.fs.MacOSXNativeDispatcher {
}

type sun.nio.fs.BsdFileSystemProvider {
}

type sun.nio.fs.Globs {
}

type sun.nio.fs.Cancellable {
}

type sun.nio.fs.Util {
}

type sun.nio.fs.UnixFileSystem {
}

type sun.nio.fs.MacOSXFileSystemProvider {
}

type sun.nio.fs.BsdNativeDispatcher {
}

type sun.nio.fs.UnixFileStore {
}

type sun.nio.fs.FileOwnerAttributeViewImpl {
}

type sun.nio.fs.UnixMountEntry {
}

type sun.nio.fs.AbstractFileTypeDetector {
}

type sun.nio.fs.AbstractWatchService {
}

type sun.nio.fs.AbstractFileSystemProvider {
}

type sun.nio.fs.UnixPath {
}

type sun.nio.fs.UnixFileKey {
}

type sun.nio.fs.UnixSecureDirectoryStream {
}

type sun.nio.fs.AbstractAclFileAttributeView {
}

type sun.nio.fs.UnixFileStoreAttributes {
}

type sun.nio.fs.DefaultFileTypeDetector {
}

type sun.nio.fs.AbstractBasicFileAttributeView {
}

type sun.nio.fs.UnixCopyFile {
}

type sun.nio.fs.AbstractWatchKey {
}

type sun.nio.fs.PollingWatchService {
}

type sun.nio.fs.BsdFileStore {
}

type sun.nio.fs.UnixFileSystemProvider {
}

type sun.nio.fs.AbstractUserDefinedFileAttributeView {
}

type sun.nio.fs.UnixFileAttributeViews {
}

type sun.text.BreakDictionary {
}

type sun.text.SupplementaryCharacterData {
}

type sun.text.DictionaryBasedBreakIterator {
    var DONE: int;
}

type sun.text.ComposedCharIter {
    var DONE: int;
}

type sun.text.resources.FormatDataProvider {
}

type sun.text.resources.FormatData {
}

type sun.text.resources.FormatData_en_US {
}

type sun.text.resources.BreakIteratorInfo {
}

type sun.text.resources.FormatData_en {
}

type sun.text.resources.CollationDataProvider {
}

type sun.text.resources.BreakIteratorInfoProvider {
}

type sun.text.resources.CollationData {
}

type sun.text.resources.JavaTimeSupplementaryProvider {
}

type sun.text.resources.BreakIteratorResources {
}

type sun.text.resources.cldr.FormatDataProvider {
}

type sun.text.resources.cldr.FormatData {
}

type sun.text.resources.cldr.FormatData_en_US_POSIX {
}

type sun.text.resources.cldr.FormatData_en {
}

type sun.text.resources.JavaTimeSupplementary_en {
}

type sun.text.resources.JavaTimeSupplementary {
}

type sun.text.IntHashtable {
}

type sun.text.CompactByteArray {
    var UNICODECOUNT: int;
}

type sun.text.RuleBasedBreakIterator {
    var DONE: int;
}

type sun.text.CollatorUtilities {
}

type sun.text.spi.JavaTimeDateTimePatternProvider {
}

type sun.text.Normalizer {
    var UNICODE_3_2: int;
}

type sun.text.UCompactIntArray {
}

type jdk.internal.misc.ExtendedMapMode {
}

type jdk.internal.misc.ScopedMemoryAccess {
}

type jdk.internal.misc.VM {
}

type jdk.internal.misc.OSEnvironment {
}

type jdk.internal.misc.TerminatingThreadLocal {
    var REGISTRY: java.lang.ThreadLocal;
}

type jdk.internal.misc.Unsafe {
    var INVALID_FIELD_OFFSET: int;
    var ARRAY_BOOLEAN_BASE_OFFSET: int;
    var ARRAY_BYTE_BASE_OFFSET: int;
    var ARRAY_SHORT_BASE_OFFSET: int;
    var ARRAY_CHAR_BASE_OFFSET: int;
    var ARRAY_INT_BASE_OFFSET: int;
    var ARRAY_LONG_BASE_OFFSET: int;
    var ARRAY_FLOAT_BASE_OFFSET: int;
    var ARRAY_DOUBLE_BASE_OFFSET: int;
    var ARRAY_OBJECT_BASE_OFFSET: int;
    var ARRAY_BOOLEAN_INDEX_SCALE: int;
    var ARRAY_BYTE_INDEX_SCALE: int;
    var ARRAY_SHORT_INDEX_SCALE: int;
    var ARRAY_CHAR_INDEX_SCALE: int;
    var ARRAY_INT_INDEX_SCALE: int;
    var ARRAY_LONG_INDEX_SCALE: int;
    var ARRAY_FLOAT_INDEX_SCALE: int;
    var ARRAY_DOUBLE_INDEX_SCALE: int;
    var ARRAY_OBJECT_INDEX_SCALE: int;
    var ADDRESS_SIZE: int;
}

type jdk.internal.misc.Signal {
}

type jdk.internal.misc.UnsafeConstants {
}

type jdk.internal.misc.FileSystemOption {
    var INTERRUPTIBLE: jdk.internal.misc.FileSystemOption;
    var NOSHARE_READ: jdk.internal.misc.FileSystemOption;
    var NOSHARE_WRITE: jdk.internal.misc.FileSystemOption;
    var NOSHARE_DELETE: jdk.internal.misc.FileSystemOption;
    var FILE_TREE: jdk.internal.misc.FileSystemOption;
    var DIRECT: jdk.internal.misc.FileSystemOption;
    var SENSITIVITY_HIGH: jdk.internal.misc.FileSystemOption;
    var SENSITIVITY_MEDIUM: jdk.internal.misc.FileSystemOption;
    var SENSITIVITY_LOW: jdk.internal.misc.FileSystemOption;
}

type jdk.internal.misc.CDS {
}

type jdk.internal.misc.InnocuousThread {
    var MIN_PRIORITY: int;
    var NORM_PRIORITY: int;
    var MAX_PRIORITY: int;
}

type jdk.internal.ref.CleanerImpl {
}

type jdk.internal.ref.CleanerFactory {
}

type jdk.internal.ref.PhantomCleanable {
}

type jdk.internal.ref.Cleaner {
}

type jdk.internal.logger.LoggerWrapper {
}

type jdk.internal.logger.LoggerFinderLoader {
    var LOGGERFINDER_PERMISSION: java.lang.RuntimePermission;
}

type jdk.internal.logger.BootstrapLogger {
}

type jdk.internal.logger.LazyLoggers {
}

type jdk.internal.logger.SurrogateLogger {
}

type jdk.internal.logger.SimpleConsoleLogger {
}

type jdk.internal.logger.AbstractLoggerWrapper {
}

type jdk.internal.logger.DefaultLoggerFinder {
}

type jdk.internal.logger.LocalizedLoggerWrapper {
}

type jdk.internal.access.JavaIOAccess {
}

type jdk.internal.access.JavaIORandomAccessFileAccess {
}

type jdk.internal.access.JavaIOFileDescriptorAccess {
}

type jdk.internal.access.JavaSecurityAccess {
}

type jdk.internal.access.JavaLangAccess {
}

type jdk.internal.access.JavaNetInetAddressAccess {
}

type jdk.internal.access.JavaObjectInputStreamReadString {
}

type jdk.internal.access.JavaSecuritySignatureAccess {
}

type jdk.internal.access.SharedSecrets {
}

type jdk.internal.access.JavaUtilCollectionAccess {
}

type jdk.internal.access.JavaAWTAccess {
}

type jdk.internal.access.JavaNetURLAccess {
}

type jdk.internal.access.JavaLangModuleAccess {
}

type jdk.internal.access.JavaLangInvokeAccess {
}

type jdk.internal.access.JavaNioAccess {
}

type jdk.internal.access.JavaxCryptoSealedObjectAccess {
}

type jdk.internal.access.JavaNetUriAccess {
}

type jdk.internal.access.JavaUtilResourceBundleAccess {
}

type jdk.internal.access.JavaNetHttpCookieAccess {
}

type jdk.internal.access.JavaAWTFontAccess {
}

type jdk.internal.access.JavaLangRefAccess {
}

type jdk.internal.access.JavaObjectInputStreamAccess {
}

type jdk.internal.access.JavaUtilZipFileAccess {
}

type jdk.internal.access.JavaLangReflectAccess {
}

type jdk.internal.access.foreign.NativeLibraryProxy {
}

type jdk.internal.access.foreign.UnmapperProxy {
}

type jdk.internal.access.foreign.MemorySegmentProxy {
}

type jdk.internal.access.foreign.MemoryAddressProxy {
}

type jdk.internal.access.JavaUtilJarAccess {
}

type jdk.internal.access.JavaBeansAccess {
}

type jdk.internal.access.JavaIOFilePermissionAccess {
}

type jdk.internal.access.JavaObjectInputFilterAccess {
}

type jdk.internal.util.StaticProperty {
}

type jdk.internal.util.jar.InvalidJarIndexError {
}

type jdk.internal.util.jar.JarIndex {
    var INDEX_NAME: java.lang.String;
}

type jdk.internal.util.Preconditions {
}

type jdk.internal.util.xml.impl.ReaderUTF16 {
}

type jdk.internal.util.xml.impl.Pair {
    var name: java.lang.String;
    var value: java.lang.String;
    var num: int;
    var chars: array<char>;
    var id: int;
    var list: jdk.internal.util.xml.impl.Pair;
    var next: jdk.internal.util.xml.impl.Pair;
}

type jdk.internal.util.xml.impl.XMLWriter {
}

type jdk.internal.util.xml.impl.Input {
    var pubid: java.lang.String;
    var sysid: java.lang.String;
    var xmlenc: java.lang.String;
    var xmlver: char;
    var src: java.io.Reader;
    var chars: array<char>;
    var chLen: int;
    var chIdx: int;
    var next: jdk.internal.util.xml.impl.Input;
}

type jdk.internal.util.xml.impl.SAXParserImpl {
}

type jdk.internal.util.xml.impl.ParserSAX {
    var FEATURE_NS: java.lang.String;
    var FEATURE_PREF: java.lang.String;
    var FAULT: java.lang.String;
    var EOS: char;
}

type jdk.internal.util.xml.impl.XMLStreamWriterImpl {
    var CLOSE_START_TAG: char;
    var OPEN_START_TAG: char;
    var OPEN_END_TAG: java.lang.String;
    var CLOSE_END_TAG: char;
    var START_CDATA: java.lang.String;
    var END_CDATA: java.lang.String;
    var CLOSE_EMPTY_ELEMENT: java.lang.String;
    var ENCODING_PREFIX: java.lang.String;
    var SPACE: char;
    var AMPERSAND: char;
    var DOUBLEQUOT: char;
    var SEMICOLON: char;
    var DEFAULT_XML_VERSION: java.lang.String;
    var DEFAULT_ENCODING: java.lang.String;
    var DEFAULT_CHARSET: java.nio.charset.Charset;
}

type jdk.internal.util.xml.impl.Parser {
    var FAULT: java.lang.String;
    var EOS: char;
}

type jdk.internal.util.xml.impl.Attrs {
}

type jdk.internal.util.xml.impl.ReaderUTF8 {
}

type jdk.internal.util.xml.SAXParser {
}

type jdk.internal.util.xml.XMLStreamWriter {
    var DEFAULT_XML_VERSION: java.lang.String;
    var DEFAULT_ENCODING: java.lang.String;
    var DEFAULT_CHARSET: java.nio.charset.Charset;
}

type jdk.internal.util.xml.PropertiesDefaultHandler {
}

type jdk.internal.util.xml.XMLStreamException {
}

type jdk.internal.util.ArraysSupport {
    var LOG2_ARRAY_BOOLEAN_INDEX_SCALE: int;
    var LOG2_ARRAY_BYTE_INDEX_SCALE: int;
    var LOG2_ARRAY_CHAR_INDEX_SCALE: int;
    var LOG2_ARRAY_SHORT_INDEX_SCALE: int;
    var LOG2_ARRAY_INT_INDEX_SCALE: int;
    var LOG2_ARRAY_LONG_INDEX_SCALE: int;
    var LOG2_ARRAY_FLOAT_INDEX_SCALE: int;
    var LOG2_ARRAY_DOUBLE_INDEX_SCALE: int;
    var SOFT_MAX_ARRAY_LENGTH: int;
}

type jdk.internal.util.SystemProps {
}

type jdk.internal.org.objectweb.asm.tree.InnerClassNode {
    var name: java.lang.String;
    var outerName: java.lang.String;
    var innerName: java.lang.String;
    var access: int;
}

type jdk.internal.org.objectweb.asm.tree.IntInsnNode {
    var operand: int;
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.LabelNode {
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.MethodInsnNode {
    var owner: java.lang.String;
    var name: java.lang.String;
    var desc: java.lang.String;
    var itf: boolean;
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.VarInsnNode {
    var `var`: int;
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.analysis.AnalyzerException {
    var node: jdk.internal.org.objectweb.asm.tree.AbstractInsnNode;
}

type jdk.internal.org.objectweb.asm.tree.analysis.SmallSet {
}

type jdk.internal.org.objectweb.asm.tree.analysis.Analyzer {
    var ASM4: int;
    var ASM5: int;
    var ASM6: int;
    var ASM7: int;
    var ASM8: int;
    var ASM9_EXPERIMENTAL: int;
    var SOURCE_DEPRECATED: int;
    var SOURCE_MASK: int;
    var V1_1: int;
    var V1_2: int;
    var V1_3: int;
    var V1_4: int;
    var V1_5: int;
    var V1_6: int;
    var V1_7: int;
    var V1_8: int;
    var V9: int;
    var V10: int;
    var V11: int;
    var V12: int;
    var V13: int;
    var V14: int;
    var V15: int;
    var V16: int;
    var V17: int;
    var V_PREVIEW: int;
    var ACC_PUBLIC: int;
    var ACC_PRIVATE: int;
    var ACC_PROTECTED: int;
    var ACC_STATIC: int;
    var ACC_FINAL: int;
    var ACC_SUPER: int;
    var ACC_SYNCHRONIZED: int;
    var ACC_OPEN: int;
    var ACC_TRANSITIVE: int;
    var ACC_VOLATILE: int;
    var ACC_BRIDGE: int;
    var ACC_STATIC_PHASE: int;
    var ACC_VARARGS: int;
    var ACC_TRANSIENT: int;
    var ACC_NATIVE: int;
    var ACC_INTERFACE: int;
    var ACC_ABSTRACT: int;
    var ACC_STRICT: int;
    var ACC_SYNTHETIC: int;
    var ACC_ANNOTATION: int;
    var ACC_ENUM: int;
    var ACC_MANDATED: int;
    var ACC_MODULE: int;
    var ACC_RECORD: int;
    var ACC_DEPRECATED: int;
    var T_BOOLEAN: int;
    var T_CHAR: int;
    var T_FLOAT: int;
    var T_DOUBLE: int;
    var T_BYTE: int;
    var T_SHORT: int;
    var T_INT: int;
    var T_LONG: int;
    var H_GETFIELD: int;
    var H_GETSTATIC: int;
    var H_PUTFIELD: int;
    var H_PUTSTATIC: int;
    var H_INVOKEVIRTUAL: int;
    var H_INVOKESTATIC: int;
    var H_INVOKESPECIAL: int;
    var H_NEWINVOKESPECIAL: int;
    var H_INVOKEINTERFACE: int;
    var F_NEW: int;
    var F_FULL: int;
    var F_APPEND: int;
    var F_CHOP: int;
    var F_SAME: int;
    var F_SAME1: int;
    var TOP: java.lang.Integer;
    var INTEGER: java.lang.Integer;
    var FLOAT: java.lang.Integer;
    var DOUBLE: java.lang.Integer;
    var LONG: java.lang.Integer;
    var NULL: java.lang.Integer;
    var UNINITIALIZED_THIS: java.lang.Integer;
    var NOP: int;
    var ACONST_NULL: int;
    var ICONST_M1: int;
    var ICONST_0: int;
    var ICONST_1: int;
    var ICONST_2: int;
    var ICONST_3: int;
    var ICONST_4: int;
    var ICONST_5: int;
    var LCONST_0: int;
    var LCONST_1: int;
    var FCONST_0: int;
    var FCONST_1: int;
    var FCONST_2: int;
    var DCONST_0: int;
    var DCONST_1: int;
    var BIPUSH: int;
    var SIPUSH: int;
    var LDC: int;
    var ILOAD: int;
    var LLOAD: int;
    var FLOAD: int;
    var DLOAD: int;
    var ALOAD: int;
    var IALOAD: int;
    var LALOAD: int;
    var FALOAD: int;
    var DALOAD: int;
    var AALOAD: int;
    var BALOAD: int;
    var CALOAD: int;
    var SALOAD: int;
    var ISTORE: int;
    var LSTORE: int;
    var FSTORE: int;
    var DSTORE: int;
    var ASTORE: int;
    var IASTORE: int;
    var LASTORE: int;
    var FASTORE: int;
    var DASTORE: int;
    var AASTORE: int;
    var BASTORE: int;
    var CASTORE: int;
    var SASTORE: int;
    var POP: int;
    var POP2: int;
    var DUP: int;
    var DUP_X1: int;
    var DUP_X2: int;
    var DUP2: int;
    var DUP2_X1: int;
    var DUP2_X2: int;
    var SWAP: int;
    var IADD: int;
    var LADD: int;
    var FADD: int;
    var DADD: int;
    var ISUB: int;
    var LSUB: int;
    var FSUB: int;
    var DSUB: int;
    var IMUL: int;
    var LMUL: int;
    var FMUL: int;
    var DMUL: int;
    var IDIV: int;
    var LDIV: int;
    var FDIV: int;
    var DDIV: int;
    var IREM: int;
    var LREM: int;
    var FREM: int;
    var DREM: int;
    var INEG: int;
    var LNEG: int;
    var FNEG: int;
    var DNEG: int;
    var ISHL: int;
    var LSHL: int;
    var ISHR: int;
    var LSHR: int;
    var IUSHR: int;
    var LUSHR: int;
    var IAND: int;
    var LAND: int;
    var IOR: int;
    var LOR: int;
    var IXOR: int;
    var LXOR: int;
    var IINC: int;
    var I2L: int;
    var I2F: int;
    var I2D: int;
    var L2I: int;
    var L2F: int;
    var L2D: int;
    var F2I: int;
    var F2L: int;
    var F2D: int;
    var D2I: int;
    var D2L: int;
    var D2F: int;
    var I2B: int;
    var I2C: int;
    var I2S: int;
    var LCMP: int;
    var FCMPL: int;
    var FCMPG: int;
    var DCMPL: int;
    var DCMPG: int;
    var IFEQ: int;
    var IFNE: int;
    var IFLT: int;
    var IFGE: int;
    var IFGT: int;
    var IFLE: int;
    var IF_ICMPEQ: int;
    var IF_ICMPNE: int;
    var IF_ICMPLT: int;
    var IF_ICMPGE: int;
    var IF_ICMPGT: int;
    var IF_ICMPLE: int;
    var IF_ACMPEQ: int;
    var IF_ACMPNE: int;
    var GOTO: int;
    var JSR: int;
    var RET: int;
    var TABLESWITCH: int;
    var LOOKUPSWITCH: int;
    var IRETURN: int;
    var LRETURN: int;
    var FRETURN: int;
    var DRETURN: int;
    var ARETURN: int;
    var RETURN: int;
    var GETSTATIC: int;
    var PUTSTATIC: int;
    var GETFIELD: int;
    var PUTFIELD: int;
    var INVOKEVIRTUAL: int;
    var INVOKESPECIAL: int;
    var INVOKESTATIC: int;
    var INVOKEINTERFACE: int;
    var INVOKEDYNAMIC: int;
    var NEW: int;
    var NEWARRAY: int;
    var ANEWARRAY: int;
    var ARRAYLENGTH: int;
    var ATHROW: int;
    var CHECKCAST: int;
    var INSTANCEOF: int;
    var MONITORENTER: int;
    var MONITOREXIT: int;
    var MULTIANEWARRAY: int;
    var IFNULL: int;
    var IFNONNULL: int;
}

type jdk.internal.org.objectweb.asm.tree.analysis.Frame {
}

type jdk.internal.org.objectweb.asm.tree.analysis.BasicVerifier {
    var NULL_TYPE: jdk.internal.org.objectweb.asm.Type;
    var ASM4: int;
    var ASM5: int;
    var ASM6: int;
    var ASM7: int;
    var ASM8: int;
    var ASM9_EXPERIMENTAL: int;
    var SOURCE_DEPRECATED: int;
    var SOURCE_MASK: int;
    var V1_1: int;
    var V1_2: int;
    var V1_3: int;
    var V1_4: int;
    var V1_5: int;
    var V1_6: int;
    var V1_7: int;
    var V1_8: int;
    var V9: int;
    var V10: int;
    var V11: int;
    var V12: int;
    var V13: int;
    var V14: int;
    var V15: int;
    var V16: int;
    var V17: int;
    var V_PREVIEW: int;
    var ACC_PUBLIC: int;
    var ACC_PRIVATE: int;
    var ACC_PROTECTED: int;
    var ACC_STATIC: int;
    var ACC_FINAL: int;
    var ACC_SUPER: int;
    var ACC_SYNCHRONIZED: int;
    var ACC_OPEN: int;
    var ACC_TRANSITIVE: int;
    var ACC_VOLATILE: int;
    var ACC_BRIDGE: int;
    var ACC_STATIC_PHASE: int;
    var ACC_VARARGS: int;
    var ACC_TRANSIENT: int;
    var ACC_NATIVE: int;
    var ACC_INTERFACE: int;
    var ACC_ABSTRACT: int;
    var ACC_STRICT: int;
    var ACC_SYNTHETIC: int;
    var ACC_ANNOTATION: int;
    var ACC_ENUM: int;
    var ACC_MANDATED: int;
    var ACC_MODULE: int;
    var ACC_RECORD: int;
    var ACC_DEPRECATED: int;
    var T_BOOLEAN: int;
    var T_CHAR: int;
    var T_FLOAT: int;
    var T_DOUBLE: int;
    var T_BYTE: int;
    var T_SHORT: int;
    var T_INT: int;
    var T_LONG: int;
    var H_GETFIELD: int;
    var H_GETSTATIC: int;
    var H_PUTFIELD: int;
    var H_PUTSTATIC: int;
    var H_INVOKEVIRTUAL: int;
    var H_INVOKESTATIC: int;
    var H_INVOKESPECIAL: int;
    var H_NEWINVOKESPECIAL: int;
    var H_INVOKEINTERFACE: int;
    var F_NEW: int;
    var F_FULL: int;
    var F_APPEND: int;
    var F_CHOP: int;
    var F_SAME: int;
    var F_SAME1: int;
    var TOP: java.lang.Integer;
    var INTEGER: java.lang.Integer;
    var FLOAT: java.lang.Integer;
    var DOUBLE: java.lang.Integer;
    var LONG: java.lang.Integer;
    var NULL: java.lang.Integer;
    var UNINITIALIZED_THIS: java.lang.Integer;
    var NOP: int;
    var ACONST_NULL: int;
    var ICONST_M1: int;
    var ICONST_0: int;
    var ICONST_1: int;
    var ICONST_2: int;
    var ICONST_3: int;
    var ICONST_4: int;
    var ICONST_5: int;
    var LCONST_0: int;
    var LCONST_1: int;
    var FCONST_0: int;
    var FCONST_1: int;
    var FCONST_2: int;
    var DCONST_0: int;
    var DCONST_1: int;
    var BIPUSH: int;
    var SIPUSH: int;
    var LDC: int;
    var ILOAD: int;
    var LLOAD: int;
    var FLOAD: int;
    var DLOAD: int;
    var ALOAD: int;
    var IALOAD: int;
    var LALOAD: int;
    var FALOAD: int;
    var DALOAD: int;
    var AALOAD: int;
    var BALOAD: int;
    var CALOAD: int;
    var SALOAD: int;
    var ISTORE: int;
    var LSTORE: int;
    var FSTORE: int;
    var DSTORE: int;
    var ASTORE: int;
    var IASTORE: int;
    var LASTORE: int;
    var FASTORE: int;
    var DASTORE: int;
    var AASTORE: int;
    var BASTORE: int;
    var CASTORE: int;
    var SASTORE: int;
    var POP: int;
    var POP2: int;
    var DUP: int;
    var DUP_X1: int;
    var DUP_X2: int;
    var DUP2: int;
    var DUP2_X1: int;
    var DUP2_X2: int;
    var SWAP: int;
    var IADD: int;
    var LADD: int;
    var FADD: int;
    var DADD: int;
    var ISUB: int;
    var LSUB: int;
    var FSUB: int;
    var DSUB: int;
    var IMUL: int;
    var LMUL: int;
    var FMUL: int;
    var DMUL: int;
    var IDIV: int;
    var LDIV: int;
    var FDIV: int;
    var DDIV: int;
    var IREM: int;
    var LREM: int;
    var FREM: int;
    var DREM: int;
    var INEG: int;
    var LNEG: int;
    var FNEG: int;
    var DNEG: int;
    var ISHL: int;
    var LSHL: int;
    var ISHR: int;
    var LSHR: int;
    var IUSHR: int;
    var LUSHR: int;
    var IAND: int;
    var LAND: int;
    var IOR: int;
    var LOR: int;
    var IXOR: int;
    var LXOR: int;
    var IINC: int;
    var I2L: int;
    var I2F: int;
    var I2D: int;
    var L2I: int;
    var L2F: int;
    var L2D: int;
    var F2I: int;
    var F2L: int;
    var F2D: int;
    var D2I: int;
    var D2L: int;
    var D2F: int;
    var I2B: int;
    var I2C: int;
    var I2S: int;
    var LCMP: int;
    var FCMPL: int;
    var FCMPG: int;
    var DCMPL: int;
    var DCMPG: int;
    var IFEQ: int;
    var IFNE: int;
    var IFLT: int;
    var IFGE: int;
    var IFGT: int;
    var IFLE: int;
    var IF_ICMPEQ: int;
    var IF_ICMPNE: int;
    var IF_ICMPLT: int;
    var IF_ICMPGE: int;
    var IF_ICMPGT: int;
    var IF_ICMPLE: int;
    var IF_ACMPEQ: int;
    var IF_ACMPNE: int;
    var GOTO: int;
    var JSR: int;
    var RET: int;
    var TABLESWITCH: int;
    var LOOKUPSWITCH: int;
    var IRETURN: int;
    var LRETURN: int;
    var FRETURN: int;
    var DRETURN: int;
    var ARETURN: int;
    var RETURN: int;
    var GETSTATIC: int;
    var PUTSTATIC: int;
    var GETFIELD: int;
    var PUTFIELD: int;
    var INVOKEVIRTUAL: int;
    var INVOKESPECIAL: int;
    var INVOKESTATIC: int;
    var INVOKEINTERFACE: int;
    var INVOKEDYNAMIC: int;
    var NEW: int;
    var NEWARRAY: int;
    var ANEWARRAY: int;
    var ARRAYLENGTH: int;
    var ATHROW: int;
    var CHECKCAST: int;
    var INSTANCEOF: int;
    var MONITORENTER: int;
    var MONITOREXIT: int;
    var MULTIANEWARRAY: int;
    var IFNULL: int;
    var IFNONNULL: int;
}

type jdk.internal.org.objectweb.asm.tree.analysis.Interpreter {
}

type jdk.internal.org.objectweb.asm.tree.analysis.BasicInterpreter {
    var NULL_TYPE: jdk.internal.org.objectweb.asm.Type;
    var ASM4: int;
    var ASM5: int;
    var ASM6: int;
    var ASM7: int;
    var ASM8: int;
    var ASM9_EXPERIMENTAL: int;
    var SOURCE_DEPRECATED: int;
    var SOURCE_MASK: int;
    var V1_1: int;
    var V1_2: int;
    var V1_3: int;
    var V1_4: int;
    var V1_5: int;
    var V1_6: int;
    var V1_7: int;
    var V1_8: int;
    var V9: int;
    var V10: int;
    var V11: int;
    var V12: int;
    var V13: int;
    var V14: int;
    var V15: int;
    var V16: int;
    var V17: int;
    var V_PREVIEW: int;
    var ACC_PUBLIC: int;
    var ACC_PRIVATE: int;
    var ACC_PROTECTED: int;
    var ACC_STATIC: int;
    var ACC_FINAL: int;
    var ACC_SUPER: int;
    var ACC_SYNCHRONIZED: int;
    var ACC_OPEN: int;
    var ACC_TRANSITIVE: int;
    var ACC_VOLATILE: int;
    var ACC_BRIDGE: int;
    var ACC_STATIC_PHASE: int;
    var ACC_VARARGS: int;
    var ACC_TRANSIENT: int;
    var ACC_NATIVE: int;
    var ACC_INTERFACE: int;
    var ACC_ABSTRACT: int;
    var ACC_STRICT: int;
    var ACC_SYNTHETIC: int;
    var ACC_ANNOTATION: int;
    var ACC_ENUM: int;
    var ACC_MANDATED: int;
    var ACC_MODULE: int;
    var ACC_RECORD: int;
    var ACC_DEPRECATED: int;
    var T_BOOLEAN: int;
    var T_CHAR: int;
    var T_FLOAT: int;
    var T_DOUBLE: int;
    var T_BYTE: int;
    var T_SHORT: int;
    var T_INT: int;
    var T_LONG: int;
    var H_GETFIELD: int;
    var H_GETSTATIC: int;
    var H_PUTFIELD: int;
    var H_PUTSTATIC: int;
    var H_INVOKEVIRTUAL: int;
    var H_INVOKESTATIC: int;
    var H_INVOKESPECIAL: int;
    var H_NEWINVOKESPECIAL: int;
    var H_INVOKEINTERFACE: int;
    var F_NEW: int;
    var F_FULL: int;
    var F_APPEND: int;
    var F_CHOP: int;
    var F_SAME: int;
    var F_SAME1: int;
    var TOP: java.lang.Integer;
    var INTEGER: java.lang.Integer;
    var FLOAT: java.lang.Integer;
    var DOUBLE: java.lang.Integer;
    var LONG: java.lang.Integer;
    var NULL: java.lang.Integer;
    var UNINITIALIZED_THIS: java.lang.Integer;
    var NOP: int;
    var ACONST_NULL: int;
    var ICONST_M1: int;
    var ICONST_0: int;
    var ICONST_1: int;
    var ICONST_2: int;
    var ICONST_3: int;
    var ICONST_4: int;
    var ICONST_5: int;
    var LCONST_0: int;
    var LCONST_1: int;
    var FCONST_0: int;
    var FCONST_1: int;
    var FCONST_2: int;
    var DCONST_0: int;
    var DCONST_1: int;
    var BIPUSH: int;
    var SIPUSH: int;
    var LDC: int;
    var ILOAD: int;
    var LLOAD: int;
    var FLOAD: int;
    var DLOAD: int;
    var ALOAD: int;
    var IALOAD: int;
    var LALOAD: int;
    var FALOAD: int;
    var DALOAD: int;
    var AALOAD: int;
    var BALOAD: int;
    var CALOAD: int;
    var SALOAD: int;
    var ISTORE: int;
    var LSTORE: int;
    var FSTORE: int;
    var DSTORE: int;
    var ASTORE: int;
    var IASTORE: int;
    var LASTORE: int;
    var FASTORE: int;
    var DASTORE: int;
    var AASTORE: int;
    var BASTORE: int;
    var CASTORE: int;
    var SASTORE: int;
    var POP: int;
    var POP2: int;
    var DUP: int;
    var DUP_X1: int;
    var DUP_X2: int;
    var DUP2: int;
    var DUP2_X1: int;
    var DUP2_X2: int;
    var SWAP: int;
    var IADD: int;
    var LADD: int;
    var FADD: int;
    var DADD: int;
    var ISUB: int;
    var LSUB: int;
    var FSUB: int;
    var DSUB: int;
    var IMUL: int;
    var LMUL: int;
    var FMUL: int;
    var DMUL: int;
    var IDIV: int;
    var LDIV: int;
    var FDIV: int;
    var DDIV: int;
    var IREM: int;
    var LREM: int;
    var FREM: int;
    var DREM: int;
    var INEG: int;
    var LNEG: int;
    var FNEG: int;
    var DNEG: int;
    var ISHL: int;
    var LSHL: int;
    var ISHR: int;
    var LSHR: int;
    var IUSHR: int;
    var LUSHR: int;
    var IAND: int;
    var LAND: int;
    var IOR: int;
    var LOR: int;
    var IXOR: int;
    var LXOR: int;
    var IINC: int;
    var I2L: int;
    var I2F: int;
    var I2D: int;
    var L2I: int;
    var L2F: int;
    var L2D: int;
    var F2I: int;
    var F2L: int;
    var F2D: int;
    var D2I: int;
    var D2L: int;
    var D2F: int;
    var I2B: int;
    var I2C: int;
    var I2S: int;
    var LCMP: int;
    var FCMPL: int;
    var FCMPG: int;
    var DCMPL: int;
    var DCMPG: int;
    var IFEQ: int;
    var IFNE: int;
    var IFLT: int;
    var IFGE: int;
    var IFGT: int;
    var IFLE: int;
    var IF_ICMPEQ: int;
    var IF_ICMPNE: int;
    var IF_ICMPLT: int;
    var IF_ICMPGE: int;
    var IF_ICMPGT: int;
    var IF_ICMPLE: int;
    var IF_ACMPEQ: int;
    var IF_ACMPNE: int;
    var GOTO: int;
    var JSR: int;
    var RET: int;
    var TABLESWITCH: int;
    var LOOKUPSWITCH: int;
    var IRETURN: int;
    var LRETURN: int;
    var FRETURN: int;
    var DRETURN: int;
    var ARETURN: int;
    var RETURN: int;
    var GETSTATIC: int;
    var PUTSTATIC: int;
    var GETFIELD: int;
    var PUTFIELD: int;
    var INVOKEVIRTUAL: int;
    var INVOKESPECIAL: int;
    var INVOKESTATIC: int;
    var INVOKEINTERFACE: int;
    var INVOKEDYNAMIC: int;
    var NEW: int;
    var NEWARRAY: int;
    var ANEWARRAY: int;
    var ARRAYLENGTH: int;
    var ATHROW: int;
    var CHECKCAST: int;
    var INSTANCEOF: int;
    var MONITORENTER: int;
    var MONITOREXIT: int;
    var MULTIANEWARRAY: int;
    var IFNULL: int;
    var IFNONNULL: int;
}

type jdk.internal.org.objectweb.asm.tree.analysis.SourceInterpreter {
    var ASM4: int;
    var ASM5: int;
    var ASM6: int;
    var ASM7: int;
    var ASM8: int;
    var ASM9_EXPERIMENTAL: int;
    var SOURCE_DEPRECATED: int;
    var SOURCE_MASK: int;
    var V1_1: int;
    var V1_2: int;
    var V1_3: int;
    var V1_4: int;
    var V1_5: int;
    var V1_6: int;
    var V1_7: int;
    var V1_8: int;
    var V9: int;
    var V10: int;
    var V11: int;
    var V12: int;
    var V13: int;
    var V14: int;
    var V15: int;
    var V16: int;
    var V17: int;
    var V_PREVIEW: int;
    var ACC_PUBLIC: int;
    var ACC_PRIVATE: int;
    var ACC_PROTECTED: int;
    var ACC_STATIC: int;
    var ACC_FINAL: int;
    var ACC_SUPER: int;
    var ACC_SYNCHRONIZED: int;
    var ACC_OPEN: int;
    var ACC_TRANSITIVE: int;
    var ACC_VOLATILE: int;
    var ACC_BRIDGE: int;
    var ACC_STATIC_PHASE: int;
    var ACC_VARARGS: int;
    var ACC_TRANSIENT: int;
    var ACC_NATIVE: int;
    var ACC_INTERFACE: int;
    var ACC_ABSTRACT: int;
    var ACC_STRICT: int;
    var ACC_SYNTHETIC: int;
    var ACC_ANNOTATION: int;
    var ACC_ENUM: int;
    var ACC_MANDATED: int;
    var ACC_MODULE: int;
    var ACC_RECORD: int;
    var ACC_DEPRECATED: int;
    var T_BOOLEAN: int;
    var T_CHAR: int;
    var T_FLOAT: int;
    var T_DOUBLE: int;
    var T_BYTE: int;
    var T_SHORT: int;
    var T_INT: int;
    var T_LONG: int;
    var H_GETFIELD: int;
    var H_GETSTATIC: int;
    var H_PUTFIELD: int;
    var H_PUTSTATIC: int;
    var H_INVOKEVIRTUAL: int;
    var H_INVOKESTATIC: int;
    var H_INVOKESPECIAL: int;
    var H_NEWINVOKESPECIAL: int;
    var H_INVOKEINTERFACE: int;
    var F_NEW: int;
    var F_FULL: int;
    var F_APPEND: int;
    var F_CHOP: int;
    var F_SAME: int;
    var F_SAME1: int;
    var TOP: java.lang.Integer;
    var INTEGER: java.lang.Integer;
    var FLOAT: java.lang.Integer;
    var DOUBLE: java.lang.Integer;
    var LONG: java.lang.Integer;
    var NULL: java.lang.Integer;
    var UNINITIALIZED_THIS: java.lang.Integer;
    var NOP: int;
    var ACONST_NULL: int;
    var ICONST_M1: int;
    var ICONST_0: int;
    var ICONST_1: int;
    var ICONST_2: int;
    var ICONST_3: int;
    var ICONST_4: int;
    var ICONST_5: int;
    var LCONST_0: int;
    var LCONST_1: int;
    var FCONST_0: int;
    var FCONST_1: int;
    var FCONST_2: int;
    var DCONST_0: int;
    var DCONST_1: int;
    var BIPUSH: int;
    var SIPUSH: int;
    var LDC: int;
    var ILOAD: int;
    var LLOAD: int;
    var FLOAD: int;
    var DLOAD: int;
    var ALOAD: int;
    var IALOAD: int;
    var LALOAD: int;
    var FALOAD: int;
    var DALOAD: int;
    var AALOAD: int;
    var BALOAD: int;
    var CALOAD: int;
    var SALOAD: int;
    var ISTORE: int;
    var LSTORE: int;
    var FSTORE: int;
    var DSTORE: int;
    var ASTORE: int;
    var IASTORE: int;
    var LASTORE: int;
    var FASTORE: int;
    var DASTORE: int;
    var AASTORE: int;
    var BASTORE: int;
    var CASTORE: int;
    var SASTORE: int;
    var POP: int;
    var POP2: int;
    var DUP: int;
    var DUP_X1: int;
    var DUP_X2: int;
    var DUP2: int;
    var DUP2_X1: int;
    var DUP2_X2: int;
    var SWAP: int;
    var IADD: int;
    var LADD: int;
    var FADD: int;
    var DADD: int;
    var ISUB: int;
    var LSUB: int;
    var FSUB: int;
    var DSUB: int;
    var IMUL: int;
    var LMUL: int;
    var FMUL: int;
    var DMUL: int;
    var IDIV: int;
    var LDIV: int;
    var FDIV: int;
    var DDIV: int;
    var IREM: int;
    var LREM: int;
    var FREM: int;
    var DREM: int;
    var INEG: int;
    var LNEG: int;
    var FNEG: int;
    var DNEG: int;
    var ISHL: int;
    var LSHL: int;
    var ISHR: int;
    var LSHR: int;
    var IUSHR: int;
    var LUSHR: int;
    var IAND: int;
    var LAND: int;
    var IOR: int;
    var LOR: int;
    var IXOR: int;
    var LXOR: int;
    var IINC: int;
    var I2L: int;
    var I2F: int;
    var I2D: int;
    var L2I: int;
    var L2F: int;
    var L2D: int;
    var F2I: int;
    var F2L: int;
    var F2D: int;
    var D2I: int;
    var D2L: int;
    var D2F: int;
    var I2B: int;
    var I2C: int;
    var I2S: int;
    var LCMP: int;
    var FCMPL: int;
    var FCMPG: int;
    var DCMPL: int;
    var DCMPG: int;
    var IFEQ: int;
    var IFNE: int;
    var IFLT: int;
    var IFGE: int;
    var IFGT: int;
    var IFLE: int;
    var IF_ICMPEQ: int;
    var IF_ICMPNE: int;
    var IF_ICMPLT: int;
    var IF_ICMPGE: int;
    var IF_ICMPGT: int;
    var IF_ICMPLE: int;
    var IF_ACMPEQ: int;
    var IF_ACMPNE: int;
    var GOTO: int;
    var JSR: int;
    var RET: int;
    var TABLESWITCH: int;
    var LOOKUPSWITCH: int;
    var IRETURN: int;
    var LRETURN: int;
    var FRETURN: int;
    var DRETURN: int;
    var ARETURN: int;
    var RETURN: int;
    var GETSTATIC: int;
    var PUTSTATIC: int;
    var GETFIELD: int;
    var PUTFIELD: int;
    var INVOKEVIRTUAL: int;
    var INVOKESPECIAL: int;
    var INVOKESTATIC: int;
    var INVOKEINTERFACE: int;
    var INVOKEDYNAMIC: int;
    var NEW: int;
    var NEWARRAY: int;
    var ANEWARRAY: int;
    var ARRAYLENGTH: int;
    var ATHROW: int;
    var CHECKCAST: int;
    var INSTANCEOF: int;
    var MONITORENTER: int;
    var MONITOREXIT: int;
    var MULTIANEWARRAY: int;
    var IFNULL: int;
    var IFNONNULL: int;
}

type jdk.internal.org.objectweb.asm.tree.analysis.Subroutine {
}

type jdk.internal.org.objectweb.asm.tree.analysis.SourceValue {
    var size: int;
    var insns: java.util.Set;
}

type jdk.internal.org.objectweb.asm.tree.analysis.BasicValue {
    var UNINITIALIZED_VALUE: jdk.internal.org.objectweb.asm.tree.analysis.BasicValue;
    var INT_VALUE: jdk.internal.org.objectweb.asm.tree.analysis.BasicValue;
    var FLOAT_VALUE: jdk.internal.org.objectweb.asm.tree.analysis.BasicValue;
    var LONG_VALUE: jdk.internal.org.objectweb.asm.tree.analysis.BasicValue;
    var DOUBLE_VALUE: jdk.internal.org.objectweb.asm.tree.analysis.BasicValue;
    var REFERENCE_VALUE: jdk.internal.org.objectweb.asm.tree.analysis.BasicValue;
    var RETURNADDRESS_VALUE: jdk.internal.org.objectweb.asm.tree.analysis.BasicValue;
}

type jdk.internal.org.objectweb.asm.tree.analysis.Value {
}

type jdk.internal.org.objectweb.asm.tree.analysis.SimpleVerifier {
    var NULL_TYPE: jdk.internal.org.objectweb.asm.Type;
    var ASM4: int;
    var ASM5: int;
    var ASM6: int;
    var ASM7: int;
    var ASM8: int;
    var ASM9_EXPERIMENTAL: int;
    var SOURCE_DEPRECATED: int;
    var SOURCE_MASK: int;
    var V1_1: int;
    var V1_2: int;
    var V1_3: int;
    var V1_4: int;
    var V1_5: int;
    var V1_6: int;
    var V1_7: int;
    var V1_8: int;
    var V9: int;
    var V10: int;
    var V11: int;
    var V12: int;
    var V13: int;
    var V14: int;
    var V15: int;
    var V16: int;
    var V17: int;
    var V_PREVIEW: int;
    var ACC_PUBLIC: int;
    var ACC_PRIVATE: int;
    var ACC_PROTECTED: int;
    var ACC_STATIC: int;
    var ACC_FINAL: int;
    var ACC_SUPER: int;
    var ACC_SYNCHRONIZED: int;
    var ACC_OPEN: int;
    var ACC_TRANSITIVE: int;
    var ACC_VOLATILE: int;
    var ACC_BRIDGE: int;
    var ACC_STATIC_PHASE: int;
    var ACC_VARARGS: int;
    var ACC_TRANSIENT: int;
    var ACC_NATIVE: int;
    var ACC_INTERFACE: int;
    var ACC_ABSTRACT: int;
    var ACC_STRICT: int;
    var ACC_SYNTHETIC: int;
    var ACC_ANNOTATION: int;
    var ACC_ENUM: int;
    var ACC_MANDATED: int;
    var ACC_MODULE: int;
    var ACC_RECORD: int;
    var ACC_DEPRECATED: int;
    var T_BOOLEAN: int;
    var T_CHAR: int;
    var T_FLOAT: int;
    var T_DOUBLE: int;
    var T_BYTE: int;
    var T_SHORT: int;
    var T_INT: int;
    var T_LONG: int;
    var H_GETFIELD: int;
    var H_GETSTATIC: int;
    var H_PUTFIELD: int;
    var H_PUTSTATIC: int;
    var H_INVOKEVIRTUAL: int;
    var H_INVOKESTATIC: int;
    var H_INVOKESPECIAL: int;
    var H_NEWINVOKESPECIAL: int;
    var H_INVOKEINTERFACE: int;
    var F_NEW: int;
    var F_FULL: int;
    var F_APPEND: int;
    var F_CHOP: int;
    var F_SAME: int;
    var F_SAME1: int;
    var TOP: java.lang.Integer;
    var INTEGER: java.lang.Integer;
    var FLOAT: java.lang.Integer;
    var DOUBLE: java.lang.Integer;
    var LONG: java.lang.Integer;
    var NULL: java.lang.Integer;
    var UNINITIALIZED_THIS: java.lang.Integer;
    var NOP: int;
    var ACONST_NULL: int;
    var ICONST_M1: int;
    var ICONST_0: int;
    var ICONST_1: int;
    var ICONST_2: int;
    var ICONST_3: int;
    var ICONST_4: int;
    var ICONST_5: int;
    var LCONST_0: int;
    var LCONST_1: int;
    var FCONST_0: int;
    var FCONST_1: int;
    var FCONST_2: int;
    var DCONST_0: int;
    var DCONST_1: int;
    var BIPUSH: int;
    var SIPUSH: int;
    var LDC: int;
    var ILOAD: int;
    var LLOAD: int;
    var FLOAD: int;
    var DLOAD: int;
    var ALOAD: int;
    var IALOAD: int;
    var LALOAD: int;
    var FALOAD: int;
    var DALOAD: int;
    var AALOAD: int;
    var BALOAD: int;
    var CALOAD: int;
    var SALOAD: int;
    var ISTORE: int;
    var LSTORE: int;
    var FSTORE: int;
    var DSTORE: int;
    var ASTORE: int;
    var IASTORE: int;
    var LASTORE: int;
    var FASTORE: int;
    var DASTORE: int;
    var AASTORE: int;
    var BASTORE: int;
    var CASTORE: int;
    var SASTORE: int;
    var POP: int;
    var POP2: int;
    var DUP: int;
    var DUP_X1: int;
    var DUP_X2: int;
    var DUP2: int;
    var DUP2_X1: int;
    var DUP2_X2: int;
    var SWAP: int;
    var IADD: int;
    var LADD: int;
    var FADD: int;
    var DADD: int;
    var ISUB: int;
    var LSUB: int;
    var FSUB: int;
    var DSUB: int;
    var IMUL: int;
    var LMUL: int;
    var FMUL: int;
    var DMUL: int;
    var IDIV: int;
    var LDIV: int;
    var FDIV: int;
    var DDIV: int;
    var IREM: int;
    var LREM: int;
    var FREM: int;
    var DREM: int;
    var INEG: int;
    var LNEG: int;
    var FNEG: int;
    var DNEG: int;
    var ISHL: int;
    var LSHL: int;
    var ISHR: int;
    var LSHR: int;
    var IUSHR: int;
    var LUSHR: int;
    var IAND: int;
    var LAND: int;
    var IOR: int;
    var LOR: int;
    var IXOR: int;
    var LXOR: int;
    var IINC: int;
    var I2L: int;
    var I2F: int;
    var I2D: int;
    var L2I: int;
    var L2F: int;
    var L2D: int;
    var F2I: int;
    var F2L: int;
    var F2D: int;
    var D2I: int;
    var D2L: int;
    var D2F: int;
    var I2B: int;
    var I2C: int;
    var I2S: int;
    var LCMP: int;
    var FCMPL: int;
    var FCMPG: int;
    var DCMPL: int;
    var DCMPG: int;
    var IFEQ: int;
    var IFNE: int;
    var IFLT: int;
    var IFGE: int;
    var IFGT: int;
    var IFLE: int;
    var IF_ICMPEQ: int;
    var IF_ICMPNE: int;
    var IF_ICMPLT: int;
    var IF_ICMPGE: int;
    var IF_ICMPGT: int;
    var IF_ICMPLE: int;
    var IF_ACMPEQ: int;
    var IF_ACMPNE: int;
    var GOTO: int;
    var JSR: int;
    var RET: int;
    var TABLESWITCH: int;
    var LOOKUPSWITCH: int;
    var IRETURN: int;
    var LRETURN: int;
    var FRETURN: int;
    var DRETURN: int;
    var ARETURN: int;
    var RETURN: int;
    var GETSTATIC: int;
    var PUTSTATIC: int;
    var GETFIELD: int;
    var PUTFIELD: int;
    var INVOKEVIRTUAL: int;
    var INVOKESPECIAL: int;
    var INVOKESTATIC: int;
    var INVOKEINTERFACE: int;
    var INVOKEDYNAMIC: int;
    var NEW: int;
    var NEWARRAY: int;
    var ANEWARRAY: int;
    var ARRAYLENGTH: int;
    var ATHROW: int;
    var CHECKCAST: int;
    var INSTANCEOF: int;
    var MONITORENTER: int;
    var MONITOREXIT: int;
    var MULTIANEWARRAY: int;
    var IFNULL: int;
    var IFNONNULL: int;
}

type jdk.internal.org.objectweb.asm.tree.InsnNode {
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.InvokeDynamicInsnNode {
    var name: java.lang.String;
    var desc: java.lang.String;
    var bsm: jdk.internal.org.objectweb.asm.Handle;
    var bsmArgs: array<java.lang.Object>;
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.LdcInsnNode {
    var cst: java.lang.Object;
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.InsnList {
}

type jdk.internal.org.objectweb.asm.tree.AnnotationNode {
    var desc: java.lang.String;
    var values: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.ModuleNode {
    var name: java.lang.String;
    var access: int;
    var `version`: java.lang.String;
    var mainClass: java.lang.String;
    var packages: java.util.List;
    var `requires`: java.util.List;
    var exports: java.util.List;
    var opens: java.util.List;
    var uses: java.util.List;
    var provides: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.FieldNode {
    var access: int;
    var name: java.lang.String;
    var desc: java.lang.String;
    var signature: java.lang.String;
    var value: java.lang.Object;
    var visibleAnnotations: java.util.List;
    var invisibleAnnotations: java.util.List;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
    var attrs: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.LookupSwitchInsnNode {
    var dflt: jdk.internal.org.objectweb.asm.tree.LabelNode;
    var keys: java.util.List;
    var labels: java.util.List;
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.TypeInsnNode {
    var desc: java.lang.String;
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.ModuleOpenNode {
    var packaze: java.lang.String;
    var access: int;
    var modules: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.LocalVariableAnnotationNode {
    var start: java.util.List;
    var end: java.util.List;
    var index: java.util.List;
    var typeRef: int;
    var typePath: jdk.internal.org.objectweb.asm.TypePath;
    var desc: java.lang.String;
    var values: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.Util {
}

type jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode {
    var start: jdk.internal.org.objectweb.asm.tree.LabelNode;
    var end: jdk.internal.org.objectweb.asm.tree.LabelNode;
    var handler: jdk.internal.org.objectweb.asm.tree.LabelNode;
    var `type`: java.lang.String;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.RecordComponentNode {
    var name: java.lang.String;
    var descriptor: java.lang.String;
    var signature: java.lang.String;
    var visibleAnnotations: java.util.List;
    var invisibleAnnotations: java.util.List;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
    var attrs: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.UnsupportedClassVersionException {
}

type jdk.internal.org.objectweb.asm.tree.MultiANewArrayInsnNode {
    var desc: java.lang.String;
    var dims: int;
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.AbstractInsnNode {
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.ModuleRequireNode {
    var module: java.lang.String;
    var access: int;
    var `version`: java.lang.String;
}

type jdk.internal.org.objectweb.asm.tree.IincInsnNode {
    var `var`: int;
    var incr: int;
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.ModuleProvideNode {
    var service: java.lang.String;
    var providers: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.JumpInsnNode {
    var label: jdk.internal.org.objectweb.asm.tree.LabelNode;
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.FrameNode {
    var `type`: int;
    var local: java.util.List;
    var stack: java.util.List;
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.ClassNode {
    var `version`: int;
    var access: int;
    var name: java.lang.String;
    var signature: java.lang.String;
    var superName: java.lang.String;
    var interfaces: java.util.List;
    var sourceFile: java.lang.String;
    var sourceDebug: java.lang.String;
    var module: jdk.internal.org.objectweb.asm.tree.ModuleNode;
    var outerClass: java.lang.String;
    var outerMethod: java.lang.String;
    var outerMethodDesc: java.lang.String;
    var visibleAnnotations: java.util.List;
    var invisibleAnnotations: java.util.List;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
    var attrs: java.util.List;
    var innerClasses: java.util.List;
    var nestHostClass: java.lang.String;
    var nestMembers: java.util.List;
    var permittedSubclassesExperimental: java.util.List;
    var recordComponents: java.util.List;
    var fields: java.util.List;
    var methods: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.ModuleExportNode {
    var packaze: java.lang.String;
    var access: int;
    var modules: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.ParameterNode {
    var name: java.lang.String;
    var access: int;
}

type jdk.internal.org.objectweb.asm.tree.FieldInsnNode {
    var owner: java.lang.String;
    var name: java.lang.String;
    var desc: java.lang.String;
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.MethodNode {
    var access: int;
    var name: java.lang.String;
    var desc: java.lang.String;
    var signature: java.lang.String;
    var exceptions: java.util.List;
    var parameters: java.util.List;
    var visibleAnnotations: java.util.List;
    var invisibleAnnotations: java.util.List;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
    var attrs: java.util.List;
    var annotationDefault: java.lang.Object;
    var visibleAnnotableParameterCount: int;
    var visibleParameterAnnotations: array<java.util.List>;
    var invisibleAnnotableParameterCount: int;
    var invisibleParameterAnnotations: array<java.util.List>;
    var instructions: jdk.internal.org.objectweb.asm.tree.InsnList;
    var tryCatchBlocks: java.util.List;
    var maxStack: int;
    var maxLocals: int;
    var localVariables: java.util.List;
    var visibleLocalVariableAnnotations: java.util.List;
    var invisibleLocalVariableAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.TableSwitchInsnNode {
    var min: int;
    var max: int;
    var dflt: jdk.internal.org.objectweb.asm.tree.LabelNode;
    var labels: java.util.List;
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.LocalVariableNode {
    var name: java.lang.String;
    var desc: java.lang.String;
    var signature: java.lang.String;
    var start: jdk.internal.org.objectweb.asm.tree.LabelNode;
    var end: jdk.internal.org.objectweb.asm.tree.LabelNode;
    var index: int;
}

type jdk.internal.org.objectweb.asm.tree.LineNumberNode {
    var line: int;
    var start: jdk.internal.org.objectweb.asm.tree.LabelNode;
    var INSN: int;
    var INT_INSN: int;
    var VAR_INSN: int;
    var TYPE_INSN: int;
    var FIELD_INSN: int;
    var METHOD_INSN: int;
    var INVOKE_DYNAMIC_INSN: int;
    var JUMP_INSN: int;
    var LABEL: int;
    var LDC_INSN: int;
    var IINC_INSN: int;
    var TABLESWITCH_INSN: int;
    var LOOKUPSWITCH_INSN: int;
    var MULTIANEWARRAY_INSN: int;
    var FRAME: int;
    var LINE: int;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.tree.TypeAnnotationNode {
    var typeRef: int;
    var typePath: jdk.internal.org.objectweb.asm.TypePath;
    var desc: java.lang.String;
    var values: java.util.List;
}

type jdk.internal.org.objectweb.asm.ModuleWriter {
}

type jdk.internal.org.objectweb.asm.ClassTooLargeException {
}

type jdk.internal.org.objectweb.asm.ClassWriter {
    var COMPUTE_MAXS: int;
    var COMPUTE_FRAMES: int;
}

type jdk.internal.org.objectweb.asm.Constants {
}

type jdk.internal.org.objectweb.asm.RecordComponentVisitor {
}

type jdk.internal.org.objectweb.asm.Label {
    var info: java.lang.Object;
}

type jdk.internal.org.objectweb.asm.Edge {
}

type jdk.internal.org.objectweb.asm.util.Textifiable {
}

type jdk.internal.org.objectweb.asm.util.TraceRecordComponentVisitor {
    var printer: jdk.internal.org.objectweb.asm.util.Printer;
}

type jdk.internal.org.objectweb.asm.util.TraceMethodVisitor {
    var p: jdk.internal.org.objectweb.asm.util.Printer;
}

type jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor {
    var EXTENDS: char;
    var SUPER: char;
    var INSTANCEOF: char;
}

type jdk.internal.org.objectweb.asm.util.TraceAnnotationVisitor {
}

type jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter {
}

type jdk.internal.org.objectweb.asm.util.Textifier {
    var INTERNAL_NAME: int;
    var FIELD_DESCRIPTOR: int;
    var FIELD_SIGNATURE: int;
    var METHOD_DESCRIPTOR: int;
    var METHOD_SIGNATURE: int;
    var CLASS_SIGNATURE: int;
    var HANDLE_DESCRIPTOR: int;
    var OPCODES: array<java.lang.String>;
    var TYPES: array<java.lang.String>;
    var HANDLE_TAG: array<java.lang.String>;
    var text: java.util.List;
}

type jdk.internal.org.objectweb.asm.util.TraceModuleVisitor {
    var p: jdk.internal.org.objectweb.asm.util.Printer;
}

type jdk.internal.org.objectweb.asm.util.ASMifier {
    var OPCODES: array<java.lang.String>;
    var TYPES: array<java.lang.String>;
    var HANDLE_TAG: array<java.lang.String>;
    var text: java.util.List;
}

type jdk.internal.org.objectweb.asm.util.CheckRecordComponentAdapter {
}

type jdk.internal.org.objectweb.asm.util.ASMifierSupport {
}

type jdk.internal.org.objectweb.asm.util.CheckMethodAdapter {
    var `version`: int;
}

type jdk.internal.org.objectweb.asm.util.CheckFieldAdapter {
}

type jdk.internal.org.objectweb.asm.util.CheckClassAdapter {
}

type jdk.internal.org.objectweb.asm.util.TextifierSupport {
}

type jdk.internal.org.objectweb.asm.util.CheckSignatureAdapter {
    var CLASS_SIGNATURE: int;
    var METHOD_SIGNATURE: int;
    var TYPE_SIGNATURE: int;
    var EXTENDS: char;
    var SUPER: char;
    var INSTANCEOF: char;
}

type jdk.internal.org.objectweb.asm.util.TraceFieldVisitor {
    var p: jdk.internal.org.objectweb.asm.util.Printer;
}

type jdk.internal.org.objectweb.asm.util.Printer {
    var OPCODES: array<java.lang.String>;
    var TYPES: array<java.lang.String>;
    var HANDLE_TAG: array<java.lang.String>;
    var text: java.util.List;
}

type jdk.internal.org.objectweb.asm.util.TraceClassVisitor {
    var p: jdk.internal.org.objectweb.asm.util.Printer;
}

type jdk.internal.org.objectweb.asm.util.ASMifiable {
}

type jdk.internal.org.objectweb.asm.util.CheckModuleAdapter {
}

type jdk.internal.org.objectweb.asm.signature.SignatureWriter {
    var EXTENDS: char;
    var SUPER: char;
    var INSTANCEOF: char;
}

type jdk.internal.org.objectweb.asm.signature.SignatureReader {
}

type jdk.internal.org.objectweb.asm.signature.SignatureVisitor {
    var EXTENDS: char;
    var SUPER: char;
    var INSTANCEOF: char;
}

type jdk.internal.org.objectweb.asm.FieldWriter {
}

type jdk.internal.org.objectweb.asm.commons.SimpleRemapper {
}

type jdk.internal.org.objectweb.asm.commons.ModuleHashesAttribute {
    var algorithm: java.lang.String;
    var modules: java.util.List;
    var hashes: java.util.List;
    var `type`: java.lang.String;
}

type jdk.internal.org.objectweb.asm.commons.TableSwitchGenerator {
}

type jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter {
    var ASM4: int;
    var ASM5: int;
    var ASM6: int;
    var ASM7: int;
    var ASM8: int;
    var ASM9_EXPERIMENTAL: int;
    var SOURCE_DEPRECATED: int;
    var SOURCE_MASK: int;
    var V1_1: int;
    var V1_2: int;
    var V1_3: int;
    var V1_4: int;
    var V1_5: int;
    var V1_6: int;
    var V1_7: int;
    var V1_8: int;
    var V9: int;
    var V10: int;
    var V11: int;
    var V12: int;
    var V13: int;
    var V14: int;
    var V15: int;
    var V16: int;
    var V17: int;
    var V_PREVIEW: int;
    var ACC_PUBLIC: int;
    var ACC_PRIVATE: int;
    var ACC_PROTECTED: int;
    var ACC_STATIC: int;
    var ACC_FINAL: int;
    var ACC_SUPER: int;
    var ACC_SYNCHRONIZED: int;
    var ACC_OPEN: int;
    var ACC_TRANSITIVE: int;
    var ACC_VOLATILE: int;
    var ACC_BRIDGE: int;
    var ACC_STATIC_PHASE: int;
    var ACC_VARARGS: int;
    var ACC_TRANSIENT: int;
    var ACC_NATIVE: int;
    var ACC_INTERFACE: int;
    var ACC_ABSTRACT: int;
    var ACC_STRICT: int;
    var ACC_SYNTHETIC: int;
    var ACC_ANNOTATION: int;
    var ACC_ENUM: int;
    var ACC_MANDATED: int;
    var ACC_MODULE: int;
    var ACC_RECORD: int;
    var ACC_DEPRECATED: int;
    var T_BOOLEAN: int;
    var T_CHAR: int;
    var T_FLOAT: int;
    var T_DOUBLE: int;
    var T_BYTE: int;
    var T_SHORT: int;
    var T_INT: int;
    var T_LONG: int;
    var H_GETFIELD: int;
    var H_GETSTATIC: int;
    var H_PUTFIELD: int;
    var H_PUTSTATIC: int;
    var H_INVOKEVIRTUAL: int;
    var H_INVOKESTATIC: int;
    var H_INVOKESPECIAL: int;
    var H_NEWINVOKESPECIAL: int;
    var H_INVOKEINTERFACE: int;
    var F_NEW: int;
    var F_FULL: int;
    var F_APPEND: int;
    var F_CHOP: int;
    var F_SAME: int;
    var F_SAME1: int;
    var TOP: java.lang.Integer;
    var INTEGER: java.lang.Integer;
    var FLOAT: java.lang.Integer;
    var DOUBLE: java.lang.Integer;
    var LONG: java.lang.Integer;
    var NULL: java.lang.Integer;
    var UNINITIALIZED_THIS: java.lang.Integer;
    var NOP: int;
    var ACONST_NULL: int;
    var ICONST_M1: int;
    var ICONST_0: int;
    var ICONST_1: int;
    var ICONST_2: int;
    var ICONST_3: int;
    var ICONST_4: int;
    var ICONST_5: int;
    var LCONST_0: int;
    var LCONST_1: int;
    var FCONST_0: int;
    var FCONST_1: int;
    var FCONST_2: int;
    var DCONST_0: int;
    var DCONST_1: int;
    var BIPUSH: int;
    var SIPUSH: int;
    var LDC: int;
    var ILOAD: int;
    var LLOAD: int;
    var FLOAD: int;
    var DLOAD: int;
    var ALOAD: int;
    var IALOAD: int;
    var LALOAD: int;
    var FALOAD: int;
    var DALOAD: int;
    var AALOAD: int;
    var BALOAD: int;
    var CALOAD: int;
    var SALOAD: int;
    var ISTORE: int;
    var LSTORE: int;
    var FSTORE: int;
    var DSTORE: int;
    var ASTORE: int;
    var IASTORE: int;
    var LASTORE: int;
    var FASTORE: int;
    var DASTORE: int;
    var AASTORE: int;
    var BASTORE: int;
    var CASTORE: int;
    var SASTORE: int;
    var POP: int;
    var POP2: int;
    var DUP: int;
    var DUP_X1: int;
    var DUP_X2: int;
    var DUP2: int;
    var DUP2_X1: int;
    var DUP2_X2: int;
    var SWAP: int;
    var IADD: int;
    var LADD: int;
    var FADD: int;
    var DADD: int;
    var ISUB: int;
    var LSUB: int;
    var FSUB: int;
    var DSUB: int;
    var IMUL: int;
    var LMUL: int;
    var FMUL: int;
    var DMUL: int;
    var IDIV: int;
    var LDIV: int;
    var FDIV: int;
    var DDIV: int;
    var IREM: int;
    var LREM: int;
    var FREM: int;
    var DREM: int;
    var INEG: int;
    var LNEG: int;
    var FNEG: int;
    var DNEG: int;
    var ISHL: int;
    var LSHL: int;
    var ISHR: int;
    var LSHR: int;
    var IUSHR: int;
    var LUSHR: int;
    var IAND: int;
    var LAND: int;
    var IOR: int;
    var LOR: int;
    var IXOR: int;
    var LXOR: int;
    var IINC: int;
    var I2L: int;
    var I2F: int;
    var I2D: int;
    var L2I: int;
    var L2F: int;
    var L2D: int;
    var F2I: int;
    var F2L: int;
    var F2D: int;
    var D2I: int;
    var D2L: int;
    var D2F: int;
    var I2B: int;
    var I2C: int;
    var I2S: int;
    var LCMP: int;
    var FCMPL: int;
    var FCMPG: int;
    var DCMPL: int;
    var DCMPG: int;
    var IFEQ: int;
    var IFNE: int;
    var IFLT: int;
    var IFGE: int;
    var IFGT: int;
    var IFLE: int;
    var IF_ICMPEQ: int;
    var IF_ICMPNE: int;
    var IF_ICMPLT: int;
    var IF_ICMPGE: int;
    var IF_ICMPGT: int;
    var IF_ICMPLE: int;
    var IF_ACMPEQ: int;
    var IF_ACMPNE: int;
    var GOTO: int;
    var JSR: int;
    var RET: int;
    var TABLESWITCH: int;
    var LOOKUPSWITCH: int;
    var IRETURN: int;
    var LRETURN: int;
    var FRETURN: int;
    var DRETURN: int;
    var ARETURN: int;
    var RETURN: int;
    var GETSTATIC: int;
    var PUTSTATIC: int;
    var GETFIELD: int;
    var PUTFIELD: int;
    var INVOKEVIRTUAL: int;
    var INVOKESPECIAL: int;
    var INVOKESTATIC: int;
    var INVOKEINTERFACE: int;
    var INVOKEDYNAMIC: int;
    var NEW: int;
    var NEWARRAY: int;
    var ANEWARRAY: int;
    var ARRAYLENGTH: int;
    var ATHROW: int;
    var CHECKCAST: int;
    var INSTANCEOF: int;
    var MONITORENTER: int;
    var MONITOREXIT: int;
    var MULTIANEWARRAY: int;
    var IFNULL: int;
    var IFNONNULL: int;
    var access: int;
    var name: java.lang.String;
    var desc: java.lang.String;
    var signature: java.lang.String;
    var exceptions: java.util.List;
    var parameters: java.util.List;
    var visibleAnnotations: java.util.List;
    var invisibleAnnotations: java.util.List;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
    var attrs: java.util.List;
    var annotationDefault: java.lang.Object;
    var visibleAnnotableParameterCount: int;
    var visibleParameterAnnotations: array<java.util.List>;
    var invisibleAnnotableParameterCount: int;
    var invisibleParameterAnnotations: array<java.util.List>;
    var instructions: jdk.internal.org.objectweb.asm.tree.InsnList;
    var tryCatchBlocks: java.util.List;
    var maxStack: int;
    var maxLocals: int;
    var localVariables: java.util.List;
    var visibleLocalVariableAnnotations: java.util.List;
    var invisibleLocalVariableAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.commons.FieldRemapper {
}

type jdk.internal.org.objectweb.asm.commons.RecordComponentRemapper {
}

type jdk.internal.org.objectweb.asm.commons.ModuleTargetAttribute {
    var platform: java.lang.String;
    var `type`: java.lang.String;
}

type jdk.internal.org.objectweb.asm.commons.Method {
}

type jdk.internal.org.objectweb.asm.commons.RemappingClassAdapter {
}

type jdk.internal.org.objectweb.asm.commons.RemappingMethodAdapter {
}

type jdk.internal.org.objectweb.asm.commons.MethodRemapper {
}

type jdk.internal.org.objectweb.asm.commons.RemappingFieldAdapter {
}

type jdk.internal.org.objectweb.asm.commons.CodeSizeEvaluator {
    var ASM4: int;
    var ASM5: int;
    var ASM6: int;
    var ASM7: int;
    var ASM8: int;
    var ASM9_EXPERIMENTAL: int;
    var SOURCE_DEPRECATED: int;
    var SOURCE_MASK: int;
    var V1_1: int;
    var V1_2: int;
    var V1_3: int;
    var V1_4: int;
    var V1_5: int;
    var V1_6: int;
    var V1_7: int;
    var V1_8: int;
    var V9: int;
    var V10: int;
    var V11: int;
    var V12: int;
    var V13: int;
    var V14: int;
    var V15: int;
    var V16: int;
    var V17: int;
    var V_PREVIEW: int;
    var ACC_PUBLIC: int;
    var ACC_PRIVATE: int;
    var ACC_PROTECTED: int;
    var ACC_STATIC: int;
    var ACC_FINAL: int;
    var ACC_SUPER: int;
    var ACC_SYNCHRONIZED: int;
    var ACC_OPEN: int;
    var ACC_TRANSITIVE: int;
    var ACC_VOLATILE: int;
    var ACC_BRIDGE: int;
    var ACC_STATIC_PHASE: int;
    var ACC_VARARGS: int;
    var ACC_TRANSIENT: int;
    var ACC_NATIVE: int;
    var ACC_INTERFACE: int;
    var ACC_ABSTRACT: int;
    var ACC_STRICT: int;
    var ACC_SYNTHETIC: int;
    var ACC_ANNOTATION: int;
    var ACC_ENUM: int;
    var ACC_MANDATED: int;
    var ACC_MODULE: int;
    var ACC_RECORD: int;
    var ACC_DEPRECATED: int;
    var T_BOOLEAN: int;
    var T_CHAR: int;
    var T_FLOAT: int;
    var T_DOUBLE: int;
    var T_BYTE: int;
    var T_SHORT: int;
    var T_INT: int;
    var T_LONG: int;
    var H_GETFIELD: int;
    var H_GETSTATIC: int;
    var H_PUTFIELD: int;
    var H_PUTSTATIC: int;
    var H_INVOKEVIRTUAL: int;
    var H_INVOKESTATIC: int;
    var H_INVOKESPECIAL: int;
    var H_NEWINVOKESPECIAL: int;
    var H_INVOKEINTERFACE: int;
    var F_NEW: int;
    var F_FULL: int;
    var F_APPEND: int;
    var F_CHOP: int;
    var F_SAME: int;
    var F_SAME1: int;
    var TOP: java.lang.Integer;
    var INTEGER: java.lang.Integer;
    var FLOAT: java.lang.Integer;
    var DOUBLE: java.lang.Integer;
    var LONG: java.lang.Integer;
    var NULL: java.lang.Integer;
    var UNINITIALIZED_THIS: java.lang.Integer;
    var NOP: int;
    var ACONST_NULL: int;
    var ICONST_M1: int;
    var ICONST_0: int;
    var ICONST_1: int;
    var ICONST_2: int;
    var ICONST_3: int;
    var ICONST_4: int;
    var ICONST_5: int;
    var LCONST_0: int;
    var LCONST_1: int;
    var FCONST_0: int;
    var FCONST_1: int;
    var FCONST_2: int;
    var DCONST_0: int;
    var DCONST_1: int;
    var BIPUSH: int;
    var SIPUSH: int;
    var LDC: int;
    var ILOAD: int;
    var LLOAD: int;
    var FLOAD: int;
    var DLOAD: int;
    var ALOAD: int;
    var IALOAD: int;
    var LALOAD: int;
    var FALOAD: int;
    var DALOAD: int;
    var AALOAD: int;
    var BALOAD: int;
    var CALOAD: int;
    var SALOAD: int;
    var ISTORE: int;
    var LSTORE: int;
    var FSTORE: int;
    var DSTORE: int;
    var ASTORE: int;
    var IASTORE: int;
    var LASTORE: int;
    var FASTORE: int;
    var DASTORE: int;
    var AASTORE: int;
    var BASTORE: int;
    var CASTORE: int;
    var SASTORE: int;
    var POP: int;
    var POP2: int;
    var DUP: int;
    var DUP_X1: int;
    var DUP_X2: int;
    var DUP2: int;
    var DUP2_X1: int;
    var DUP2_X2: int;
    var SWAP: int;
    var IADD: int;
    var LADD: int;
    var FADD: int;
    var DADD: int;
    var ISUB: int;
    var LSUB: int;
    var FSUB: int;
    var DSUB: int;
    var IMUL: int;
    var LMUL: int;
    var FMUL: int;
    var DMUL: int;
    var IDIV: int;
    var LDIV: int;
    var FDIV: int;
    var DDIV: int;
    var IREM: int;
    var LREM: int;
    var FREM: int;
    var DREM: int;
    var INEG: int;
    var LNEG: int;
    var FNEG: int;
    var DNEG: int;
    var ISHL: int;
    var LSHL: int;
    var ISHR: int;
    var LSHR: int;
    var IUSHR: int;
    var LUSHR: int;
    var IAND: int;
    var LAND: int;
    var IOR: int;
    var LOR: int;
    var IXOR: int;
    var LXOR: int;
    var IINC: int;
    var I2L: int;
    var I2F: int;
    var I2D: int;
    var L2I: int;
    var L2F: int;
    var L2D: int;
    var F2I: int;
    var F2L: int;
    var F2D: int;
    var D2I: int;
    var D2L: int;
    var D2F: int;
    var I2B: int;
    var I2C: int;
    var I2S: int;
    var LCMP: int;
    var FCMPL: int;
    var FCMPG: int;
    var DCMPL: int;
    var DCMPG: int;
    var IFEQ: int;
    var IFNE: int;
    var IFLT: int;
    var IFGE: int;
    var IFGT: int;
    var IFLE: int;
    var IF_ICMPEQ: int;
    var IF_ICMPNE: int;
    var IF_ICMPLT: int;
    var IF_ICMPGE: int;
    var IF_ICMPGT: int;
    var IF_ICMPLE: int;
    var IF_ACMPEQ: int;
    var IF_ACMPNE: int;
    var GOTO: int;
    var JSR: int;
    var RET: int;
    var TABLESWITCH: int;
    var LOOKUPSWITCH: int;
    var IRETURN: int;
    var LRETURN: int;
    var FRETURN: int;
    var DRETURN: int;
    var ARETURN: int;
    var RETURN: int;
    var GETSTATIC: int;
    var PUTSTATIC: int;
    var GETFIELD: int;
    var PUTFIELD: int;
    var INVOKEVIRTUAL: int;
    var INVOKESPECIAL: int;
    var INVOKESTATIC: int;
    var INVOKEINTERFACE: int;
    var INVOKEDYNAMIC: int;
    var NEW: int;
    var NEWARRAY: int;
    var ANEWARRAY: int;
    var ARRAYLENGTH: int;
    var ATHROW: int;
    var CHECKCAST: int;
    var INSTANCEOF: int;
    var MONITORENTER: int;
    var MONITOREXIT: int;
    var MULTIANEWARRAY: int;
    var IFNULL: int;
    var IFNONNULL: int;
}

type jdk.internal.org.objectweb.asm.commons.LocalVariablesSorter {
}

type jdk.internal.org.objectweb.asm.commons.SignatureRemapper {
    var EXTENDS: char;
    var SUPER: char;
    var INSTANCEOF: char;
}

type jdk.internal.org.objectweb.asm.commons.Remapper {
}

type jdk.internal.org.objectweb.asm.commons.ModuleResolutionAttribute {
    var RESOLUTION_DO_NOT_RESOLVE_BY_DEFAULT: int;
    var RESOLUTION_WARN_DEPRECATED: int;
    var RESOLUTION_WARN_DEPRECATED_FOR_REMOVAL: int;
    var RESOLUTION_WARN_INCUBATING: int;
    var resolution: int;
    var `type`: java.lang.String;
}

type jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder {
}

type jdk.internal.org.objectweb.asm.commons.ModuleRemapper {
}

type jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter {
    var EXTENDS: char;
    var SUPER: char;
    var INSTANCEOF: char;
}

type jdk.internal.org.objectweb.asm.commons.AdviceAdapter {
    var ASM4: int;
    var ASM5: int;
    var ASM6: int;
    var ASM7: int;
    var ASM8: int;
    var ASM9_EXPERIMENTAL: int;
    var SOURCE_DEPRECATED: int;
    var SOURCE_MASK: int;
    var V1_1: int;
    var V1_2: int;
    var V1_3: int;
    var V1_4: int;
    var V1_5: int;
    var V1_6: int;
    var V1_7: int;
    var V1_8: int;
    var V9: int;
    var V10: int;
    var V11: int;
    var V12: int;
    var V13: int;
    var V14: int;
    var V15: int;
    var V16: int;
    var V17: int;
    var V_PREVIEW: int;
    var ACC_PUBLIC: int;
    var ACC_PRIVATE: int;
    var ACC_PROTECTED: int;
    var ACC_STATIC: int;
    var ACC_FINAL: int;
    var ACC_SUPER: int;
    var ACC_SYNCHRONIZED: int;
    var ACC_OPEN: int;
    var ACC_TRANSITIVE: int;
    var ACC_VOLATILE: int;
    var ACC_BRIDGE: int;
    var ACC_STATIC_PHASE: int;
    var ACC_VARARGS: int;
    var ACC_TRANSIENT: int;
    var ACC_NATIVE: int;
    var ACC_INTERFACE: int;
    var ACC_ABSTRACT: int;
    var ACC_STRICT: int;
    var ACC_SYNTHETIC: int;
    var ACC_ANNOTATION: int;
    var ACC_ENUM: int;
    var ACC_MANDATED: int;
    var ACC_MODULE: int;
    var ACC_RECORD: int;
    var ACC_DEPRECATED: int;
    var T_BOOLEAN: int;
    var T_CHAR: int;
    var T_FLOAT: int;
    var T_DOUBLE: int;
    var T_BYTE: int;
    var T_SHORT: int;
    var T_INT: int;
    var T_LONG: int;
    var H_GETFIELD: int;
    var H_GETSTATIC: int;
    var H_PUTFIELD: int;
    var H_PUTSTATIC: int;
    var H_INVOKEVIRTUAL: int;
    var H_INVOKESTATIC: int;
    var H_INVOKESPECIAL: int;
    var H_NEWINVOKESPECIAL: int;
    var H_INVOKEINTERFACE: int;
    var F_NEW: int;
    var F_FULL: int;
    var F_APPEND: int;
    var F_CHOP: int;
    var F_SAME: int;
    var F_SAME1: int;
    var TOP: java.lang.Integer;
    var INTEGER: java.lang.Integer;
    var FLOAT: java.lang.Integer;
    var DOUBLE: java.lang.Integer;
    var LONG: java.lang.Integer;
    var NULL: java.lang.Integer;
    var UNINITIALIZED_THIS: java.lang.Integer;
    var NOP: int;
    var ACONST_NULL: int;
    var ICONST_M1: int;
    var ICONST_0: int;
    var ICONST_1: int;
    var ICONST_2: int;
    var ICONST_3: int;
    var ICONST_4: int;
    var ICONST_5: int;
    var LCONST_0: int;
    var LCONST_1: int;
    var FCONST_0: int;
    var FCONST_1: int;
    var FCONST_2: int;
    var DCONST_0: int;
    var DCONST_1: int;
    var BIPUSH: int;
    var SIPUSH: int;
    var LDC: int;
    var ILOAD: int;
    var LLOAD: int;
    var FLOAD: int;
    var DLOAD: int;
    var ALOAD: int;
    var IALOAD: int;
    var LALOAD: int;
    var FALOAD: int;
    var DALOAD: int;
    var AALOAD: int;
    var BALOAD: int;
    var CALOAD: int;
    var SALOAD: int;
    var ISTORE: int;
    var LSTORE: int;
    var FSTORE: int;
    var DSTORE: int;
    var ASTORE: int;
    var IASTORE: int;
    var LASTORE: int;
    var FASTORE: int;
    var DASTORE: int;
    var AASTORE: int;
    var BASTORE: int;
    var CASTORE: int;
    var SASTORE: int;
    var POP: int;
    var POP2: int;
    var DUP: int;
    var DUP_X1: int;
    var DUP_X2: int;
    var DUP2: int;
    var DUP2_X1: int;
    var DUP2_X2: int;
    var SWAP: int;
    var IADD: int;
    var LADD: int;
    var FADD: int;
    var DADD: int;
    var ISUB: int;
    var LSUB: int;
    var FSUB: int;
    var DSUB: int;
    var IMUL: int;
    var LMUL: int;
    var FMUL: int;
    var DMUL: int;
    var IDIV: int;
    var LDIV: int;
    var FDIV: int;
    var DDIV: int;
    var IREM: int;
    var LREM: int;
    var FREM: int;
    var DREM: int;
    var INEG: int;
    var LNEG: int;
    var FNEG: int;
    var DNEG: int;
    var ISHL: int;
    var LSHL: int;
    var ISHR: int;
    var LSHR: int;
    var IUSHR: int;
    var LUSHR: int;
    var IAND: int;
    var LAND: int;
    var IOR: int;
    var LOR: int;
    var IXOR: int;
    var LXOR: int;
    var IINC: int;
    var I2L: int;
    var I2F: int;
    var I2D: int;
    var L2I: int;
    var L2F: int;
    var L2D: int;
    var F2I: int;
    var F2L: int;
    var F2D: int;
    var D2I: int;
    var D2L: int;
    var D2F: int;
    var I2B: int;
    var I2C: int;
    var I2S: int;
    var LCMP: int;
    var FCMPL: int;
    var FCMPG: int;
    var DCMPL: int;
    var DCMPG: int;
    var IFEQ: int;
    var IFNE: int;
    var IFLT: int;
    var IFGE: int;
    var IFGT: int;
    var IFLE: int;
    var IF_ICMPEQ: int;
    var IF_ICMPNE: int;
    var IF_ICMPLT: int;
    var IF_ICMPGE: int;
    var IF_ICMPGT: int;
    var IF_ICMPLE: int;
    var IF_ACMPEQ: int;
    var IF_ACMPNE: int;
    var GOTO: int;
    var JSR: int;
    var RET: int;
    var TABLESWITCH: int;
    var LOOKUPSWITCH: int;
    var IRETURN: int;
    var LRETURN: int;
    var FRETURN: int;
    var DRETURN: int;
    var ARETURN: int;
    var RETURN: int;
    var GETSTATIC: int;
    var PUTSTATIC: int;
    var GETFIELD: int;
    var PUTFIELD: int;
    var INVOKEVIRTUAL: int;
    var INVOKESPECIAL: int;
    var INVOKESTATIC: int;
    var INVOKEINTERFACE: int;
    var INVOKEDYNAMIC: int;
    var NEW: int;
    var NEWARRAY: int;
    var ANEWARRAY: int;
    var ARRAYLENGTH: int;
    var ATHROW: int;
    var CHECKCAST: int;
    var INSTANCEOF: int;
    var MONITORENTER: int;
    var MONITOREXIT: int;
    var MULTIANEWARRAY: int;
    var IFNULL: int;
    var IFNONNULL: int;
    var ADD: int;
    var SUB: int;
    var MUL: int;
    var DIV: int;
    var REM: int;
    var NEG: int;
    var SHL: int;
    var SHR: int;
    var USHR: int;
    var AND: int;
    var OR: int;
    var XOR: int;
    var EQ: int;
    var NE: int;
    var LT: int;
    var GE: int;
    var GT: int;
    var LE: int;
}

type jdk.internal.org.objectweb.asm.commons.RemappingAnnotationAdapter {
}

type jdk.internal.org.objectweb.asm.commons.StaticInitMerger {
}

type jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter {
    var locals: java.util.List;
    var stack: java.util.List;
    var uninitializedTypes: java.util.Map;
}

type jdk.internal.org.objectweb.asm.commons.InstructionAdapter {
    var OBJECT_TYPE: jdk.internal.org.objectweb.asm.Type;
}

type jdk.internal.org.objectweb.asm.commons.AnnotationRemapper {
}

type jdk.internal.org.objectweb.asm.commons.GeneratorAdapter {
    var ADD: int;
    var SUB: int;
    var MUL: int;
    var DIV: int;
    var REM: int;
    var NEG: int;
    var SHL: int;
    var SHR: int;
    var USHR: int;
    var AND: int;
    var OR: int;
    var XOR: int;
    var EQ: int;
    var NE: int;
    var LT: int;
    var GE: int;
    var GT: int;
    var LE: int;
}

type jdk.internal.org.objectweb.asm.commons.ClassRemapper {
}

type jdk.internal.org.objectweb.asm.commons.TryCatchBlockSorter {
    var access: int;
    var name: java.lang.String;
    var desc: java.lang.String;
    var signature: java.lang.String;
    var exceptions: java.util.List;
    var parameters: java.util.List;
    var visibleAnnotations: java.util.List;
    var invisibleAnnotations: java.util.List;
    var visibleTypeAnnotations: java.util.List;
    var invisibleTypeAnnotations: java.util.List;
    var attrs: java.util.List;
    var annotationDefault: java.lang.Object;
    var visibleAnnotableParameterCount: int;
    var visibleParameterAnnotations: array<java.util.List>;
    var invisibleAnnotableParameterCount: int;
    var invisibleParameterAnnotations: array<java.util.List>;
    var instructions: jdk.internal.org.objectweb.asm.tree.InsnList;
    var tryCatchBlocks: java.util.List;
    var maxStack: int;
    var maxLocals: int;
    var localVariables: java.util.List;
    var visibleLocalVariableAnnotations: java.util.List;
    var invisibleLocalVariableAnnotations: java.util.List;
}

type jdk.internal.org.objectweb.asm.Opcodes {
    var ASM4: int;
    var ASM5: int;
    var ASM6: int;
    var ASM7: int;
    var ASM8: int;
    var ASM9_EXPERIMENTAL: int;
    var SOURCE_DEPRECATED: int;
    var SOURCE_MASK: int;
    var V1_1: int;
    var V1_2: int;
    var V1_3: int;
    var V1_4: int;
    var V1_5: int;
    var V1_6: int;
    var V1_7: int;
    var V1_8: int;
    var V9: int;
    var V10: int;
    var V11: int;
    var V12: int;
    var V13: int;
    var V14: int;
    var V15: int;
    var V16: int;
    var V17: int;
    var V_PREVIEW: int;
    var ACC_PUBLIC: int;
    var ACC_PRIVATE: int;
    var ACC_PROTECTED: int;
    var ACC_STATIC: int;
    var ACC_FINAL: int;
    var ACC_SUPER: int;
    var ACC_SYNCHRONIZED: int;
    var ACC_OPEN: int;
    var ACC_TRANSITIVE: int;
    var ACC_VOLATILE: int;
    var ACC_BRIDGE: int;
    var ACC_STATIC_PHASE: int;
    var ACC_VARARGS: int;
    var ACC_TRANSIENT: int;
    var ACC_NATIVE: int;
    var ACC_INTERFACE: int;
    var ACC_ABSTRACT: int;
    var ACC_STRICT: int;
    var ACC_SYNTHETIC: int;
    var ACC_ANNOTATION: int;
    var ACC_ENUM: int;
    var ACC_MANDATED: int;
    var ACC_MODULE: int;
    var ACC_RECORD: int;
    var ACC_DEPRECATED: int;
    var T_BOOLEAN: int;
    var T_CHAR: int;
    var T_FLOAT: int;
    var T_DOUBLE: int;
    var T_BYTE: int;
    var T_SHORT: int;
    var T_INT: int;
    var T_LONG: int;
    var H_GETFIELD: int;
    var H_GETSTATIC: int;
    var H_PUTFIELD: int;
    var H_PUTSTATIC: int;
    var H_INVOKEVIRTUAL: int;
    var H_INVOKESTATIC: int;
    var H_INVOKESPECIAL: int;
    var H_NEWINVOKESPECIAL: int;
    var H_INVOKEINTERFACE: int;
    var F_NEW: int;
    var F_FULL: int;
    var F_APPEND: int;
    var F_CHOP: int;
    var F_SAME: int;
    var F_SAME1: int;
    var TOP: java.lang.Integer;
    var INTEGER: java.lang.Integer;
    var FLOAT: java.lang.Integer;
    var DOUBLE: java.lang.Integer;
    var LONG: java.lang.Integer;
    var NULL: java.lang.Integer;
    var UNINITIALIZED_THIS: java.lang.Integer;
    var NOP: int;
    var ACONST_NULL: int;
    var ICONST_M1: int;
    var ICONST_0: int;
    var ICONST_1: int;
    var ICONST_2: int;
    var ICONST_3: int;
    var ICONST_4: int;
    var ICONST_5: int;
    var LCONST_0: int;
    var LCONST_1: int;
    var FCONST_0: int;
    var FCONST_1: int;
    var FCONST_2: int;
    var DCONST_0: int;
    var DCONST_1: int;
    var BIPUSH: int;
    var SIPUSH: int;
    var LDC: int;
    var ILOAD: int;
    var LLOAD: int;
    var FLOAD: int;
    var DLOAD: int;
    var ALOAD: int;
    var IALOAD: int;
    var LALOAD: int;
    var FALOAD: int;
    var DALOAD: int;
    var AALOAD: int;
    var BALOAD: int;
    var CALOAD: int;
    var SALOAD: int;
    var ISTORE: int;
    var LSTORE: int;
    var FSTORE: int;
    var DSTORE: int;
    var ASTORE: int;
    var IASTORE: int;
    var LASTORE: int;
    var FASTORE: int;
    var DASTORE: int;
    var AASTORE: int;
    var BASTORE: int;
    var CASTORE: int;
    var SASTORE: int;
    var POP: int;
    var POP2: int;
    var DUP: int;
    var DUP_X1: int;
    var DUP_X2: int;
    var DUP2: int;
    var DUP2_X1: int;
    var DUP2_X2: int;
    var SWAP: int;
    var IADD: int;
    var LADD: int;
    var FADD: int;
    var DADD: int;
    var ISUB: int;
    var LSUB: int;
    var FSUB: int;
    var DSUB: int;
    var IMUL: int;
    var LMUL: int;
    var FMUL: int;
    var DMUL: int;
    var IDIV: int;
    var LDIV: int;
    var FDIV: int;
    var DDIV: int;
    var IREM: int;
    var LREM: int;
    var FREM: int;
    var DREM: int;
    var INEG: int;
    var LNEG: int;
    var FNEG: int;
    var DNEG: int;
    var ISHL: int;
    var LSHL: int;
    var ISHR: int;
    var LSHR: int;
    var IUSHR: int;
    var LUSHR: int;
    var IAND: int;
    var LAND: int;
    var IOR: int;
    var LOR: int;
    var IXOR: int;
    var LXOR: int;
    var IINC: int;
    var I2L: int;
    var I2F: int;
    var I2D: int;
    var L2I: int;
    var L2F: int;
    var L2D: int;
    var F2I: int;
    var F2L: int;
    var F2D: int;
    var D2I: int;
    var D2L: int;
    var D2F: int;
    var I2B: int;
    var I2C: int;
    var I2S: int;
    var LCMP: int;
    var FCMPL: int;
    var FCMPG: int;
    var DCMPL: int;
    var DCMPG: int;
    var IFEQ: int;
    var IFNE: int;
    var IFLT: int;
    var IFGE: int;
    var IFGT: int;
    var IFLE: int;
    var IF_ICMPEQ: int;
    var IF_ICMPNE: int;
    var IF_ICMPLT: int;
    var IF_ICMPGE: int;
    var IF_ICMPGT: int;
    var IF_ICMPLE: int;
    var IF_ACMPEQ: int;
    var IF_ACMPNE: int;
    var GOTO: int;
    var JSR: int;
    var RET: int;
    var TABLESWITCH: int;
    var LOOKUPSWITCH: int;
    var IRETURN: int;
    var LRETURN: int;
    var FRETURN: int;
    var DRETURN: int;
    var ARETURN: int;
    var RETURN: int;
    var GETSTATIC: int;
    var PUTSTATIC: int;
    var GETFIELD: int;
    var PUTFIELD: int;
    var INVOKEVIRTUAL: int;
    var INVOKESPECIAL: int;
    var INVOKESTATIC: int;
    var INVOKEINTERFACE: int;
    var INVOKEDYNAMIC: int;
    var NEW: int;
    var NEWARRAY: int;
    var ANEWARRAY: int;
    var ARRAYLENGTH: int;
    var ATHROW: int;
    var CHECKCAST: int;
    var INSTANCEOF: int;
    var MONITORENTER: int;
    var MONITOREXIT: int;
    var MULTIANEWARRAY: int;
    var IFNULL: int;
    var IFNONNULL: int;
}

type jdk.internal.org.objectweb.asm.Type {
    var VOID: int;
    var BOOLEAN: int;
    var CHAR: int;
    var BYTE: int;
    var SHORT: int;
    var INT: int;
    var FLOAT: int;
    var LONG: int;
    var DOUBLE: int;
    var ARRAY: int;
    var OBJECT: int;
    var METHOD: int;
    var VOID_TYPE: jdk.internal.org.objectweb.asm.Type;
    var BOOLEAN_TYPE: jdk.internal.org.objectweb.asm.Type;
    var CHAR_TYPE: jdk.internal.org.objectweb.asm.Type;
    var BYTE_TYPE: jdk.internal.org.objectweb.asm.Type;
    var SHORT_TYPE: jdk.internal.org.objectweb.asm.Type;
    var INT_TYPE: jdk.internal.org.objectweb.asm.Type;
    var FLOAT_TYPE: jdk.internal.org.objectweb.asm.Type;
    var LONG_TYPE: jdk.internal.org.objectweb.asm.Type;
    var DOUBLE_TYPE: jdk.internal.org.objectweb.asm.Type;
}

type jdk.internal.org.objectweb.asm.ClassVisitor {
}

type jdk.internal.org.objectweb.asm.FieldVisitor {
}

type jdk.internal.org.objectweb.asm.CurrentFrame {
}

type jdk.internal.org.objectweb.asm.AnnotationWriter {
}

type jdk.internal.org.objectweb.asm.Frame {
}

type jdk.internal.org.objectweb.asm.Context {
}

type jdk.internal.org.objectweb.asm.MethodWriter {
}

type jdk.internal.org.objectweb.asm.ConstantDynamic {
}

type jdk.internal.org.objectweb.asm.Handler {
}

type jdk.internal.org.objectweb.asm.TypeReference {
    var CLASS_TYPE_PARAMETER: int;
    var METHOD_TYPE_PARAMETER: int;
    var CLASS_EXTENDS: int;
    var CLASS_TYPE_PARAMETER_BOUND: int;
    var METHOD_TYPE_PARAMETER_BOUND: int;
    var FIELD: int;
    var METHOD_RETURN: int;
    var METHOD_RECEIVER: int;
    var METHOD_FORMAL_PARAMETER: int;
    var THROWS: int;
    var LOCAL_VARIABLE: int;
    var RESOURCE_VARIABLE: int;
    var EXCEPTION_PARAMETER: int;
    var INSTANCEOF: int;
    var NEW: int;
    var CONSTRUCTOR_REFERENCE: int;
    var METHOD_REFERENCE: int;
    var CAST: int;
    var CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT: int;
    var METHOD_INVOCATION_TYPE_ARGUMENT: int;
    var CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT: int;
    var METHOD_REFERENCE_TYPE_ARGUMENT: int;
}

type jdk.internal.org.objectweb.asm.RecordComponentWriter {
}

type jdk.internal.org.objectweb.asm.SymbolTable {
}

type jdk.internal.org.objectweb.asm.ModuleVisitor {
}

type jdk.internal.org.objectweb.asm.MethodVisitor {
}

type jdk.internal.org.objectweb.asm.AnnotationVisitor {
}

type jdk.internal.org.objectweb.asm.ByteVector {
}

type jdk.internal.org.objectweb.asm.TypePath {
    var ARRAY_ELEMENT: int;
    var INNER_TYPE: int;
    var WILDCARD_BOUND: int;
    var TYPE_ARGUMENT: int;
}

type jdk.internal.org.objectweb.asm.Attribute {
    var `type`: java.lang.String;
}

type jdk.internal.org.objectweb.asm.MethodTooLargeException {
}

type jdk.internal.org.objectweb.asm.Handle {
}

type jdk.internal.org.objectweb.asm.Symbol {
}

type jdk.internal.org.objectweb.asm.ClassReader {
    var SKIP_CODE: int;
    var SKIP_DEBUG: int;
    var SKIP_FRAMES: int;
    var EXPAND_FRAMES: int;
    var b: array<byte>;
    var header: int;
}

type jdk.internal.org.xml.sax.SAXNotRecognizedException {
}

type jdk.internal.org.xml.sax.SAXNotSupportedException {
}

type jdk.internal.org.xml.sax.Attributes {
}

type jdk.internal.org.xml.sax.SAXParseException {
}

type jdk.internal.org.xml.sax.ErrorHandler {
}

type jdk.internal.org.xml.sax.SAXException {
}

type jdk.internal.org.xml.sax.EntityResolver {
}

type jdk.internal.org.xml.sax.InputSource {
}

type jdk.internal.org.xml.sax.Locator {
}

type jdk.internal.org.xml.sax.XMLReader {
}

type jdk.internal.org.xml.sax.ContentHandler {
}

type jdk.internal.org.xml.sax.helpers.DefaultHandler {
}

type jdk.internal.org.xml.sax.DTDHandler {
}

type jdk.internal.invoke.ABIDescriptorProxy {
}

type jdk.internal.invoke.NativeEntryPoint {
}

type jdk.internal.invoke.VMStorageProxy {
}

type jdk.internal.module.ServicesCatalog {
}

type jdk.internal.module.ExplodedSystemModules {
}

type jdk.internal.module.ModulePath {
}

type jdk.internal.module.ModuleHashes {
}

type jdk.internal.module.SystemModuleFinders {
}

type jdk.internal.module.ModuleInfoExtender {
}

type jdk.internal.module.ModuleLoaderMap {
}

type jdk.internal.module.ModuleReferences {
}

type jdk.internal.module.ModulePathValidator {
}

type jdk.internal.module.ClassFileConstants {
    var MODULE: java.lang.String;
    var SOURCE_FILE: java.lang.String;
    var SDE: java.lang.String;
    var MODULE_PACKAGES: java.lang.String;
    var MODULE_MAIN_CLASS: java.lang.String;
    var MODULE_TARGET: java.lang.String;
    var MODULE_HASHES: java.lang.String;
    var MODULE_RESOLUTION: java.lang.String;
    var ACC_MODULE: int;
    var ACC_OPEN: int;
    var ACC_TRANSITIVE: int;
    var ACC_STATIC_PHASE: int;
    var ACC_SYNTHETIC: int;
    var ACC_MANDATED: int;
    var DO_NOT_RESOLVE_BY_DEFAULT: int;
    var WARN_DEPRECATED: int;
    var WARN_DEPRECATED_FOR_REMOVAL: int;
    var WARN_INCUBATING: int;
}

type jdk.internal.module.ArchivedBootLayer {
}

type jdk.internal.module.DefaultRoots {
}

type jdk.internal.module.ModuleResolution {
}

type jdk.internal.module.Checks {
}

type jdk.internal.module.Builder {
}

type jdk.internal.module.SystemModules {
}

type jdk.internal.module.Modules {
}

type jdk.internal.module.SystemModulesMap {
}

type jdk.internal.module.ModuleTarget {
}

type jdk.internal.module.ArchivedModuleGraph {
}

type jdk.internal.module.ModuleInfoWriter {
}

type jdk.internal.module.ModuleReferenceImpl {
}

type jdk.internal.module.ModuleBootstrap {
}

type jdk.internal.module.ModuleInfo {
}

type jdk.internal.module.ModuleHashesBuilder {
}

type jdk.internal.module.Resources {
}

type jdk.internal.module.ModulePatcher {
}

type jdk.internal.platform.Container {
}

type jdk.internal.platform.Metrics {
}

type jdk.internal.reflect.UnsafeIntegerFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeStaticFloatFieldAccessorImpl {
}

type jdk.internal.reflect.ByteVectorImpl {
}

type jdk.internal.reflect.UnsafeQualifiedByteFieldAccessorImpl {
}

type jdk.internal.reflect.SerializationConstructorAccessorImpl {
}

type jdk.internal.reflect.UnsafeFieldAccessorFactory {
}

type jdk.internal.reflect.UnsafeFieldAccessorImpl {
}

type jdk.internal.reflect.Label {
}

type jdk.internal.reflect.UnsafeQualifiedStaticDoubleFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeQualifiedObjectFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeStaticDoubleFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeQualifiedStaticLongFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeStaticIntegerFieldAccessorImpl {
}

type jdk.internal.reflect.DelegatingClassLoader {
}

type jdk.internal.reflect.ConstructorAccessorImpl {
}

type jdk.internal.reflect.ReflectionFactory {
}

type jdk.internal.reflect.NativeMethodAccessorImpl {
}

type jdk.internal.reflect.MethodAccessorImpl {
}

type jdk.internal.reflect.ByteVectorFactory {
}

type jdk.internal.reflect.InstantiationExceptionConstructorAccessorImpl {
}

type jdk.internal.reflect.UnsafeQualifiedLongFieldAccessorImpl {
}

type jdk.internal.reflect.ConstructorAccessor {
}

type jdk.internal.reflect.DelegatingConstructorAccessorImpl {
}

type jdk.internal.reflect.NativeConstructorAccessorImpl {
}

type jdk.internal.reflect.UnsafeQualifiedBooleanFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeStaticFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeShortFieldAccessorImpl {
}

type jdk.internal.reflect.ClassFileConstants {
    var opc_aconst_null: byte;
    var opc_sipush: byte;
    var opc_ldc: byte;
    var opc_iload_0: byte;
    var opc_iload_1: byte;
    var opc_iload_2: byte;
    var opc_iload_3: byte;
    var opc_lload_0: byte;
    var opc_lload_1: byte;
    var opc_lload_2: byte;
    var opc_lload_3: byte;
    var opc_fload_0: byte;
    var opc_fload_1: byte;
    var opc_fload_2: byte;
    var opc_fload_3: byte;
    var opc_dload_0: byte;
    var opc_dload_1: byte;
    var opc_dload_2: byte;
    var opc_dload_3: byte;
    var opc_aload_0: byte;
    var opc_aload_1: byte;
    var opc_aload_2: byte;
    var opc_aload_3: byte;
    var opc_aaload: byte;
    var opc_astore_0: byte;
    var opc_astore_1: byte;
    var opc_astore_2: byte;
    var opc_astore_3: byte;
    var opc_pop: byte;
    var opc_dup: byte;
    var opc_dup_x1: byte;
    var opc_swap: byte;
    var opc_i2l: byte;
    var opc_i2f: byte;
    var opc_i2d: byte;
    var opc_l2i: byte;
    var opc_l2f: byte;
    var opc_l2d: byte;
    var opc_f2i: byte;
    var opc_f2l: byte;
    var opc_f2d: byte;
    var opc_d2i: byte;
    var opc_d2l: byte;
    var opc_d2f: byte;
    var opc_i2b: byte;
    var opc_i2c: byte;
    var opc_i2s: byte;
    var opc_ifeq: byte;
    var opc_if_icmpeq: byte;
    var opc_goto: byte;
    var opc_ireturn: byte;
    var opc_lreturn: byte;
    var opc_freturn: byte;
    var opc_dreturn: byte;
    var opc_areturn: byte;
    var opc_return: byte;
    var opc_getstatic: byte;
    var opc_putstatic: byte;
    var opc_getfield: byte;
    var opc_putfield: byte;
    var opc_invokevirtual: byte;
    var opc_invokespecial: byte;
    var opc_invokestatic: byte;
    var opc_invokeinterface: byte;
    var opc_arraylength: byte;
    var opc_new: byte;
    var opc_athrow: byte;
    var opc_checkcast: byte;
    var opc_instanceof: byte;
    var opc_ifnull: byte;
    var opc_ifnonnull: byte;
    var CONSTANT_Class: byte;
    var CONSTANT_Fieldref: byte;
    var CONSTANT_Methodref: byte;
    var CONSTANT_InterfaceMethodref: byte;
    var CONSTANT_NameAndType: byte;
    var CONSTANT_String: byte;
    var CONSTANT_Utf8: byte;
    var ACC_PUBLIC: short;
}

type jdk.internal.reflect.UnsafeQualifiedStaticByteFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeQualifiedShortFieldAccessorImpl {
}

type jdk.internal.reflect.DelegatingMethodAccessorImpl {
}

type jdk.internal.reflect.UnsafeQualifiedStaticBooleanFieldAccessorImpl {
}

type jdk.internal.reflect.MethodAccessor {
}

type jdk.internal.reflect.UnsafeQualifiedStaticFloatFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeDoubleFieldAccessorImpl {
}

type jdk.internal.reflect.FieldAccessor {
}

type jdk.internal.reflect.FieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeStaticShortFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeQualifiedStaticIntegerFieldAccessorImpl {
}

type jdk.internal.reflect.ClassDefiner {
}

type jdk.internal.reflect.UnsafeQualifiedStaticCharacterFieldAccessorImpl {
}

type jdk.internal.reflect.MagicAccessorImpl {
}

type jdk.internal.reflect.UnsafeQualifiedCharacterFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeStaticCharacterFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeObjectFieldAccessorImpl {
}

type jdk.internal.reflect.ClassFileAssembler {
    var opc_aconst_null: byte;
    var opc_sipush: byte;
    var opc_ldc: byte;
    var opc_iload_0: byte;
    var opc_iload_1: byte;
    var opc_iload_2: byte;
    var opc_iload_3: byte;
    var opc_lload_0: byte;
    var opc_lload_1: byte;
    var opc_lload_2: byte;
    var opc_lload_3: byte;
    var opc_fload_0: byte;
    var opc_fload_1: byte;
    var opc_fload_2: byte;
    var opc_fload_3: byte;
    var opc_dload_0: byte;
    var opc_dload_1: byte;
    var opc_dload_2: byte;
    var opc_dload_3: byte;
    var opc_aload_0: byte;
    var opc_aload_1: byte;
    var opc_aload_2: byte;
    var opc_aload_3: byte;
    var opc_aaload: byte;
    var opc_astore_0: byte;
    var opc_astore_1: byte;
    var opc_astore_2: byte;
    var opc_astore_3: byte;
    var opc_pop: byte;
    var opc_dup: byte;
    var opc_dup_x1: byte;
    var opc_swap: byte;
    var opc_i2l: byte;
    var opc_i2f: byte;
    var opc_i2d: byte;
    var opc_l2i: byte;
    var opc_l2f: byte;
    var opc_l2d: byte;
    var opc_f2i: byte;
    var opc_f2l: byte;
    var opc_f2d: byte;
    var opc_d2i: byte;
    var opc_d2l: byte;
    var opc_d2f: byte;
    var opc_i2b: byte;
    var opc_i2c: byte;
    var opc_i2s: byte;
    var opc_ifeq: byte;
    var opc_if_icmpeq: byte;
    var opc_goto: byte;
    var opc_ireturn: byte;
    var opc_lreturn: byte;
    var opc_freturn: byte;
    var opc_dreturn: byte;
    var opc_areturn: byte;
    var opc_return: byte;
    var opc_getstatic: byte;
    var opc_putstatic: byte;
    var opc_getfield: byte;
    var opc_putfield: byte;
    var opc_invokevirtual: byte;
    var opc_invokespecial: byte;
    var opc_invokestatic: byte;
    var opc_invokeinterface: byte;
    var opc_arraylength: byte;
    var opc_new: byte;
    var opc_athrow: byte;
    var opc_checkcast: byte;
    var opc_instanceof: byte;
    var opc_ifnull: byte;
    var opc_ifnonnull: byte;
    var CONSTANT_Class: byte;
    var CONSTANT_Fieldref: byte;
    var CONSTANT_Methodref: byte;
    var CONSTANT_InterfaceMethodref: byte;
    var CONSTANT_NameAndType: byte;
    var CONSTANT_String: byte;
    var CONSTANT_Utf8: byte;
    var ACC_PUBLIC: short;
}

type jdk.internal.reflect.UnsafeStaticLongFieldAccessorImpl {
}

type jdk.internal.reflect.AccessorGenerator {
    var opc_aconst_null: byte;
    var opc_sipush: byte;
    var opc_ldc: byte;
    var opc_iload_0: byte;
    var opc_iload_1: byte;
    var opc_iload_2: byte;
    var opc_iload_3: byte;
    var opc_lload_0: byte;
    var opc_lload_1: byte;
    var opc_lload_2: byte;
    var opc_lload_3: byte;
    var opc_fload_0: byte;
    var opc_fload_1: byte;
    var opc_fload_2: byte;
    var opc_fload_3: byte;
    var opc_dload_0: byte;
    var opc_dload_1: byte;
    var opc_dload_2: byte;
    var opc_dload_3: byte;
    var opc_aload_0: byte;
    var opc_aload_1: byte;
    var opc_aload_2: byte;
    var opc_aload_3: byte;
    var opc_aaload: byte;
    var opc_astore_0: byte;
    var opc_astore_1: byte;
    var opc_astore_2: byte;
    var opc_astore_3: byte;
    var opc_pop: byte;
    var opc_dup: byte;
    var opc_dup_x1: byte;
    var opc_swap: byte;
    var opc_i2l: byte;
    var opc_i2f: byte;
    var opc_i2d: byte;
    var opc_l2i: byte;
    var opc_l2f: byte;
    var opc_l2d: byte;
    var opc_f2i: byte;
    var opc_f2l: byte;
    var opc_f2d: byte;
    var opc_d2i: byte;
    var opc_d2l: byte;
    var opc_d2f: byte;
    var opc_i2b: byte;
    var opc_i2c: byte;
    var opc_i2s: byte;
    var opc_ifeq: byte;
    var opc_if_icmpeq: byte;
    var opc_goto: byte;
    var opc_ireturn: byte;
    var opc_lreturn: byte;
    var opc_freturn: byte;
    var opc_dreturn: byte;
    var opc_areturn: byte;
    var opc_return: byte;
    var opc_getstatic: byte;
    var opc_putstatic: byte;
    var opc_getfield: byte;
    var opc_putfield: byte;
    var opc_invokevirtual: byte;
    var opc_invokespecial: byte;
    var opc_invokestatic: byte;
    var opc_invokeinterface: byte;
    var opc_arraylength: byte;
    var opc_new: byte;
    var opc_athrow: byte;
    var opc_checkcast: byte;
    var opc_instanceof: byte;
    var opc_ifnull: byte;
    var opc_ifnonnull: byte;
    var CONSTANT_Class: byte;
    var CONSTANT_Fieldref: byte;
    var CONSTANT_Methodref: byte;
    var CONSTANT_InterfaceMethodref: byte;
    var CONSTANT_NameAndType: byte;
    var CONSTANT_String: byte;
    var CONSTANT_Utf8: byte;
    var ACC_PUBLIC: short;
}

type jdk.internal.reflect.Reflection {
}

type jdk.internal.reflect.UnsafeByteFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeQualifiedFieldAccessorImpl {
}

type jdk.internal.reflect.UTF8 {
}

type jdk.internal.reflect.UnsafeQualifiedIntegerFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeStaticBooleanFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeFloatFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeQualifiedStaticFieldAccessorImpl {
}

type jdk.internal.reflect.ByteVector {
}

type jdk.internal.reflect.UnsafeCharacterFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeQualifiedFloatFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeBooleanFieldAccessorImpl {
}

type jdk.internal.reflect.ConstantPool {
}

type jdk.internal.reflect.UnsafeStaticByteFieldAccessorImpl {
}

type jdk.internal.reflect.BootstrapConstructorAccessorImpl {
}

type jdk.internal.reflect.UnsafeLongFieldAccessorImpl {
}

type jdk.internal.reflect.SignatureIterator {
}

type jdk.internal.reflect.UnsafeQualifiedStaticShortFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeQualifiedDoubleFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeStaticObjectFieldAccessorImpl {
}

type jdk.internal.reflect.UnsafeQualifiedStaticObjectFieldAccessorImpl {
}

type jdk.internal.reflect.MethodAccessorGenerator {
    var opc_aconst_null: byte;
    var opc_sipush: byte;
    var opc_ldc: byte;
    var opc_iload_0: byte;
    var opc_iload_1: byte;
    var opc_iload_2: byte;
    var opc_iload_3: byte;
    var opc_lload_0: byte;
    var opc_lload_1: byte;
    var opc_lload_2: byte;
    var opc_lload_3: byte;
    var opc_fload_0: byte;
    var opc_fload_1: byte;
    var opc_fload_2: byte;
    var opc_fload_3: byte;
    var opc_dload_0: byte;
    var opc_dload_1: byte;
    var opc_dload_2: byte;
    var opc_dload_3: byte;
    var opc_aload_0: byte;
    var opc_aload_1: byte;
    var opc_aload_2: byte;
    var opc_aload_3: byte;
    var opc_aaload: byte;
    var opc_astore_0: byte;
    var opc_astore_1: byte;
    var opc_astore_2: byte;
    var opc_astore_3: byte;
    var opc_pop: byte;
    var opc_dup: byte;
    var opc_dup_x1: byte;
    var opc_swap: byte;
    var opc_i2l: byte;
    var opc_i2f: byte;
    var opc_i2d: byte;
    var opc_l2i: byte;
    var opc_l2f: byte;
    var opc_l2d: byte;
    var opc_f2i: byte;
    var opc_f2l: byte;
    var opc_f2d: byte;
    var opc_d2i: byte;
    var opc_d2l: byte;
    var opc_d2f: byte;
    var opc_i2b: byte;
    var opc_i2c: byte;
    var opc_i2s: byte;
    var opc_ifeq: byte;
    var opc_if_icmpeq: byte;
    var opc_goto: byte;
    var opc_ireturn: byte;
    var opc_lreturn: byte;
    var opc_freturn: byte;
    var opc_dreturn: byte;
    var opc_areturn: byte;
    var opc_return: byte;
    var opc_getstatic: byte;
    var opc_putstatic: byte;
    var opc_getfield: byte;
    var opc_putfield: byte;
    var opc_invokevirtual: byte;
    var opc_invokespecial: byte;
    var opc_invokestatic: byte;
    var opc_invokeinterface: byte;
    var opc_arraylength: byte;
    var opc_new: byte;
    var opc_athrow: byte;
    var opc_checkcast: byte;
    var opc_instanceof: byte;
    var opc_ifnull: byte;
    var opc_ifnonnull: byte;
    var CONSTANT_Class: byte;
    var CONSTANT_Fieldref: byte;
    var CONSTANT_Methodref: byte;
    var CONSTANT_InterfaceMethodref: byte;
    var CONSTANT_NameAndType: byte;
    var CONSTANT_String: byte;
    var CONSTANT_Utf8: byte;
    var ACC_PUBLIC: short;
}

type jdk.internal.math.FDBigInteger {
    var ZERO: jdk.internal.math.FDBigInteger;
}

type jdk.internal.math.DoubleConsts {
    var SIGNIFICAND_WIDTH: int;
    var MIN_SUB_EXPONENT: int;
    var EXP_BIAS: int;
    var SIGN_BIT_MASK: long;
    var EXP_BIT_MASK: long;
    var SIGNIF_BIT_MASK: long;
}

type jdk.internal.math.FloatingDecimal {
}

type jdk.internal.math.FormattedFloatingDecimal {
}

type jdk.internal.math.FloatConsts {
    var SIGNIFICAND_WIDTH: int;
    var MIN_SUB_EXPONENT: int;
    var EXP_BIAS: int;
    var SIGN_BIT_MASK: int;
    var EXP_BIT_MASK: int;
    var SIGNIF_BIT_MASK: int;
}

type jdk.internal.vm.VMSupport {
}

type jdk.internal.vm.vector.VectorSupport {
    var VECTOR_OP_ABS: int;
    var VECTOR_OP_NEG: int;
    var VECTOR_OP_SQRT: int;
    var VECTOR_OP_ADD: int;
    var VECTOR_OP_SUB: int;
    var VECTOR_OP_MUL: int;
    var VECTOR_OP_DIV: int;
    var VECTOR_OP_MIN: int;
    var VECTOR_OP_MAX: int;
    var VECTOR_OP_AND: int;
    var VECTOR_OP_OR: int;
    var VECTOR_OP_XOR: int;
    var VECTOR_OP_FMA: int;
    var VECTOR_OP_LSHIFT: int;
    var VECTOR_OP_RSHIFT: int;
    var VECTOR_OP_URSHIFT: int;
    var VECTOR_OP_CAST: int;
    var VECTOR_OP_REINTERPRET: int;
    var VECTOR_OP_MASK_TRUECOUNT: int;
    var VECTOR_OP_MASK_FIRSTTRUE: int;
    var VECTOR_OP_MASK_LASTTRUE: int;
    var VECTOR_OP_TAN: int;
    var VECTOR_OP_TANH: int;
    var VECTOR_OP_SIN: int;
    var VECTOR_OP_SINH: int;
    var VECTOR_OP_COS: int;
    var VECTOR_OP_COSH: int;
    var VECTOR_OP_ASIN: int;
    var VECTOR_OP_ACOS: int;
    var VECTOR_OP_ATAN: int;
    var VECTOR_OP_ATAN2: int;
    var VECTOR_OP_CBRT: int;
    var VECTOR_OP_LOG: int;
    var VECTOR_OP_LOG10: int;
    var VECTOR_OP_LOG1P: int;
    var VECTOR_OP_POW: int;
    var VECTOR_OP_EXP: int;
    var VECTOR_OP_EXPM1: int;
    var VECTOR_OP_HYPOT: int;
    var BT_eq: int;
    var BT_ne: int;
    var BT_le: int;
    var BT_ge: int;
    var BT_lt: int;
    var BT_gt: int;
    var BT_overflow: int;
    var BT_no_overflow: int;
    var BT_unsigned_compare: int;
    var BT_ule: int;
    var BT_uge: int;
    var BT_ult: int;
    var BT_ugt: int;
    var T_FLOAT: int;
    var T_DOUBLE: int;
    var T_BYTE: int;
    var T_SHORT: int;
    var T_INT: int;
    var T_LONG: int;
}

type jdk.internal.jrtfs.JrtDirectoryStream {
}

type jdk.internal.jrtfs.JrtFileAttributeView {
}

type jdk.internal.jrtfs.SystemImage {
}

type jdk.internal.jrtfs.JrtFileAttributes {
}

type jdk.internal.jrtfs.JrtFileSystem {
}

type jdk.internal.jrtfs.JrtPath {
}

type jdk.internal.jrtfs.JrtFileSystemProvider {
}

type jdk.internal.jrtfs.JrtUtils {
}

type jdk.internal.jrtfs.ExplodedImage {
}

type jdk.internal.jrtfs.JrtFileStore {
}

type jdk.internal.loader.FileURLMapper {
}

type jdk.internal.loader.AbstractClassLoaderValue {
}

type jdk.internal.loader.NativeLibrary {
}

type jdk.internal.loader.LoaderPool {
}

type jdk.internal.loader.NativeLibraries {
}

type jdk.internal.loader.BootLoader {
}

type jdk.internal.loader.URLClassPath {
}

type jdk.internal.loader.BuiltinClassLoader {
}

type jdk.internal.loader.Loader {
}

type jdk.internal.loader.Resource {
}

type jdk.internal.loader.ArchivedClassLoaders {
}

type jdk.internal.loader.ClassLoaderHelper {
}

type jdk.internal.loader.ClassLoaders {
}

type jdk.internal.loader.ClassLoaderValue {
}

type jdk.internal.jmod.JmodFile {
}

type jdk.internal.perf.PerfCounter {
}

type jdk.internal.perf.Perf {
}

type jdk.internal.event.SecurityPropertyModificationEvent {
    var key: java.lang.String;
    var value: java.lang.String;
}

type jdk.internal.event.Event {
}

type jdk.internal.event.TLSHandshakeEvent {
    var peerHost: java.lang.String;
    var peerPort: int;
    var protocolVersion: java.lang.String;
    var cipherSuite: java.lang.String;
    var certificateId: long;
}

type jdk.internal.event.X509ValidationEvent {
    var certificateId: long;
    var certificatePosition: int;
    var validationCounter: long;
}

type jdk.internal.event.X509CertificateEvent {
    var algorithm: java.lang.String;
    var serialNumber: java.lang.String;
    var subject: java.lang.String;
    var issuer: java.lang.String;
    var keyType: java.lang.String;
    var keyLength: int;
    var certificateId: long;
    var validFrom: long;
    var validUntil: long;
}

type jdk.internal.event.ProcessStartEvent {
    var pid: long;
    var directory: java.lang.String;
    var command: java.lang.String;
}

type jdk.internal.event.EventHelper {
}

type jdk.internal.icu.impl.UBiDiProps {
    var INSTANCE: jdk.internal.icu.impl.UBiDiProps;
}

type jdk.internal.icu.impl.UCharacterProperty {
    var INSTANCE: jdk.internal.icu.impl.UCharacterProperty;
    var m_trie_: jdk.internal.icu.impl.Trie2_16;
    var m_unicodeVersion_: jdk.internal.icu.util.VersionInfo;
    var TYPE_MASK: int;
    var SRC_CHAR: int;
    var SRC_PROPSVEC: int;
    var SRC_BIDI: int;
    var SRC_NFC: int;
    var SRC_NFKC: int;
    var m_scriptExtensions_: array<char>;
    var SCRIPT_X_MASK: int;
    var SCRIPT_HIGH_MASK: int;
    var SCRIPT_HIGH_SHIFT: int;
    var MAX_SCRIPT: int;
    var SCRIPT_LOW_MASK: int;
    var BIDI_PAIRED_BRACKET_TYPE: int;
}

type jdk.internal.icu.impl.UnicodeSetStringSpan {
    var WITH_COUNT: int;
    var FWD: int;
    var BACK: int;
    var CONTAINED: int;
    var NOT_CONTAINED: int;
    var ALL: int;
    var FWD_UTF16_CONTAINED: int;
    var FWD_UTF16_NOT_CONTAINED: int;
    var BACK_UTF16_CONTAINED: int;
    var BACK_UTF16_NOT_CONTAINED: int;
}

type jdk.internal.icu.impl.CharTrie {
}

type jdk.internal.icu.impl.Trie2 {
}

type jdk.internal.icu.impl.ReplaceableUCharacterIterator {
    var DONE: int;
}

type jdk.internal.icu.impl.Norm2AllModes {
    var impl: jdk.internal.icu.impl.NormalizerImpl;
}

type jdk.internal.icu.impl.Punycode {
}

type jdk.internal.icu.impl.Trie2_16 {
}

type jdk.internal.icu.impl.BMPSet {
}

type jdk.internal.icu.impl.Trie {
}

type jdk.internal.icu.impl.NormalizerImpl {
    var MIN_YES_YES_WITH_CC: int;
    var JAMO_VT: int;
    var MIN_NORMAL_MAYBE_YES: int;
    var JAMO_L: int;
    var INERT: int;
    var HAS_COMP_BOUNDARY_AFTER: int;
    var OFFSET_SHIFT: int;
    var DELTA_TCCC_0: int;
    var DELTA_TCCC_1: int;
    var DELTA_TCCC_GT_1: int;
    var DELTA_TCCC_MASK: int;
    var DELTA_SHIFT: int;
    var MAX_DELTA: int;
    var IX_NORM_TRIE_OFFSET: int;
    var IX_EXTRA_DATA_OFFSET: int;
    var IX_SMALL_FCD_OFFSET: int;
    var IX_RESERVED3_OFFSET: int;
    var IX_TOTAL_SIZE: int;
    var MIN_CCC_LCCC_CP: int;
    var IX_MIN_DECOMP_NO_CP: int;
    var IX_MIN_COMP_NO_MAYBE_CP: int;
    var IX_MIN_YES_NO: int;
    var IX_MIN_NO_NO: int;
    var IX_LIMIT_NO_NO: int;
    var IX_MIN_MAYBE_YES: int;
    var IX_MIN_YES_NO_MAPPINGS_ONLY: int;
    var IX_MIN_NO_NO_COMP_BOUNDARY_BEFORE: int;
    var IX_MIN_NO_NO_COMP_NO_MAYBE_CC: int;
    var IX_MIN_NO_NO_EMPTY: int;
    var IX_MIN_LCCC_CP: int;
    var IX_COUNT: int;
    var MAPPING_HAS_CCC_LCCC_WORD: int;
    var MAPPING_HAS_RAW_MAPPING: int;
    var MAPPING_LENGTH_MASK: int;
    var COMP_1_LAST_TUPLE: int;
    var COMP_1_TRIPLE: int;
    var COMP_1_TRAIL_LIMIT: int;
    var COMP_1_TRAIL_MASK: int;
    var COMP_1_TRAIL_SHIFT: int;
    var COMP_2_TRAIL_SHIFT: int;
    var COMP_2_TRAIL_MASK: int;
}

type jdk.internal.icu.impl.Utility {
}

type jdk.internal.icu.impl.StringPrepDataReader {
}

type jdk.internal.icu.impl.ICUBinary {
}

type jdk.internal.icu.impl.CharacterIteratorWrapper {
    var DONE: int;
}

type jdk.internal.icu.util.CodePointTrie {
}

type jdk.internal.icu.util.OutputInt {
    var value: int;
}

type jdk.internal.icu.util.CodePointMap {
}

type jdk.internal.icu.util.VersionInfo {
    var ICU_DATA_VERSION_PATH: java.lang.String;
}

type jdk.internal.icu.lang.UCharacterDirection {
    var LEFT_TO_RIGHT: int;
    var DIRECTIONALITY_LEFT_TO_RIGHT: byte;
    var RIGHT_TO_LEFT: int;
    var DIRECTIONALITY_RIGHT_TO_LEFT: byte;
    var EUROPEAN_NUMBER: int;
    var DIRECTIONALITY_EUROPEAN_NUMBER: byte;
    var EUROPEAN_NUMBER_SEPARATOR: int;
    var DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR: byte;
    var EUROPEAN_NUMBER_TERMINATOR: int;
    var DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR: byte;
    var ARABIC_NUMBER: int;
    var DIRECTIONALITY_ARABIC_NUMBER: byte;
    var COMMON_NUMBER_SEPARATOR: int;
    var DIRECTIONALITY_COMMON_NUMBER_SEPARATOR: byte;
    var BLOCK_SEPARATOR: int;
    var DIRECTIONALITY_PARAGRAPH_SEPARATOR: byte;
    var SEGMENT_SEPARATOR: int;
    var DIRECTIONALITY_SEGMENT_SEPARATOR: byte;
    var WHITE_SPACE_NEUTRAL: int;
    var DIRECTIONALITY_WHITESPACE: byte;
    var OTHER_NEUTRAL: int;
    var DIRECTIONALITY_OTHER_NEUTRALS: byte;
    var LEFT_TO_RIGHT_EMBEDDING: int;
    var DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING: byte;
    var LEFT_TO_RIGHT_OVERRIDE: int;
    var DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE: byte;
    var RIGHT_TO_LEFT_ARABIC: int;
    var DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC: byte;
    var RIGHT_TO_LEFT_EMBEDDING: int;
    var DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING: byte;
    var RIGHT_TO_LEFT_OVERRIDE: int;
    var DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE: byte;
    var POP_DIRECTIONAL_FORMAT: int;
    var DIRECTIONALITY_POP_DIRECTIONAL_FORMAT: byte;
    var DIR_NON_SPACING_MARK: int;
    var DIRECTIONALITY_NON_SPACING_MARK: byte;
    var BOUNDARY_NEUTRAL: int;
    var DIRECTIONALITY_BOUNDARY_NEUTRAL: byte;
    var CHAR_DIRECTION_COUNT: int;
    var DIRECTIONALITY_UNDEFINED: byte;
}

type jdk.internal.icu.lang.UCharacterEnums {
}

type jdk.internal.icu.lang.UCharacter {
    var MIN_VALUE: int;
    var MAX_VALUE: int;
    var NON_SPACING_MARK: byte;
    var ENCLOSING_MARK: byte;
    var COMBINING_SPACING_MARK: byte;
    var CHAR_CATEGORY_COUNT: byte;
    var RIGHT_TO_LEFT: int;
    var RIGHT_TO_LEFT_ARABIC: int;
}

type jdk.internal.icu.text.Normalizer2 {
}

type jdk.internal.icu.text.BidiLine {
}

type jdk.internal.icu.text.Replaceable {
}

type jdk.internal.icu.text.BidiBase {
    var LEVEL_DEFAULT_LTR: byte;
    var LEVEL_DEFAULT_RTL: byte;
    var MAX_EXPLICIT_LEVEL: byte;
    var LEVEL_OVERRIDE: byte;
    var MAP_NOWHERE: int;
    var LTR: byte;
    var RTL: byte;
    var MIXED: byte;
    var KEEP_BASE_COMBINING: short;
    var DO_MIRRORING: short;
    var INSERT_LRM_FOR_NUMERIC: short;
    var REMOVE_BIDI_CONTROLS: short;
    var OUTPUT_REVERSE: short;
    var BIDI_PAIRED_BRACKET_TYPE: int;
    var length: int;
    var DIRECTION_DEFAULT_RIGHT_TO_LEFT: int;
}

type jdk.internal.icu.text.NormalizerBase {
    var UNICODE_3_2: int;
    var UNICODE_3_2_0_ORIGINAL: int;
    var UNICODE_LATEST: int;
    var DONE: int;
}

type jdk.internal.icu.text.ReplaceableString {
}

type jdk.internal.icu.text.UTF16 {
    var CODEPOINT_MIN_VALUE: int;
    var CODEPOINT_MAX_VALUE: int;
    var SUPPLEMENTARY_MIN_VALUE: int;
    var LEAD_SURROGATE_MIN_VALUE: int;
    var TRAIL_SURROGATE_MIN_VALUE: int;
    var LEAD_SURROGATE_MAX_VALUE: int;
    var TRAIL_SURROGATE_MAX_VALUE: int;
    var SURROGATE_MIN_VALUE: int;
}

type jdk.internal.icu.text.UnicodeSet {
    var MIN_VALUE: int;
    var MAX_VALUE: int;
}

type jdk.internal.icu.text.BidiRun {
}

type jdk.internal.icu.text.FilteredNormalizer2 {
}

type jdk.internal.icu.text.UCharacterIterator {
    var DONE: int;
}

type jdk.internal.icu.text.BidiWriter {
}

type jdk.internal.icu.text.StringPrep {
    var DEFAULT: int;
    var ALLOW_UNASSIGNED: int;
}

type jdk.internal.jimage.NativeImageBuffer {
}

type jdk.internal.jimage.ImageStringsReader {
    var HASH_MULTIPLIER: int;
    var POSITIVE_MASK: int;
}

type jdk.internal.jimage.ImageStrings {
}

type jdk.internal.jimage.decompressor.ZipDecompressorFactory {
    var NAME: java.lang.String;
}

type jdk.internal.jimage.decompressor.CompressedResourceHeader {
    var MAGIC: int;
}

type jdk.internal.jimage.decompressor.Decompressor {
}

type jdk.internal.jimage.decompressor.StringSharingDecompressor {
    var EXTERNALIZED_STRING: int;
    var EXTERNALIZED_STRING_DESCRIPTOR: int;
}

type jdk.internal.jimage.decompressor.SignatureParser {
}

type jdk.internal.jimage.decompressor.ResourceDecompressorRepository {
}

type jdk.internal.jimage.decompressor.ResourceDecompressor {
}

type jdk.internal.jimage.decompressor.ResourceDecompressorFactory {
}

type jdk.internal.jimage.decompressor.CompressIndexes {
}

type jdk.internal.jimage.decompressor.StringSharingDecompressorFactory {
    var NAME: java.lang.String;
}

type jdk.internal.jimage.decompressor.ZipDecompressor {
}

type jdk.internal.jimage.ImageLocation {
    var ATTRIBUTE_END: int;
    var ATTRIBUTE_MODULE: int;
    var ATTRIBUTE_PARENT: int;
    var ATTRIBUTE_BASE: int;
    var ATTRIBUTE_EXTENSION: int;
    var ATTRIBUTE_OFFSET: int;
    var ATTRIBUTE_COMPRESSED: int;
    var ATTRIBUTE_UNCOMPRESSED: int;
    var ATTRIBUTE_COUNT: int;
}

type jdk.internal.jimage.ImageStream {
}

type jdk.internal.jimage.BasicImageReader {
}

type jdk.internal.jimage.ImageReader {
}

type jdk.internal.jimage.ImageReaderFactory {
}

type jdk.internal.jimage.ImageHeader {
    var MAGIC: int;
    var MAJOR_VERSION: int;
    var MINOR_VERSION: int;
}

type jdk.internal.jimage.ImageBufferCache {
}

type java.net.ServerSocket {
}

type java.net.DatagramSocketImpl {
    var TCP_NODELAY: int;
    var SO_BINDADDR: int;
    var SO_REUSEADDR: int;
    var SO_REUSEPORT: int;
    var SO_BROADCAST: int;
    var IP_MULTICAST_IF: int;
    var IP_MULTICAST_IF2: int;
    var IP_MULTICAST_LOOP: int;
    var IP_TOS: int;
    var SO_LINGER: int;
    var SO_TIMEOUT: int;
    var SO_SNDBUF: int;
    var SO_RCVBUF: int;
    var SO_KEEPALIVE: int;
    var SO_OOBINLINE: int;
}

type java.net.NoRouteToHostException {
}

type java.net.MulticastSocket {
}

type java.net.FileNameMap {
}

type java.net.InetAddressContainer {
}

type java.net.UnknownHostException {
}

type java.net.Proxy {
    var NO_PROXY: java.net.Proxy;
}

type java.net.SocketImplFactory {
}

type java.net.PlainDatagramSocketImpl {
    var TCP_NODELAY: int;
    var SO_BINDADDR: int;
    var SO_REUSEADDR: int;
    var SO_REUSEPORT: int;
    var SO_BROADCAST: int;
    var IP_MULTICAST_IF: int;
    var IP_MULTICAST_IF2: int;
    var IP_MULTICAST_LOOP: int;
    var IP_TOS: int;
    var SO_LINGER: int;
    var SO_TIMEOUT: int;
    var SO_SNDBUF: int;
    var SO_RCVBUF: int;
    var SO_KEEPALIVE: int;
    var SO_OOBINLINE: int;
}

type java.net.InetAddressImplFactory {
}

type java.net.SocketPermission {
}

type java.net.HttpURLConnection {
    var HTTP_OK: int;
    var HTTP_CREATED: int;
    var HTTP_ACCEPTED: int;
    var HTTP_NOT_AUTHORITATIVE: int;
    var HTTP_NO_CONTENT: int;
    var HTTP_RESET: int;
    var HTTP_PARTIAL: int;
    var HTTP_MULT_CHOICE: int;
    var HTTP_MOVED_PERM: int;
    var HTTP_MOVED_TEMP: int;
    var HTTP_SEE_OTHER: int;
    var HTTP_NOT_MODIFIED: int;
    var HTTP_USE_PROXY: int;
    var HTTP_BAD_REQUEST: int;
    var HTTP_UNAUTHORIZED: int;
    var HTTP_PAYMENT_REQUIRED: int;
    var HTTP_FORBIDDEN: int;
    var HTTP_NOT_FOUND: int;
    var HTTP_BAD_METHOD: int;
    var HTTP_NOT_ACCEPTABLE: int;
    var HTTP_PROXY_AUTH: int;
    var HTTP_CLIENT_TIMEOUT: int;
    var HTTP_CONFLICT: int;
    var HTTP_GONE: int;
    var HTTP_LENGTH_REQUIRED: int;
    var HTTP_PRECON_FAILED: int;
    var HTTP_ENTITY_TOO_LARGE: int;
    var HTTP_REQ_TOO_LONG: int;
    var HTTP_UNSUPPORTED_TYPE: int;
    var HTTP_SERVER_ERROR: int;
    var HTTP_INTERNAL_ERROR: int;
    var HTTP_NOT_IMPLEMENTED: int;
    var HTTP_BAD_GATEWAY: int;
    var HTTP_UNAVAILABLE: int;
    var HTTP_GATEWAY_TIMEOUT: int;
    var HTTP_VERSION: int;
}

type java.net.ProtocolException {
}

type java.net.SocksSocketImpl {
    var PROTO_VERS4: int;
    var PROTO_VERS: int;
    var DEFAULT_PORT: int;
    var NO_AUTH: int;
    var GSSAPI: int;
    var USER_PASSW: int;
    var NO_METHODS: int;
    var CONNECT: int;
    var BIND: int;
    var UDP_ASSOC: int;
    var IPV4: int;
    var DOMAIN_NAME: int;
    var IPV6: int;
    var REQUEST_OK: int;
    var GENERAL_FAILURE: int;
    var NOT_ALLOWED: int;
    var NET_UNREACHABLE: int;
    var HOST_UNREACHABLE: int;
    var CONN_REFUSED: int;
    var TTL_EXPIRED: int;
    var CMD_NOT_SUPPORTED: int;
    var ADDR_TYPE_NOT_SUP: int;
    var TCP_NODELAY: int;
    var SO_BINDADDR: int;
    var SO_REUSEADDR: int;
    var SO_REUSEPORT: int;
    var SO_BROADCAST: int;
    var IP_MULTICAST_IF: int;
    var IP_MULTICAST_IF2: int;
    var IP_MULTICAST_LOOP: int;
    var IP_TOS: int;
    var SO_LINGER: int;
    var SO_TIMEOUT: int;
    var SO_SNDBUF: int;
    var SO_RCVBUF: int;
    var SO_KEEPALIVE: int;
    var SO_OOBINLINE: int;
}

type java.net.Inet4AddressImpl {
}

type java.net.FactoryURLClassLoader {
}

type java.net.SocketOption {
}

type java.net.ConnectException {
}

type java.net.URLStreamHandler {
}

type java.net.MalformedURLException {
}

type java.net.UnknownContentHandler {
}

type java.net.DelegatingSocketImpl {
    var TCP_NODELAY: int;
    var SO_BINDADDR: int;
    var SO_REUSEADDR: int;
    var SO_REUSEPORT: int;
    var SO_BROADCAST: int;
    var IP_MULTICAST_IF: int;
    var IP_MULTICAST_IF2: int;
    var IP_MULTICAST_LOOP: int;
    var IP_TOS: int;
    var SO_LINGER: int;
    var SO_TIMEOUT: int;
    var SO_SNDBUF: int;
    var SO_RCVBUF: int;
    var SO_KEEPALIVE: int;
    var SO_OOBINLINE: int;
}

type java.net.DefaultDatagramSocketImplFactory {
}

type java.net.InetSocketAddress {
}

type java.net.DatagramSocketImplFactory {
}

type java.net.NetworkInterface {
}

type java.net.PasswordAuthentication {
}

type java.net.CookieHandler {
}

type java.net.ContentHandlerFactory {
}

type java.net.SecureCacheResponse {
}

type java.net.InMemoryCookieStore {
}

type java.net.NetMulticastSocket {
}

type java.net.URISyntaxException {
}

type java.net.PortUnreachableException {
}

type java.net.CacheResponse {
}

type java.net.URLStreamHandlerFactory {
}

type java.net.Inet4Address {
}

type java.net.UnixDomainSocketAddress {
}

type java.net.DatagramPacket {
}

type java.net.UnknownServiceException {
}

type java.net.InetAddress {
}

type java.net.CacheRequest {
}

type java.net.DefaultInterface {
}

type java.net.IDN {
    var ALLOW_UNASSIGNED: int;
    var USE_STD3_ASCII_RULES: int;
}

type java.net.Authenticator {
}

type java.net.spi.URLStreamHandlerProvider {
}

type java.net.ProtocolFamily {
}

type java.net.Inet6Address {
}

type java.net.BindException {
}

type java.net.ResponseCache {
}

type java.net.HttpCookie {
}

type java.net.Inet6AddressImpl {
}

type java.net.CookieStore {
}

type java.net.SocksConsts {
    var PROTO_VERS4: int;
    var PROTO_VERS: int;
    var DEFAULT_PORT: int;
    var NO_AUTH: int;
    var GSSAPI: int;
    var USER_PASSW: int;
    var NO_METHODS: int;
    var CONNECT: int;
    var BIND: int;
    var UDP_ASSOC: int;
    var IPV4: int;
    var DOMAIN_NAME: int;
    var IPV6: int;
    var REQUEST_OK: int;
    var GENERAL_FAILURE: int;
    var NOT_ALLOWED: int;
    var NET_UNREACHABLE: int;
    var HOST_UNREACHABLE: int;
    var CONN_REFUSED: int;
    var TTL_EXPIRED: int;
    var CMD_NOT_SUPPORTED: int;
    var ADDR_TYPE_NOT_SUP: int;
}

type java.net.SocketInputStream {
}

type java.net.SocketCleanable {
}

type java.net.DatagramSocket {
}

type java.net.AbstractPlainDatagramSocketImpl {
    var TCP_NODELAY: int;
    var SO_BINDADDR: int;
    var SO_REUSEADDR: int;
    var SO_REUSEPORT: int;
    var SO_BROADCAST: int;
    var IP_MULTICAST_IF: int;
    var IP_MULTICAST_IF2: int;
    var IP_MULTICAST_LOOP: int;
    var IP_TOS: int;
    var SO_LINGER: int;
    var SO_TIMEOUT: int;
    var SO_SNDBUF: int;
    var SO_RCVBUF: int;
    var SO_KEEPALIVE: int;
    var SO_OOBINLINE: int;
}

type java.net.URLDecoder {
}

type java.net.SocketException {
}

type java.net.URL {
}

type java.net.SocketTimeoutException {
    var bytesTransferred: int;
}

type java.net.JarURLConnection {
}

type java.net.ContentHandler {
}

type java.net.URLEncoder {
}

type java.net.ProxySelector {
}

type java.net.InterfaceAddress {
}

type java.net.SocketAddress {
}

type java.net.StandardSocketOptions {
    var SO_BROADCAST: java.net.SocketOption;
    var SO_KEEPALIVE: java.net.SocketOption;
    var SO_SNDBUF: java.net.SocketOption;
    var SO_RCVBUF: java.net.SocketOption;
    var SO_REUSEADDR: java.net.SocketOption;
    var SO_REUSEPORT: java.net.SocketOption;
    var SO_LINGER: java.net.SocketOption;
    var IP_TOS: java.net.SocketOption;
    var IP_MULTICAST_IF: java.net.SocketOption;
    var IP_MULTICAST_TTL: java.net.SocketOption;
    var IP_MULTICAST_LOOP: java.net.SocketOption;
    var TCP_NODELAY: java.net.SocketOption;
}

type java.net.URI {
}

type java.net.SocketPermissionCollection {
}

type java.net.AbstractPlainSocketImpl {
    var SHUT_RD: int;
    var SHUT_WR: int;
    var TCP_NODELAY: int;
    var SO_BINDADDR: int;
    var SO_REUSEADDR: int;
    var SO_REUSEPORT: int;
    var SO_BROADCAST: int;
    var IP_MULTICAST_IF: int;
    var IP_MULTICAST_IF2: int;
    var IP_MULTICAST_LOOP: int;
    var IP_TOS: int;
    var SO_LINGER: int;
    var SO_TIMEOUT: int;
    var SO_SNDBUF: int;
    var SO_RCVBUF: int;
    var SO_KEEPALIVE: int;
    var SO_OOBINLINE: int;
}

type java.net.HostPortrange {
}

type java.net.CookiePolicy {
    var ACCEPT_ALL: java.net.CookiePolicy;
    var ACCEPT_NONE: java.net.CookiePolicy;
    var ACCEPT_ORIGINAL_SERVER: java.net.CookiePolicy;
}

type java.net.NetPermission {
}

type java.net.InetAddressImpl {
}

type java.net.Socket {
}

type java.net.URLClassLoader {
}

type java.net.PlainSocketImpl {
    var SHUT_RD: int;
    var SHUT_WR: int;
    var TCP_NODELAY: int;
    var SO_BINDADDR: int;
    var SO_REUSEADDR: int;
    var SO_REUSEPORT: int;
    var SO_BROADCAST: int;
    var IP_MULTICAST_IF: int;
    var IP_MULTICAST_IF2: int;
    var IP_MULTICAST_LOOP: int;
    var IP_TOS: int;
    var SO_LINGER: int;
    var SO_TIMEOUT: int;
    var SO_SNDBUF: int;
    var SO_RCVBUF: int;
    var SO_KEEPALIVE: int;
    var SO_OOBINLINE: int;
}

type java.net.SocketImpl {
    var TCP_NODELAY: int;
    var SO_BINDADDR: int;
    var SO_REUSEADDR: int;
    var SO_REUSEPORT: int;
    var SO_BROADCAST: int;
    var IP_MULTICAST_IF: int;
    var IP_MULTICAST_IF2: int;
    var IP_MULTICAST_LOOP: int;
    var IP_TOS: int;
    var SO_LINGER: int;
    var SO_TIMEOUT: int;
    var SO_SNDBUF: int;
    var SO_RCVBUF: int;
    var SO_KEEPALIVE: int;
    var SO_OOBINLINE: int;
}

enum java.net.StandardProtocolFamily {
    INET = 0;
    INET6 = 1;
    UNIX = 2;
}

type java.net.HttpRetryException {
}

type java.net.CookieManager {
}

type java.net.URLPermission {
}

type java.net.UrlDeserializedState {
}

type java.net.SocketOptions {
    var TCP_NODELAY: int;
    var SO_BINDADDR: int;
    var SO_REUSEADDR: int;
    var SO_REUSEPORT: int;
    var SO_BROADCAST: int;
    var IP_MULTICAST_IF: int;
    var IP_MULTICAST_IF2: int;
    var IP_MULTICAST_LOOP: int;
    var IP_TOS: int;
    var SO_LINGER: int;
    var SO_TIMEOUT: int;
    var SO_SNDBUF: int;
    var SO_RCVBUF: int;
    var SO_KEEPALIVE: int;
    var SO_OOBINLINE: int;
}

type java.net.URLConnection {
}

type java.net.HttpConnectSocketImpl {
    var TCP_NODELAY: int;
    var SO_BINDADDR: int;
    var SO_REUSEADDR: int;
    var SO_REUSEPORT: int;
    var SO_BROADCAST: int;
    var IP_MULTICAST_IF: int;
    var IP_MULTICAST_IF2: int;
    var IP_MULTICAST_LOOP: int;
    var IP_TOS: int;
    var SO_LINGER: int;
    var SO_TIMEOUT: int;
    var SO_SNDBUF: int;
    var SO_RCVBUF: int;
    var SO_KEEPALIVE: int;
    var SO_OOBINLINE: int;
}

type java.net.SocketOutputStream {
}

type java.util.ListIterator {
}

type java.util.Arrays {
}

type java.util.ImmutableCollections {
}

type java.util.UnknownFormatConversionException {
}

type java.util.IllegalFormatException {
}

type java.util.Properties {
}

type java.util.KeyValueHolder {
}

type java.util.MissingFormatArgumentException {
}

type java.util.SortedMap {
}

type java.util.Spliterator {
    var ORDERED: int;
    var DISTINCT: int;
    var SORTED: int;
    var SIZED: int;
    var NONNULL: int;
    var IMMUTABLE: int;
    var CONCURRENT: int;
    var SUBSIZED: int;
}

type java.util.PropertyPermissionCollection {
}

type java.util.Random {
}

type java.util.Spliterators {
}

type java.util.Date {
}

type java.util.Observer {
}

type java.util.Comparator {
}

type java.util.StringTokenizer {
}

type java.util.WeakHashMap {
}

type java.util.Locale {
    var ENGLISH: java.util.Locale;
    var FRENCH: java.util.Locale;
    var GERMAN: java.util.Locale;
    var ITALIAN: java.util.Locale;
    var JAPANESE: java.util.Locale;
    var KOREAN: java.util.Locale;
    var CHINESE: java.util.Locale;
    var SIMPLIFIED_CHINESE: java.util.Locale;
    var TRADITIONAL_CHINESE: java.util.Locale;
    var FRANCE: java.util.Locale;
    var GERMANY: java.util.Locale;
    var ITALY: java.util.Locale;
    var JAPAN: java.util.Locale;
    var KOREA: java.util.Locale;
    var UK: java.util.Locale;
    var US: java.util.Locale;
    var CANADA: java.util.Locale;
    var CANADA_FRENCH: java.util.Locale;
    var ROOT: java.util.Locale;
    var CHINA: java.util.Locale;
    var PRC: java.util.Locale;
    var TAIWAN: java.util.Locale;
    var PRIVATE_USE_EXTENSION: char;
    var UNICODE_LOCALE_EXTENSION: char;
}

type java.util.Objects {
}

type java.util.SortedSet {
}

type java.util.Stack {
}

type java.util.DuplicateFormatFlagsException {
}

type java.util.Collection {
}

type java.util.Collections {
    var EMPTY_SET: java.util.Set;
    var EMPTY_LIST: java.util.List;
    var EMPTY_MAP: java.util.Map;
}

type java.util.IllformedLocaleException {
}

type java.util.ResourceBundle {
}

type java.util.EnumSet {
}

type java.util.LinkedHashSet {
}

type java.util.Comparators {
}

type java.util.TimSort {
}

type java.util.TooManyListenersException {
}

enum java.util.stream.StreamShape {
    REFERENCE = 0;
    INT_VALUE = 1;
    LONG_VALUE = 2;
    DOUBLE_VALUE = 3;
}

type java.util.stream.MatchOps {
}

type java.util.stream.DoubleStream {
}

type java.util.stream.SliceOps {
}

type java.util.stream.AbstractTask {
}

type java.util.stream.ReferencePipeline {
}

type java.util.stream.BaseStream {
}

type java.util.stream.Collector {
}

type java.util.stream.ForEachOps {
}

type java.util.stream.Stream {
}

enum java.util.stream.StreamOpFlag {
    DISTINCT = 0;
    SORTED = 1;
    ORDERED = 2;
    SIZED = 3;
    SHORT_CIRCUIT = 4;
    SIZE_ADJUSTING = 5;
}

type java.util.stream.DistinctOps {
}

type java.util.stream.LongStream {
}

type java.util.stream.Collectors {
}

type java.util.stream.SpinedBuffer {
    var MIN_CHUNK_POWER: int;
    var MIN_CHUNK_SIZE: int;
    var MAX_CHUNK_POWER: int;
    var MIN_SPINE_SIZE: int;
}

type java.util.stream.IntPipeline {
}

type java.util.stream.TerminalOp {
}

type java.util.stream.DoublePipeline {
}

type java.util.stream.Sink {
}

type java.util.stream.Streams {
}

type java.util.stream.TerminalSink {
}

type java.util.stream.IntStream {
}

type java.util.stream.StreamSpliterators {
}

type java.util.stream.Nodes {
}

type java.util.stream.PipelineHelper {
}

type java.util.stream.SortedOps {
}

type java.util.stream.AbstractSpinedBuffer {
    var MIN_CHUNK_POWER: int;
    var MIN_CHUNK_SIZE: int;
    var MAX_CHUNK_POWER: int;
    var MIN_SPINE_SIZE: int;
}

type java.util.stream.ReduceOps {
}

type java.util.stream.AbstractShortCircuitTask {
}

type java.util.stream.Tripwire {
}

type java.util.stream.FindOps {
}

type java.util.stream.LongPipeline {
}

type java.util.stream.Node {
}

type java.util.stream.AbstractPipeline {
}

type java.util.stream.WhileOps {
}

type java.util.stream.StreamSupport {
}

type java.util.PropertyResourceBundle {
}

type java.util.HashMap {
}

type java.util.InvalidPropertiesFormatException {
}

type java.util.Currency {
}

type java.util.RandomAccess {
}

type java.util.ListResourceBundle {
}

type java.util.jar.JarVerifier {
}

type java.util.jar.JarOutputStream {
    var STORED: int;
    var DEFLATED: int;
    var LOCSIG: long;
    var EXTSIG: long;
    var CENSIG: long;
    var ENDSIG: long;
    var LOCHDR: int;
    var EXTHDR: int;
    var CENHDR: int;
    var ENDHDR: int;
    var LOCVER: int;
    var LOCFLG: int;
    var LOCHOW: int;
    var LOCTIM: int;
    var LOCCRC: int;
    var LOCSIZ: int;
    var LOCLEN: int;
    var LOCNAM: int;
    var LOCEXT: int;
    var EXTCRC: int;
    var EXTSIZ: int;
    var EXTLEN: int;
    var CENVEM: int;
    var CENVER: int;
    var CENFLG: int;
    var CENHOW: int;
    var CENTIM: int;
    var CENCRC: int;
    var CENSIZ: int;
    var CENLEN: int;
    var CENNAM: int;
    var CENEXT: int;
    var CENCOM: int;
    var CENDSK: int;
    var CENATT: int;
    var CENATX: int;
    var CENOFF: int;
    var ENDSUB: int;
    var ENDTOT: int;
    var ENDSIZ: int;
    var ENDOFF: int;
    var ENDCOM: int;
}

type java.util.jar.Attributes {
}

type java.util.jar.JarInputStream {
    var LOCSIG: long;
    var EXTSIG: long;
    var CENSIG: long;
    var ENDSIG: long;
    var LOCHDR: int;
    var EXTHDR: int;
    var CENHDR: int;
    var ENDHDR: int;
    var LOCVER: int;
    var LOCFLG: int;
    var LOCHOW: int;
    var LOCTIM: int;
    var LOCCRC: int;
    var LOCSIZ: int;
    var LOCLEN: int;
    var LOCNAM: int;
    var LOCEXT: int;
    var EXTCRC: int;
    var EXTSIZ: int;
    var EXTLEN: int;
    var CENVEM: int;
    var CENVER: int;
    var CENFLG: int;
    var CENHOW: int;
    var CENTIM: int;
    var CENCRC: int;
    var CENSIZ: int;
    var CENLEN: int;
    var CENNAM: int;
    var CENEXT: int;
    var CENCOM: int;
    var CENDSK: int;
    var CENATT: int;
    var CENATX: int;
    var CENOFF: int;
    var ENDSUB: int;
    var ENDTOT: int;
    var ENDSIZ: int;
    var ENDOFF: int;
    var ENDCOM: int;
}

type java.util.jar.JarException {
}

type java.util.jar.JavaUtilJarAccessImpl {
}

type java.util.jar.JarFile {
    var MANIFEST_NAME: java.lang.String;
    var OPEN_READ: int;
    var OPEN_DELETE: int;
    var LOCSIG: long;
    var EXTSIG: long;
    var CENSIG: long;
    var ENDSIG: long;
    var LOCHDR: int;
    var EXTHDR: int;
    var CENHDR: int;
    var ENDHDR: int;
    var LOCVER: int;
    var LOCFLG: int;
    var LOCHOW: int;
    var LOCTIM: int;
    var LOCCRC: int;
    var LOCSIZ: int;
    var LOCLEN: int;
    var LOCNAM: int;
    var LOCEXT: int;
    var EXTCRC: int;
    var EXTSIZ: int;
    var EXTLEN: int;
    var CENVEM: int;
    var CENVER: int;
    var CENFLG: int;
    var CENHOW: int;
    var CENTIM: int;
    var CENCRC: int;
    var CENSIZ: int;
    var CENLEN: int;
    var CENNAM: int;
    var CENEXT: int;
    var CENCOM: int;
    var CENDSK: int;
    var CENATT: int;
    var CENATX: int;
    var CENOFF: int;
    var ENDSUB: int;
    var ENDTOT: int;
    var ENDSIZ: int;
    var ENDOFF: int;
    var ENDCOM: int;
}

type java.util.jar.Manifest {
}

type java.util.jar.JarEntry {
    var STORED: int;
    var DEFLATED: int;
    var LOCSIG: long;
    var EXTSIG: long;
    var CENSIG: long;
    var ENDSIG: long;
    var LOCHDR: int;
    var EXTHDR: int;
    var CENHDR: int;
    var ENDHDR: int;
    var LOCVER: int;
    var LOCFLG: int;
    var LOCHOW: int;
    var LOCTIM: int;
    var LOCCRC: int;
    var LOCSIZ: int;
    var LOCLEN: int;
    var LOCNAM: int;
    var LOCEXT: int;
    var EXTCRC: int;
    var EXTSIZ: int;
    var EXTLEN: int;
    var CENVEM: int;
    var CENVER: int;
    var CENFLG: int;
    var CENHOW: int;
    var CENTIM: int;
    var CENCRC: int;
    var CENSIZ: int;
    var CENLEN: int;
    var CENNAM: int;
    var CENEXT: int;
    var CENCOM: int;
    var CENDSK: int;
    var CENATT: int;
    var CENATX: int;
    var CENOFF: int;
    var ENDSUB: int;
    var ENDTOT: int;
    var ENDSIZ: int;
    var ENDOFF: int;
    var ENDCOM: int;
}

type java.util.AbstractSequentialList {
}

type java.util.DualPivotQuicksort {
}

type java.util.Deque {
}

type java.util.AbstractList {
}

type java.util.ServiceLoader {
}

type java.util.ArraysParallelSortHelpers {
}

type java.util.TimeZone {
    var SHORT: int;
    var LONG: int;
}

type java.util.LocaleISOData {
}

type java.util.FormatterClosedException {
}

type java.util.EnumMap {
}

type java.util.LinkedHashMap {
}

type java.util.IllegalFormatFlagsException {
}

type java.util.HashSet {
}

type java.util.function.IntToDoubleFunction {
}

type java.util.function.ToLongBiFunction {
}

type java.util.function.BinaryOperator {
}

type java.util.function.ToDoubleFunction {
}

type java.util.function.BooleanSupplier {
}

type java.util.function.UnaryOperator {
}

type java.util.function.Consumer {
}

type java.util.function.ToIntBiFunction {
}

type java.util.function.DoubleConsumer {
}

type java.util.function.LongToDoubleFunction {
}

type java.util.function.BiFunction {
}

type java.util.function.ObjLongConsumer {
}

type java.util.function.Predicate {
}

type java.util.function.IntBinaryOperator {
}

type java.util.function.IntConsumer {
}

type java.util.function.DoublePredicate {
}

type java.util.function.DoubleBinaryOperator {
}

type java.util.function.ObjIntConsumer {
}

type java.util.function.ToDoubleBiFunction {
}

type java.util.function.LongSupplier {
}

type java.util.function.LongFunction {
}

type java.util.function.ToIntFunction {
}

type java.util.function.LongPredicate {
}

type java.util.function.LongToIntFunction {
}

type java.util.function.ToLongFunction {
}

type java.util.function.DoubleUnaryOperator {
}

type java.util.function.IntUnaryOperator {
}

type java.util.function.IntToLongFunction {
}

type java.util.function.LongBinaryOperator {
}

type java.util.function.LongConsumer {
}

type java.util.function.ObjDoubleConsumer {
}

type java.util.function.DoubleToLongFunction {
}

type java.util.function.Function {
}

type java.util.function.DoubleToIntFunction {
}

type java.util.function.DoubleFunction {
}

type java.util.function.IntSupplier {
}

type java.util.function.BiPredicate {
}

type java.util.function.IntFunction {
}

type java.util.function.LongUnaryOperator {
}

type java.util.function.BiConsumer {
}

type java.util.function.IntPredicate {
}

type java.util.function.DoubleSupplier {
}

type java.util.function.Supplier {
}

type java.util.StringJoiner {
}

type java.util.Timer {
}

type java.util.regex.ASCII {
}

type java.util.regex.PatternSyntaxException {
}

type java.util.regex.PrintPattern {
}

type java.util.regex.IntHashSet {
}

type java.util.regex.Matcher {
}

type java.util.regex.MatchResult {
}

type java.util.regex.Grapheme {
}

type java.util.regex.Pattern {
    var UNIX_LINES: int;
    var CASE_INSENSITIVE: int;
    var COMMENTS: int;
    var MULTILINE: int;
    var LITERAL: int;
    var DOTALL: int;
    var UNICODE_CASE: int;
    var CANON_EQ: int;
    var UNICODE_CHARACTER_CLASS: int;
}

type java.util.regex.CharPredicates {
}

type java.util.regex.EmojiData {
}

type java.util.ArrayPrefixHelpers {
}

type java.util.Enumeration {
}

type java.util.EventListenerProxy {
}

type java.util.UUID {
}

type java.util.IdentityHashMap {
}

type java.util.AbstractCollection {
}

type java.util.OptionalInt {
}

type java.util.ServiceConfigurationError {
}

type java.util.InputMismatchException {
}

type java.util.EmptyStackException {
}

type java.util.List {
}

type java.util.Hashtable {
}

type java.util.TreeMap {
}

type java.util.zip.Adler32 {
}

type java.util.zip.CheckedInputStream {
}

type java.util.zip.ZipOutputStream {
    var STORED: int;
    var DEFLATED: int;
    var LOCSIG: long;
    var EXTSIG: long;
    var CENSIG: long;
    var ENDSIG: long;
    var LOCHDR: int;
    var EXTHDR: int;
    var CENHDR: int;
    var ENDHDR: int;
    var LOCVER: int;
    var LOCFLG: int;
    var LOCHOW: int;
    var LOCTIM: int;
    var LOCCRC: int;
    var LOCSIZ: int;
    var LOCLEN: int;
    var LOCNAM: int;
    var LOCEXT: int;
    var EXTCRC: int;
    var EXTSIZ: int;
    var EXTLEN: int;
    var CENVEM: int;
    var CENVER: int;
    var CENFLG: int;
    var CENHOW: int;
    var CENTIM: int;
    var CENCRC: int;
    var CENSIZ: int;
    var CENLEN: int;
    var CENNAM: int;
    var CENEXT: int;
    var CENCOM: int;
    var CENDSK: int;
    var CENATT: int;
    var CENATX: int;
    var CENOFF: int;
    var ENDSUB: int;
    var ENDTOT: int;
    var ENDSIZ: int;
    var ENDOFF: int;
    var ENDCOM: int;
}

type java.util.zip.ZipUtils {
    var WINDOWS_TIME_NOT_AVAILABLE: long;
    var UPPER_UNIXTIME_BOUND: long;
}

type java.util.zip.CheckedOutputStream {
}

type java.util.zip.GZIPInputStream {
    var GZIP_MAGIC: int;
}

type java.util.zip.ZipException {
}

type java.util.zip.ZipConstants64 {
}

type java.util.zip.Inflater {
}

type java.util.zip.ZipConstants {
    var LOCSIG: long;
    var EXTSIG: long;
    var CENSIG: long;
    var ENDSIG: long;
    var LOCHDR: int;
    var EXTHDR: int;
    var CENHDR: int;
    var ENDHDR: int;
    var LOCVER: int;
    var LOCFLG: int;
    var LOCHOW: int;
    var LOCTIM: int;
    var LOCCRC: int;
    var LOCSIZ: int;
    var LOCLEN: int;
    var LOCNAM: int;
    var LOCEXT: int;
    var EXTCRC: int;
    var EXTSIZ: int;
    var EXTLEN: int;
    var CENVEM: int;
    var CENVER: int;
    var CENFLG: int;
    var CENHOW: int;
    var CENTIM: int;
    var CENCRC: int;
    var CENSIZ: int;
    var CENLEN: int;
    var CENNAM: int;
    var CENEXT: int;
    var CENCOM: int;
    var CENDSK: int;
    var CENATT: int;
    var CENATX: int;
    var CENOFF: int;
    var ENDSUB: int;
    var ENDTOT: int;
    var ENDSIZ: int;
    var ENDOFF: int;
    var ENDCOM: int;
}

type java.util.zip.ZipFile {
    var OPEN_READ: int;
    var OPEN_DELETE: int;
    var LOCSIG: long;
    var EXTSIG: long;
    var CENSIG: long;
    var ENDSIG: long;
    var LOCHDR: int;
    var EXTHDR: int;
    var CENHDR: int;
    var ENDHDR: int;
    var LOCVER: int;
    var LOCFLG: int;
    var LOCHOW: int;
    var LOCTIM: int;
    var LOCCRC: int;
    var LOCSIZ: int;
    var LOCLEN: int;
    var LOCNAM: int;
    var LOCEXT: int;
    var EXTCRC: int;
    var EXTSIZ: int;
    var EXTLEN: int;
    var CENVEM: int;
    var CENVER: int;
    var CENFLG: int;
    var CENHOW: int;
    var CENTIM: int;
    var CENCRC: int;
    var CENSIZ: int;
    var CENLEN: int;
    var CENNAM: int;
    var CENEXT: int;
    var CENCOM: int;
    var CENDSK: int;
    var CENATT: int;
    var CENATX: int;
    var CENOFF: int;
    var ENDSUB: int;
    var ENDTOT: int;
    var ENDSIZ: int;
    var ENDOFF: int;
    var ENDCOM: int;
}

type java.util.zip.ZipCoder {
}

type java.util.zip.InflaterInputStream {
}

type java.util.zip.DeflaterOutputStream {
}

type java.util.zip.ZipEntry {
    var STORED: int;
    var DEFLATED: int;
    var LOCSIG: long;
    var EXTSIG: long;
    var CENSIG: long;
    var ENDSIG: long;
    var LOCHDR: int;
    var EXTHDR: int;
    var CENHDR: int;
    var ENDHDR: int;
    var LOCVER: int;
    var LOCFLG: int;
    var LOCHOW: int;
    var LOCTIM: int;
    var LOCCRC: int;
    var LOCSIZ: int;
    var LOCLEN: int;
    var LOCNAM: int;
    var LOCEXT: int;
    var EXTCRC: int;
    var EXTSIZ: int;
    var EXTLEN: int;
    var CENVEM: int;
    var CENVER: int;
    var CENFLG: int;
    var CENHOW: int;
    var CENTIM: int;
    var CENCRC: int;
    var CENSIZ: int;
    var CENLEN: int;
    var CENNAM: int;
    var CENEXT: int;
    var CENCOM: int;
    var CENDSK: int;
    var CENATT: int;
    var CENATX: int;
    var CENOFF: int;
    var ENDSUB: int;
    var ENDTOT: int;
    var ENDSIZ: int;
    var ENDOFF: int;
    var ENDCOM: int;
}

type java.util.zip.DataFormatException {
}

type java.util.zip.DeflaterInputStream {
}

type java.util.zip.InflaterOutputStream {
}

type java.util.zip.Checksum {
}

type java.util.zip.CRC32C {
}

type java.util.zip.ZipError {
}

type java.util.zip.CRC32 {
}

type java.util.zip.ZipInputStream {
    var LOCSIG: long;
    var EXTSIG: long;
    var CENSIG: long;
    var ENDSIG: long;
    var LOCHDR: int;
    var EXTHDR: int;
    var CENHDR: int;
    var ENDHDR: int;
    var LOCVER: int;
    var LOCFLG: int;
    var LOCHOW: int;
    var LOCTIM: int;
    var LOCCRC: int;
    var LOCSIZ: int;
    var LOCLEN: int;
    var LOCNAM: int;
    var LOCEXT: int;
    var EXTCRC: int;
    var EXTSIZ: int;
    var EXTLEN: int;
    var CENVEM: int;
    var CENVER: int;
    var CENFLG: int;
    var CENHOW: int;
    var CENTIM: int;
    var CENCRC: int;
    var CENSIZ: int;
    var CENLEN: int;
    var CENNAM: int;
    var CENEXT: int;
    var CENCOM: int;
    var CENDSK: int;
    var CENATT: int;
    var CENATX: int;
    var CENOFF: int;
    var ENDSUB: int;
    var ENDTOT: int;
    var ENDSIZ: int;
    var ENDOFF: int;
    var ENDCOM: int;
}

type java.util.zip.GZIPOutputStream {
}

type java.util.zip.Deflater {
    var DEFLATED: int;
    var NO_COMPRESSION: int;
    var BEST_SPEED: int;
    var BEST_COMPRESSION: int;
    var DEFAULT_COMPRESSION: int;
    var FILTERED: int;
    var HUFFMAN_ONLY: int;
    var DEFAULT_STRATEGY: int;
    var NO_FLUSH: int;
    var SYNC_FLUSH: int;
    var FULL_FLUSH: int;
}

type java.util.UnknownFormatFlagsException {
}

type java.util.IllegalFormatPrecisionException {
}

type java.util.spi.LocaleNameProvider {
}

type java.util.spi.CurrencyNameProvider {
}

type java.util.spi.LocaleServiceProvider {
}

type java.util.spi.AbstractResourceBundleProvider {
}

type java.util.spi.CalendarNameProvider {
}

type java.util.spi.TimeZoneNameProvider {
}

type java.util.spi.ResourceBundleControlProvider {
}

type java.util.spi.ResourceBundleProvider {
}

type java.util.spi.CalendarDataProvider {
}

type java.util.spi.ToolProvider {
}

type java.util.GregorianCalendar {
    var BC: int;
    var AD: int;
    var ERA: int;
    var YEAR: int;
    var MONTH: int;
    var WEEK_OF_YEAR: int;
    var WEEK_OF_MONTH: int;
    var DATE: int;
    var DAY_OF_MONTH: int;
    var DAY_OF_YEAR: int;
    var DAY_OF_WEEK: int;
    var DAY_OF_WEEK_IN_MONTH: int;
    var AM_PM: int;
    var HOUR: int;
    var HOUR_OF_DAY: int;
    var MINUTE: int;
    var SECOND: int;
    var MILLISECOND: int;
    var ZONE_OFFSET: int;
    var DST_OFFSET: int;
    var FIELD_COUNT: int;
    var SUNDAY: int;
    var MONDAY: int;
    var TUESDAY: int;
    var WEDNESDAY: int;
    var THURSDAY: int;
    var FRIDAY: int;
    var SATURDAY: int;
    var JANUARY: int;
    var FEBRUARY: int;
    var MARCH: int;
    var APRIL: int;
    var MAY: int;
    var JUNE: int;
    var JULY: int;
    var AUGUST: int;
    var SEPTEMBER: int;
    var OCTOBER: int;
    var NOVEMBER: int;
    var DECEMBER: int;
    var UNDECIMBER: int;
    var AM: int;
    var PM: int;
    var ALL_STYLES: int;
    var SHORT: int;
    var LONG: int;
    var NARROW_FORMAT: int;
    var NARROW_STANDALONE: int;
    var SHORT_FORMAT: int;
    var LONG_FORMAT: int;
    var SHORT_STANDALONE: int;
    var LONG_STANDALONE: int;
}

type java.util.Vector {
}

type java.util.IllegalFormatArgumentIndexException {
}

type java.util.TimerTask {
}

type java.util.TimerThread {
    var MIN_PRIORITY: int;
    var NORM_PRIORITY: int;
    var MAX_PRIORITY: int;
}

type java.util.OptionalDouble {
}

type java.util.Queue {
}

type java.util.Base64 {
}

type java.util.TreeSet {
}

type java.util.PropertyPermission {
}

type java.util.EventObject {
}

type java.util.concurrent.FutureTask {
}

type java.util.concurrent.ForkJoinPool {
}

type java.util.concurrent.Executor {
}

type java.util.concurrent.ConcurrentLinkedQueue {
}

type java.util.concurrent.ForkJoinWorkerThread {
    var MIN_PRIORITY: int;
    var NORM_PRIORITY: int;
    var MAX_PRIORITY: int;
}

type java.util.concurrent.SubmissionPublisher {
}

type java.util.concurrent.locks.LockSupport {
}

type java.util.concurrent.locks.ReadWriteLock {
}

type java.util.concurrent.locks.Condition {
}

type java.util.concurrent.locks.ReentrantLock {
}

type java.util.concurrent.locks.StampedLock {
}

type java.util.concurrent.locks.AbstractQueuedSynchronizer {
}

type java.util.concurrent.locks.Lock {
}

type java.util.concurrent.locks.ReentrantReadWriteLock {
}

type java.util.concurrent.locks.AbstractQueuedLongSynchronizer {
}

type java.util.concurrent.locks.AbstractOwnableSynchronizer {
}

type java.util.concurrent.ConcurrentSkipListSet {
}

type java.util.concurrent.CountedCompleter {
}

type java.util.concurrent.AbstractExecutorService {
}

type java.util.concurrent.PriorityBlockingQueue {
}

type java.util.concurrent.ExecutorService {
}

type java.util.concurrent.Phaser {
}

type java.util.concurrent.LinkedTransferQueue {
}

type java.util.concurrent.Future {
}

type java.util.concurrent.ConcurrentSkipListMap {
}

type java.util.concurrent.SynchronousQueue {
}

type java.util.concurrent.RejectedExecutionHandler {
}

type java.util.concurrent.ThreadLocalRandom {
}

type java.util.concurrent.Flow {
}

type java.util.concurrent.BlockingDeque {
}

type java.util.concurrent.RecursiveAction {
}

type java.util.concurrent.RecursiveTask {
}

type java.util.concurrent.ForkJoinTask {
}

type java.util.concurrent.Helpers {
}

type java.util.concurrent.ThreadPoolExecutor {
}

type java.util.concurrent.Callable {
}

type java.util.concurrent.LinkedBlockingQueue {
}

type java.util.concurrent.Executors {
}

type java.util.concurrent.CountDownLatch {
}

type java.util.concurrent.RunnableFuture {
}

type java.util.concurrent.atomic.AtomicInteger {
}

type java.util.concurrent.atomic.AtomicLong {
}

type java.util.concurrent.atomic.DoubleAdder {
}

type java.util.concurrent.atomic.DoubleAccumulator {
}

type java.util.concurrent.atomic.AtomicLongFieldUpdater {
}

type java.util.concurrent.atomic.AtomicStampedReference {
}

type java.util.concurrent.atomic.AtomicReference {
}

type java.util.concurrent.atomic.AtomicBoolean {
}

type java.util.concurrent.atomic.AtomicMarkableReference {
}

type java.util.concurrent.atomic.AtomicIntegerFieldUpdater {
}

type java.util.concurrent.atomic.AtomicLongArray {
}

type java.util.concurrent.atomic.AtomicReferenceFieldUpdater {
}

type java.util.concurrent.atomic.LongAccumulator {
}

type java.util.concurrent.atomic.Striped64 {
}

type java.util.concurrent.atomic.LongAdder {
}

type java.util.concurrent.atomic.AtomicIntegerArray {
}

type java.util.concurrent.atomic.AtomicReferenceArray {
}

type java.util.concurrent.CopyOnWriteArrayList {
}

type java.util.concurrent.ArrayBlockingQueue {
}

type java.util.concurrent.BlockingQueue {
}

type java.util.concurrent.RunnableScheduledFuture {
}

type java.util.concurrent.ThreadFactory {
}

type java.util.concurrent.CompletionService {
}

type java.util.concurrent.ExecutorCompletionService {
}

enum java.util.concurrent.TimeUnit {
    NANOSECONDS = 0;
    MICROSECONDS = 1;
    MILLISECONDS = 2;
    SECONDS = 3;
    MINUTES = 4;
    HOURS = 5;
    DAYS = 6;
}

type java.util.concurrent.CancellationException {
}

type java.util.concurrent.BrokenBarrierException {
}

type java.util.concurrent.ExecutionException {
}

type java.util.concurrent.Semaphore {
}

type java.util.concurrent.Exchanger {
}

type java.util.concurrent.RejectedExecutionException {
}

type java.util.concurrent.LinkedBlockingDeque {
}

type java.util.concurrent.DelayQueue {
}

type java.util.concurrent.CompletionStage {
}

type java.util.concurrent.TransferQueue {
}

type java.util.concurrent.CyclicBarrier {
}

type java.util.concurrent.ConcurrentLinkedDeque {
}

type java.util.concurrent.ScheduledExecutorService {
}

type java.util.concurrent.ConcurrentMap {
}

type java.util.concurrent.TimeoutException {
}

type java.util.concurrent.ConcurrentHashMap {
}

type java.util.concurrent.CopyOnWriteArraySet {
}

type java.util.concurrent.Delayed {
}

type java.util.concurrent.CompletionException {
}

type java.util.concurrent.CompletableFuture {
}

type java.util.concurrent.ConcurrentNavigableMap {
}

type java.util.concurrent.ScheduledFuture {
}

type java.util.concurrent.ScheduledThreadPoolExecutor {
}

type java.util.ConcurrentModificationException {
}

type java.util.Dictionary {
}

type java.util.JapaneseImperialCalendar {
    var BEFORE_MEIJI: int;
    var MEIJI: int;
    var TAISHO: int;
    var SHOWA: int;
    var HEISEI: int;
    var ERA: int;
    var YEAR: int;
    var MONTH: int;
    var WEEK_OF_YEAR: int;
    var WEEK_OF_MONTH: int;
    var DATE: int;
    var DAY_OF_MONTH: int;
    var DAY_OF_YEAR: int;
    var DAY_OF_WEEK: int;
    var DAY_OF_WEEK_IN_MONTH: int;
    var AM_PM: int;
    var HOUR: int;
    var HOUR_OF_DAY: int;
    var MINUTE: int;
    var SECOND: int;
    var MILLISECOND: int;
    var ZONE_OFFSET: int;
    var DST_OFFSET: int;
    var FIELD_COUNT: int;
    var SUNDAY: int;
    var MONDAY: int;
    var TUESDAY: int;
    var WEDNESDAY: int;
    var THURSDAY: int;
    var FRIDAY: int;
    var SATURDAY: int;
    var JANUARY: int;
    var FEBRUARY: int;
    var MARCH: int;
    var APRIL: int;
    var MAY: int;
    var JUNE: int;
    var JULY: int;
    var AUGUST: int;
    var SEPTEMBER: int;
    var OCTOBER: int;
    var NOVEMBER: int;
    var DECEMBER: int;
    var UNDECIMBER: int;
    var AM: int;
    var PM: int;
    var ALL_STYLES: int;
    var SHORT: int;
    var LONG: int;
    var NARROW_FORMAT: int;
    var NARROW_STANDALONE: int;
    var SHORT_FORMAT: int;
    var LONG_FORMAT: int;
    var SHORT_STANDALONE: int;
    var LONG_STANDALONE: int;
}

type java.util.ArrayList {
}

type java.util.JumboEnumSet {
}

type java.util.Scanner {
}

type java.util.PriorityQueue {
}

type java.util.Formatter {
}

type java.util.SplittableRandom {
}

type java.util.IllegalFormatCodePointException {
}

type java.util.NoSuchElementException {
}

type java.util.MissingFormatWidthException {
}

type java.util.NavigableSet {
}

type java.util.Tripwire {
}

type java.util.EventListener {
}

type java.util.BitSet {
}

type java.util.SimpleTimeZone {
    var WALL_TIME: int;
    var STANDARD_TIME: int;
    var UTC_TIME: int;
    var SHORT: int;
    var LONG: int;
}

type java.util.ComparableTimSort {
}

type java.util.Observable {
}

type java.util.AbstractSet {
}

type java.util.IntSummaryStatistics {
}

type java.util.CollSer {
}

type java.util.Map {
}

type java.util.AbstractQueue {
}

type java.util.MissingResourceException {
}

type java.util.IllegalFormatWidthException {
}

type java.util.IllegalFormatConversionException {
}

type java.util.LinkedList {
}

type java.util.LongSummaryStatistics {
}

type java.util.Calendar {
    var ERA: int;
    var YEAR: int;
    var MONTH: int;
    var WEEK_OF_YEAR: int;
    var WEEK_OF_MONTH: int;
    var DATE: int;
    var DAY_OF_MONTH: int;
    var DAY_OF_YEAR: int;
    var DAY_OF_WEEK: int;
    var DAY_OF_WEEK_IN_MONTH: int;
    var AM_PM: int;
    var HOUR: int;
    var HOUR_OF_DAY: int;
    var MINUTE: int;
    var SECOND: int;
    var MILLISECOND: int;
    var ZONE_OFFSET: int;
    var DST_OFFSET: int;
    var FIELD_COUNT: int;
    var SUNDAY: int;
    var MONDAY: int;
    var TUESDAY: int;
    var WEDNESDAY: int;
    var THURSDAY: int;
    var FRIDAY: int;
    var SATURDAY: int;
    var JANUARY: int;
    var FEBRUARY: int;
    var MARCH: int;
    var APRIL: int;
    var MAY: int;
    var JUNE: int;
    var JULY: int;
    var AUGUST: int;
    var SEPTEMBER: int;
    var OCTOBER: int;
    var NOVEMBER: int;
    var DECEMBER: int;
    var UNDECIMBER: int;
    var AM: int;
    var PM: int;
    var ALL_STYLES: int;
    var SHORT: int;
    var LONG: int;
    var NARROW_FORMAT: int;
    var NARROW_STANDALONE: int;
    var SHORT_FORMAT: int;
    var LONG_FORMAT: int;
    var SHORT_STANDALONE: int;
    var LONG_STANDALONE: int;
}

type java.util.PrimitiveIterator {
}

type java.util.RegularEnumSet {
}

type java.util.NavigableMap {
}

type java.util.ArrayDeque {
}

type java.util.Optional {
}

type java.util.OptionalLong {
}

type java.util.Iterator {
}

type java.util.DoubleSummaryStatistics {
}

type java.util.AbstractMap {
}

type java.util.FormatFlagsConversionMismatchException {
}

type java.util.Formattable {
}

type java.util.TaskQueue {
}

type java.util.FormattableFlags {
    var LEFT_JUSTIFY: int;
    var UPPERCASE: int;
    var ALTERNATE: int;
}

type java.util.Set {
}

type java.security.PKCS12Attribute {
}

type java.security.KeyStoreSpi {
}

type java.security.AuthProvider {
}

type java.security.KeyPair {
}

type java.security.DigestException {
}

type java.security.KeyPairGenerator {
}

type java.security.ProviderException {
}

type java.security.AccessControlException {
}

type java.security.PrivilegedActionException {
}

type java.security.DrbgParameters {
}

type java.security.Security {
}

type java.security.SignedObject {
}

type java.security.Permission {
}

type java.security.CodeSigner {
}

type java.security.DomainCombiner {
}

type java.security.ProtectionDomain {
}

enum java.security.CryptoPrimitive {
    MESSAGE_DIGEST = 0;
    SECURE_RANDOM = 1;
    BLOCK_CIPHER = 2;
    STREAM_CIPHER = 3;
    MAC = 4;
    KEY_WRAP = 5;
    PUBLIC_KEY_ENCRYPTION = 6;
    SIGNATURE = 7;
    KEY_ENCAPSULATION = 8;
    KEY_AGREEMENT = 9;
}

type java.security.SignatureException {
}

type java.security.AllPermission {
}

type java.security.AlgorithmParametersSpi {
}

type java.security.SecurityPermission {
}

type java.security.PublicKey {
    var serialVersionUID: long;
}

type java.security.BasicPermission {
}

type java.security.Guard {
}

type java.security.Identity {
}

type java.security.PolicySpi {
}

type java.security.Certificate {
}

type java.security.PrivilegedAction {
}

type java.security.UnrecoverableKeyException {
}

type java.security.Provider {
}

type java.security.MessageDigest {
}

type java.security.Policy {
    var UNSUPPORTED_EMPTY_COLLECTION: java.security.PermissionCollection;
}

type java.security.NoSuchAlgorithmException {
}

type java.security.AlgorithmParameterGeneratorSpi {
}

type java.security.KeyStore {
}

type java.security.AlgorithmParameterGenerator {
}

type java.security.spec.DSAPrivateKeySpec {
}

type java.security.spec.InvalidKeySpecException {
}

type java.security.spec.EdECPoint {
}

type java.security.spec.X509EncodedKeySpec {
}

type java.security.spec.RSAKeyGenParameterSpec {
    var F0: java.math.BigInteger;
    var F4: java.math.BigInteger;
}

type java.security.spec.ECGenParameterSpec {
    var X25519: java.security.spec.NamedParameterSpec;
    var X448: java.security.spec.NamedParameterSpec;
    var ED25519: java.security.spec.NamedParameterSpec;
    var ED448: java.security.spec.NamedParameterSpec;
}

type java.security.spec.ECFieldFp {
}

type java.security.spec.RSAPublicKeySpec {
}

type java.security.spec.DSAParameterSpec {
}

type java.security.spec.AlgorithmParameterSpec {
}

type java.security.spec.InvalidParameterSpecException {
}

type java.security.spec.RSAOtherPrimeInfo {
}

type java.security.spec.EncodedKeySpec {
}

type java.security.spec.DSAGenParameterSpec {
}

type java.security.spec.PSSParameterSpec {
    var TRAILER_FIELD_BC: int;
    var DEFAULT: java.security.spec.PSSParameterSpec;
}

type java.security.spec.XECPrivateKeySpec {
}

type java.security.spec.RSAPrivateCrtKeySpec {
}

type java.security.spec.EllipticCurve {
}

type java.security.spec.EdECPrivateKeySpec {
}

type java.security.spec.ECPoint {
    var POINT_INFINITY: java.security.spec.ECPoint;
}

type java.security.spec.ECPublicKeySpec {
}

type java.security.spec.ECField {
}

type java.security.spec.ECPrivateKeySpec {
}

type java.security.spec.KeySpec {
}

type java.security.spec.DSAPublicKeySpec {
}

type java.security.spec.NamedParameterSpec {
    var X25519: java.security.spec.NamedParameterSpec;
    var X448: java.security.spec.NamedParameterSpec;
    var ED25519: java.security.spec.NamedParameterSpec;
    var ED448: java.security.spec.NamedParameterSpec;
}

type java.security.spec.PKCS8EncodedKeySpec {
}

type java.security.spec.RSAMultiPrimePrivateCrtKeySpec {
}

type java.security.spec.XECPublicKeySpec {
}

type java.security.spec.ECFieldF2m {
}

type java.security.spec.EdECPublicKeySpec {
}

type java.security.spec.RSAPrivateKeySpec {
}

type java.security.spec.EdDSAParameterSpec {
}

type java.security.spec.MGF1ParameterSpec {
    var SHA1: java.security.spec.MGF1ParameterSpec;
    var SHA224: java.security.spec.MGF1ParameterSpec;
    var SHA256: java.security.spec.MGF1ParameterSpec;
    var SHA384: java.security.spec.MGF1ParameterSpec;
    var SHA512: java.security.spec.MGF1ParameterSpec;
    var SHA512_224: java.security.spec.MGF1ParameterSpec;
    var SHA512_256: java.security.spec.MGF1ParameterSpec;
    var SHA3_224: java.security.spec.MGF1ParameterSpec;
    var SHA3_256: java.security.spec.MGF1ParameterSpec;
    var SHA3_384: java.security.spec.MGF1ParameterSpec;
    var SHA3_512: java.security.spec.MGF1ParameterSpec;
}

type java.security.spec.ECParameterSpec {
}

type java.security.AlgorithmParameters {
}

type java.security.PermissionsEnumerator {
}

type java.security.KeyManagementException {
}

type java.security.Signature {
}

type java.security.Permissions {
}

type java.security.KeyFactory {
}

type java.security.KeyRep {
}

type java.security.UnresolvedPermission {
}

type java.security.SecureRandom {
}

type java.security.KeyStoreException {
}

type java.security.BasicPermissionCollection {
}

type java.security.IdentityScope {
}

type java.security.AllPermissionCollection {
}

type java.security.Key {
    var serialVersionUID: long;
}

type java.security.MessageDigestSpi {
}

type java.security.SignatureSpi {
}

type java.security.Timestamp {
}

type java.security.PrivateKey {
    var serialVersionUID: long;
}

type java.security.NoSuchProviderException {
}

type java.security.SecureClassLoader {
}

type java.security.InvalidKeyException {
}

type java.security.GeneralSecurityException {
}

type java.security.URIParameter {
}

type java.security.cert.CertPathBuilderResult {
}

type java.security.cert.CertPathValidator {
}

type java.security.cert.PKIXCertPathValidatorResult {
}

type java.security.cert.CRLException {
}

type java.security.cert.CertSelector {
}

type java.security.cert.CertPathValidatorResult {
}

type java.security.cert.X509CRLSelector {
}

type java.security.cert.CertPathChecker {
}

type java.security.cert.PKIXCertPathBuilderResult {
}

type java.security.cert.CertPathParameters {
}

type java.security.cert.PolicyQualifierInfo {
}

type java.security.cert.CRLSelector {
}

type java.security.cert.CertStoreParameters {
}

type java.security.cert.PKIXRevocationChecker {
}

type java.security.cert.Certificate {
}

type java.security.cert.CertPathValidatorException {
}

type java.security.cert.X509CertSelector {
}

type java.security.cert.CertificateFactorySpi {
}

type java.security.cert.CertPathHelperImpl {
}

type java.security.cert.CertificateExpiredException {
}

type java.security.cert.CertPathBuilder {
}

type java.security.cert.CertificateRevokedException {
}

type java.security.cert.CertificateParsingException {
}

type java.security.cert.X509Certificate {
}

type java.security.cert.X509Extension {
}

type java.security.cert.CertPathValidatorSpi {
}

type java.security.cert.CertificateNotYetValidException {
}

enum java.security.cert.CRLReason {
    UNSPECIFIED = 0;
    KEY_COMPROMISE = 1;
    CA_COMPROMISE = 2;
    AFFILIATION_CHANGED = 3;
    SUPERSEDED = 4;
    CESSATION_OF_OPERATION = 5;
    CERTIFICATE_HOLD = 6;
    UNUSED = 7;
    REMOVE_FROM_CRL = 8;
    PRIVILEGE_WITHDRAWN = 9;
    AA_COMPROMISE = 10;
}

type java.security.cert.PKIXParameters {
}

type java.security.cert.CertPathBuilderSpi {
}

type java.security.cert.CertificateEncodingException {
}

type java.security.cert.TrustAnchor {
}

type java.security.cert.Extension {
}

type java.security.cert.CertificateFactory {
}

type java.security.cert.PolicyNode {
}

type java.security.cert.URICertStoreParameters {
}

type java.security.cert.X509CRLEntry {
}

type java.security.cert.CertStoreSpi {
}

type java.security.cert.CertPath {
}

type java.security.cert.PKIXCertPathChecker {
}

type java.security.cert.LDAPCertStoreParameters {
}

type java.security.cert.CollectionCertStoreParameters {
}

enum java.security.cert.PKIXReason {
    NAME_CHAINING = 0;
    INVALID_KEY_USAGE = 1;
    INVALID_POLICY = 2;
    NO_TRUST_ANCHOR = 3;
    UNRECOGNIZED_CRIT_EXT = 4;
    NOT_CA_CERT = 5;
    PATH_TOO_LONG = 6;
    INVALID_NAME = 7;
}

type java.security.cert.CertPathBuilderException {
}

type java.security.cert.CertStore {
}

type java.security.cert.CertStoreException {
}

type java.security.cert.CRL {
}

type java.security.cert.CertificateException {
}

type java.security.cert.PKIXBuilderParameters {
}

type java.security.cert.X509CRL {
}

type java.security.GuardedObject {
}

type java.security.Principal {
}

type java.security.KeyException {
}

type java.security.KeyFactorySpi {
}

type java.security.InvalidAlgorithmParameterException {
}

type java.security.UnrecoverableEntryException {
}

type java.security.SecureRandomSpi {
}

type java.security.Signer {
}

type java.security.CodeSource {
}

type java.security.AlgorithmConstraints {
}

type java.security.PermissionCollection {
}

type java.security.DigestOutputStream {
}

type java.security.DigestInputStream {
}

type java.security.PrivilegedExceptionAction {
}

type java.security.AccessControlContext {
}

type java.security.KeyPairGeneratorSpi {
}

type java.security.AccessController {
}

type java.security.SecureRandomParameters {
}

type java.security.UnresolvedPermissionCollection {
}

type java.security.InvalidParameterException {
}

type java.security.interfaces.DSAKeyPairGenerator {
}

type java.security.interfaces.RSAPrivateCrtKey {
    var serialVersionUID: long;
}

type java.security.interfaces.DSAParams {
}

type java.security.interfaces.RSAPublicKey {
    var serialVersionUID: long;
}

type java.security.interfaces.RSAMultiPrimePrivateCrtKey {
    var serialVersionUID: long;
}

type java.security.interfaces.DSAPrivateKey {
    var serialVersionUID: long;
}

type java.security.interfaces.XECPrivateKey {
    var serialVersionUID: long;
}

type java.security.interfaces.EdECKey {
}

type java.security.interfaces.XECPublicKey {
    var serialVersionUID: long;
}

type java.security.interfaces.ECPublicKey {
    var serialVersionUID: long;
}

type java.security.interfaces.RSAPrivateKey {
    var serialVersionUID: long;
}

type java.security.interfaces.DSAPublicKey {
    var serialVersionUID: long;
}

type java.security.interfaces.EdECPublicKey {
    var serialVersionUID: long;
}

type java.security.interfaces.DSAKey {
}

type java.security.interfaces.ECPrivateKey {
    var serialVersionUID: long;
}

type java.security.interfaces.RSAKey {
}

type java.security.interfaces.ECKey {
}

type java.security.interfaces.XECKey {
}

type java.security.interfaces.EdECPrivateKey {
    var serialVersionUID: long;
}

type java.security.PermissionsHash {
}

type java.security.DomainLoadStoreParameter {
}

type java.io.Serializable {
}

type java.io.ByteArrayOutputStream {
}

type java.io.IOException {
}

type java.io.FileWriter {
}

type java.io.CharArrayWriter {
}

type java.io.FileNotFoundException {
}

type java.io.Reader {
}

type java.io.ByteArrayInputStream {
}

type java.io.PipedInputStream {
}

type java.io.ObjectOutputStream {
    var STREAM_MAGIC: short;
    var STREAM_VERSION: short;
    var TC_BASE: byte;
    var TC_NULL: byte;
    var TC_REFERENCE: byte;
    var TC_CLASSDESC: byte;
    var TC_OBJECT: byte;
    var TC_STRING: byte;
    var TC_ARRAY: byte;
    var TC_CLASS: byte;
    var TC_BLOCKDATA: byte;
    var TC_ENDBLOCKDATA: byte;
    var TC_RESET: byte;
    var TC_BLOCKDATALONG: byte;
    var TC_EXCEPTION: byte;
    var TC_LONGSTRING: byte;
    var TC_PROXYCLASSDESC: byte;
    var TC_ENUM: byte;
    var TC_MAX: byte;
    var baseWireHandle: int;
    var SC_WRITE_METHOD: byte;
    var SC_BLOCK_DATA: byte;
    var SC_SERIALIZABLE: byte;
    var SC_EXTERNALIZABLE: byte;
    var SC_ENUM: byte;
    var SUBSTITUTION_PERMISSION: java.io.SerializablePermission;
    var SUBCLASS_IMPLEMENTATION_PERMISSION: java.io.SerializablePermission;
    var SERIAL_FILTER_PERMISSION: java.io.SerializablePermission;
    var PROTOCOL_VERSION_1: int;
    var PROTOCOL_VERSION_2: int;
}

type java.io.FileDescriptor {
    var `in:`: java.io.FileDescriptor;
    var `out`: java.io.FileDescriptor;
    var err: java.io.FileDescriptor;
}

type java.io.StreamCorruptedException {
}

type java.io.ObjectInput {
}

type java.io.PipedWriter {
}

type java.io.NotSerializableException {
}

type java.io.StringReader {
}

type java.io.ObjectStreamConstants {
    var STREAM_MAGIC: short;
    var STREAM_VERSION: short;
    var TC_BASE: byte;
    var TC_NULL: byte;
    var TC_REFERENCE: byte;
    var TC_CLASSDESC: byte;
    var TC_OBJECT: byte;
    var TC_STRING: byte;
    var TC_ARRAY: byte;
    var TC_CLASS: byte;
    var TC_BLOCKDATA: byte;
    var TC_ENDBLOCKDATA: byte;
    var TC_RESET: byte;
    var TC_BLOCKDATALONG: byte;
    var TC_EXCEPTION: byte;
    var TC_LONGSTRING: byte;
    var TC_PROXYCLASSDESC: byte;
    var TC_ENUM: byte;
    var TC_MAX: byte;
    var baseWireHandle: int;
    var SC_WRITE_METHOD: byte;
    var SC_BLOCK_DATA: byte;
    var SC_SERIALIZABLE: byte;
    var SC_EXTERNALIZABLE: byte;
    var SC_ENUM: byte;
    var SUBSTITUTION_PERMISSION: java.io.SerializablePermission;
    var SUBCLASS_IMPLEMENTATION_PERMISSION: java.io.SerializablePermission;
    var SERIAL_FILTER_PERMISSION: java.io.SerializablePermission;
    var PROTOCOL_VERSION_1: int;
    var PROTOCOL_VERSION_2: int;
}

type java.io.FilterOutputStream {
}

type java.io.UncheckedIOException {
}

type java.io.ObjectInputFilter {
}

type java.io.ObjectStreamException {
}

type java.io.UnsupportedEncodingException {
}

type java.io.SerializablePermission {
}

type java.io.Flushable {
}

type java.io.DataOutputStream {
}

type java.io.PushbackReader {
}

type java.io.IOError {
}

type java.io.FilePermission {
}

type java.io.ObjectOutput {
}

type java.io.PipedOutputStream {
}

type java.io.SequenceInputStream {
}

type java.io.FilterReader {
}

type java.io.FileFilter {
}

type java.io.FileOutputStream {
}

type java.io.FilePermissionCollection {
}

type java.io.FileCleanable {
}

type java.io.BufferedInputStream {
}

type java.io.InterruptedIOException {
    var bytesTransferred: int;
}

type java.io.InputStreamReader {
}

type java.io.ObjectStreamClass {
    var NO_FIELDS: array<java.io.ObjectStreamField>;
}

type java.io.PrintWriter {
}

type java.io.WriteAbortedException {
    var detail: java.lang.Exception;
}

type java.io.BufferedWriter {
}

type java.io.UTFDataFormatException {
}

type java.io.FileSystem {
    var BA_EXISTS: int;
    var BA_REGULAR: int;
    var BA_DIRECTORY: int;
    var BA_HIDDEN: int;
    var ACCESS_READ: int;
    var ACCESS_WRITE: int;
    var ACCESS_EXECUTE: int;
    var SPACE_TOTAL: int;
    var SPACE_FREE: int;
    var SPACE_USABLE: int;
}

type java.io.Console {
}

type java.io.BufferedOutputStream {
}

type java.io.InvalidObjectException {
}

type java.io.Closeable {
}

type java.io.LineNumberInputStream {
}

type java.io.File {
    var separatorChar: char;
    var separator: java.lang.String;
    var pathSeparatorChar: char;
    var pathSeparator: java.lang.String;
}

type java.io.FilterInputStream {
}

type java.io.LineNumberReader {
}

type java.io.InputStream {
}

type java.io.OptionalDataException {
    var length: int;
    var eof: boolean;
}

type java.io.FilenameFilter {
}

type java.io.UnixFileSystem {
    var BA_EXISTS: int;
    var BA_REGULAR: int;
    var BA_DIRECTORY: int;
    var BA_HIDDEN: int;
    var ACCESS_READ: int;
    var ACCESS_WRITE: int;
    var ACCESS_EXECUTE: int;
    var SPACE_TOTAL: int;
    var SPACE_FREE: int;
    var SPACE_USABLE: int;
}

type java.io.BufferedReader {
}

type java.io.CharConversionException {
}

type java.io.PrintStream {
}

type java.io.ObjectStreamField {
}

type java.io.Externalizable {
}

type java.io.StringBufferInputStream {
}

type java.io.FilterWriter {
}

type java.io.StreamTokenizer {
    var ttype: int;
    var TT_EOF: int;
    var TT_EOL: int;
    var TT_NUMBER: int;
    var TT_WORD: int;
    var sval: java.lang.String;
    var nval: double;
}

type java.io.DeleteOnExitHook {
}

type java.io.ObjectInputValidation {
}

type java.io.DataInput {
}

type java.io.NotActiveException {
}

type java.io.RandomAccessFile {
}

type java.io.DataInputStream {
}

type java.io.DefaultFileSystem {
}

type java.io.OutputStream {
}

type java.io.StringWriter {
}

type java.io.PushbackInputStream {
}

type java.io.ObjectInputStream {
    var STREAM_MAGIC: short;
    var STREAM_VERSION: short;
    var TC_BASE: byte;
    var TC_NULL: byte;
    var TC_REFERENCE: byte;
    var TC_CLASSDESC: byte;
    var TC_OBJECT: byte;
    var TC_STRING: byte;
    var TC_ARRAY: byte;
    var TC_CLASS: byte;
    var TC_BLOCKDATA: byte;
    var TC_ENDBLOCKDATA: byte;
    var TC_RESET: byte;
    var TC_BLOCKDATALONG: byte;
    var TC_EXCEPTION: byte;
    var TC_LONGSTRING: byte;
    var TC_PROXYCLASSDESC: byte;
    var TC_ENUM: byte;
    var TC_MAX: byte;
    var baseWireHandle: int;
    var SC_WRITE_METHOD: byte;
    var SC_BLOCK_DATA: byte;
    var SC_SERIALIZABLE: byte;
    var SC_EXTERNALIZABLE: byte;
    var SC_ENUM: byte;
    var SUBSTITUTION_PERMISSION: java.io.SerializablePermission;
    var SUBCLASS_IMPLEMENTATION_PERMISSION: java.io.SerializablePermission;
    var SERIAL_FILTER_PERMISSION: java.io.SerializablePermission;
    var PROTOCOL_VERSION_1: int;
    var PROTOCOL_VERSION_2: int;
}

type java.io.SerialCallbackContext {
}

type java.io.PipedReader {
}

type java.io.FileInputStream {
}

type java.io.FileReader {
}

type java.io.ExpiringCache {
}

type java.io.SyncFailedException {
}

type java.io.InvalidClassException {
    var classname: java.lang.String;
}

type java.io.Bits {
}

type java.io.Writer {
}

type java.io.CharArrayReader {
}

type java.io.DataOutput {
}

type java.io.OutputStreamWriter {
}

type java.io.EOFException {
}

enum java.math.RoundingMode {
    UP = 0;
    DOWN = 1;
    CEILING = 2;
    FLOOR = 3;
    HALF_UP = 4;
    HALF_DOWN = 5;
    HALF_EVEN = 6;
    UNNECESSARY = 7;
}

type java.math.BigDecimal {
    var ZERO: java.math.BigDecimal;
    var ONE: java.math.BigDecimal;
    var TEN: java.math.BigDecimal;
    var ROUND_UP: int;
    var ROUND_DOWN: int;
    var ROUND_CEILING: int;
    var ROUND_FLOOR: int;
    var ROUND_HALF_UP: int;
    var ROUND_HALF_DOWN: int;
    var ROUND_HALF_EVEN: int;
    var ROUND_UNNECESSARY: int;
}

type java.math.SignedMutableBigInteger {
}

type java.math.MathContext {
    var UNLIMITED: java.math.MathContext;
    var DECIMAL32: java.math.MathContext;
    var DECIMAL64: java.math.MathContext;
    var DECIMAL128: java.math.MathContext;
}

type java.math.BitSieve {
}

type java.math.MutableBigInteger {
}

type java.math.BigInteger {
    var ZERO: java.math.BigInteger;
    var ONE: java.math.BigInteger;
    var TWO: java.math.BigInteger;
    var TEN: java.math.BigInteger;
}

type java.time.Clock {
}

type java.time.temporal.TemporalQuery {
}

type java.time.temporal.ValueRange {
}

enum java.time.temporal.ChronoUnit {
    NANOS = 0;
    MICROS = 1;
    MILLIS = 2;
    SECONDS = 3;
    MINUTES = 4;
    HOURS = 5;
    HALF_DAYS = 6;
    DAYS = 7;
    WEEKS = 8;
    MONTHS = 9;
    YEARS = 10;
    DECADES = 11;
    CENTURIES = 12;
    MILLENNIA = 13;
    ERAS = 14;
    FOREVER = 15;
}

type java.time.temporal.TemporalQueries {
}

type java.time.temporal.Temporal {
}

type java.time.temporal.TemporalField {
}

type java.time.temporal.TemporalAmount {
}

type java.time.temporal.WeekFields {
    var ISO: java.time.temporal.WeekFields;
    var SUNDAY_START: java.time.temporal.WeekFields;
    var WEEK_BASED_YEARS: java.time.temporal.TemporalUnit;
}

enum java.time.temporal.ChronoField {
    NANO_OF_SECOND = 0;
    NANO_OF_DAY = 1;
    MICRO_OF_SECOND = 2;
    MICRO_OF_DAY = 3;
    MILLI_OF_SECOND = 4;
    MILLI_OF_DAY = 5;
    SECOND_OF_MINUTE = 6;
    SECOND_OF_DAY = 7;
    MINUTE_OF_HOUR = 8;
    MINUTE_OF_DAY = 9;
    HOUR_OF_AMPM = 10;
    CLOCK_HOUR_OF_AMPM = 11;
    HOUR_OF_DAY = 12;
    CLOCK_HOUR_OF_DAY = 13;
    AMPM_OF_DAY = 14;
    DAY_OF_WEEK = 15;
    ALIGNED_DAY_OF_WEEK_IN_MONTH = 16;
    ALIGNED_DAY_OF_WEEK_IN_YEAR = 17;
    DAY_OF_MONTH = 18;
    DAY_OF_YEAR = 19;
    EPOCH_DAY = 20;
    ALIGNED_WEEK_OF_MONTH = 21;
    ALIGNED_WEEK_OF_YEAR = 22;
    MONTH_OF_YEAR = 23;
    PROLEPTIC_MONTH = 24;
    YEAR_OF_ERA = 25;
    YEAR = 26;
    ERA = 27;
    INSTANT_SECONDS = 28;
    OFFSET_SECONDS = 29;
}

type java.time.temporal.TemporalAdjuster {
}

type java.time.temporal.TemporalAdjusters {
}

type java.time.temporal.TemporalAccessor {
}

type java.time.temporal.TemporalUnit {
}

type java.time.temporal.IsoFields {
    var DAY_OF_QUARTER: java.time.temporal.TemporalField;
    var QUARTER_OF_YEAR: java.time.temporal.TemporalField;
    var WEEK_OF_WEEK_BASED_YEAR: java.time.temporal.TemporalField;
    var WEEK_BASED_YEAR: java.time.temporal.TemporalField;
    var WEEK_BASED_YEARS: java.time.temporal.TemporalUnit;
    var QUARTER_YEARS: java.time.temporal.TemporalUnit;
}

type java.time.temporal.JulianFields {
    var JULIAN_DAY: java.time.temporal.TemporalField;
    var MODIFIED_JULIAN_DAY: java.time.temporal.TemporalField;
    var RATA_DIE: java.time.temporal.TemporalField;
}

type java.time.temporal.UnsupportedTemporalTypeException {
}

type java.time.ZoneId {
    var SHORT_IDS: java.util.Map;
}

type java.time.ZoneOffset {
    var UTC: java.time.ZoneOffset;
    var MIN: java.time.ZoneOffset;
    var MAX: java.time.ZoneOffset;
    var SHORT_IDS: java.util.Map;
}

type java.time.OffsetDateTime {
    var MIN: java.time.OffsetDateTime;
    var MAX: java.time.OffsetDateTime;
}

type java.time.Year {
    var MIN_VALUE: int;
    var MAX_VALUE: int;
}

type java.time.Period {
    var ZERO: java.time.Period;
}

type java.time.chrono.AbstractChronology {
}

enum java.time.chrono.MinguoEra {
    BEFORE_ROC = 0;
    ROC = 1;
}

type java.time.chrono.HijrahChronology {
    var INSTANCE: java.time.chrono.HijrahChronology;
}

type java.time.chrono.ChronoPeriod {
}

type java.time.chrono.JapaneseDate {
}

type java.time.chrono.MinguoChronology {
    var INSTANCE: java.time.chrono.MinguoChronology;
}

type java.time.chrono.ChronoZonedDateTime {
}

type java.time.chrono.ThaiBuddhistChronology {
    var INSTANCE: java.time.chrono.ThaiBuddhistChronology;
}

type java.time.chrono.ChronoZonedDateTimeImpl {
}

type java.time.chrono.HijrahDate {
}

enum java.time.chrono.IsoEra {
    BCE = 0;
    CE = 1;
}

type java.time.chrono.ChronoPeriodImpl {
}

enum java.time.chrono.HijrahEra {
    AH = 0;
}

type java.time.chrono.ChronoLocalDateImpl {
}

type java.time.chrono.MinguoDate {
}

type java.time.chrono.JapaneseEra {
    var MEIJI: java.time.chrono.JapaneseEra;
    var TAISHO: java.time.chrono.JapaneseEra;
    var SHOWA: java.time.chrono.JapaneseEra;
    var HEISEI: java.time.chrono.JapaneseEra;
    var REIWA: java.time.chrono.JapaneseEra;
}

type java.time.chrono.ChronoLocalDateTimeImpl {
}

type java.time.chrono.ChronoLocalDateTime {
}

type java.time.chrono.ThaiBuddhistDate {
}

type java.time.chrono.Chronology {
}

type java.time.chrono.Ser {
}

type java.time.chrono.ChronoLocalDate {
}

type java.time.chrono.Era {
}

type java.time.chrono.IsoChronology {
    var INSTANCE: java.time.chrono.IsoChronology;
}

type java.time.chrono.JapaneseChronology {
    var INSTANCE: java.time.chrono.JapaneseChronology;
}

enum java.time.chrono.ThaiBuddhistEra {
    BEFORE_BE = 0;
    BE = 1;
}

type java.time.LocalTime {
    var MIN: java.time.LocalTime;
    var MAX: java.time.LocalTime;
    var MIDNIGHT: java.time.LocalTime;
    var NOON: java.time.LocalTime;
}

enum java.time.DayOfWeek {
    MONDAY = 0;
    TUESDAY = 1;
    WEDNESDAY = 2;
    THURSDAY = 3;
    FRIDAY = 4;
    SATURDAY = 5;
    SUNDAY = 6;
}

type java.time.Instant {
    var EPOCH: java.time.Instant;
    var MIN: java.time.Instant;
    var MAX: java.time.Instant;
}

type java.time.zone.ZoneRules {
}

type java.time.zone.TzdbZoneRulesProvider {
}

type java.time.zone.ZoneOffsetTransitionRule {
}

type java.time.zone.ZoneRulesProvider {
}

type java.time.zone.ZoneRulesException {
}

type java.time.zone.Ser {
}

type java.time.zone.ZoneOffsetTransition {
}

type java.time.ZonedDateTime {
}

type java.time.OffsetTime {
    var MIN: java.time.OffsetTime;
    var MAX: java.time.OffsetTime;
}

type java.time.LocalDate {
    var MIN: java.time.LocalDate;
    var MAX: java.time.LocalDate;
    var EPOCH: java.time.LocalDate;
}

type java.time.YearMonth {
}

type java.time.LocalDateTime {
    var MIN: java.time.LocalDateTime;
    var MAX: java.time.LocalDateTime;
}

enum java.time.Month {
    JANUARY = 0;
    FEBRUARY = 1;
    MARCH = 2;
    APRIL = 3;
    MAY = 4;
    JUNE = 5;
    JULY = 6;
    AUGUST = 7;
    SEPTEMBER = 8;
    OCTOBER = 9;
    NOVEMBER = 10;
    DECEMBER = 11;
}

type java.time.format.DateTimeFormatter {
    var ISO_LOCAL_DATE: java.time.format.DateTimeFormatter;
    var ISO_OFFSET_DATE: java.time.format.DateTimeFormatter;
    var ISO_DATE: java.time.format.DateTimeFormatter;
    var ISO_LOCAL_TIME: java.time.format.DateTimeFormatter;
    var ISO_OFFSET_TIME: java.time.format.DateTimeFormatter;
    var ISO_TIME: java.time.format.DateTimeFormatter;
    var ISO_LOCAL_DATE_TIME: java.time.format.DateTimeFormatter;
    var ISO_OFFSET_DATE_TIME: java.time.format.DateTimeFormatter;
    var ISO_ZONED_DATE_TIME: java.time.format.DateTimeFormatter;
    var ISO_DATE_TIME: java.time.format.DateTimeFormatter;
    var ISO_ORDINAL_DATE: java.time.format.DateTimeFormatter;
    var ISO_WEEK_DATE: java.time.format.DateTimeFormatter;
    var ISO_INSTANT: java.time.format.DateTimeFormatter;
    var BASIC_ISO_DATE: java.time.format.DateTimeFormatter;
    var RFC_1123_DATE_TIME: java.time.format.DateTimeFormatter;
}

type java.time.format.DateTimeTextProvider {
}

type java.time.format.DateTimeParseContext {
}

enum java.time.format.FormatStyle {
    FULL = 0;
    LONG = 1;
    MEDIUM = 2;
    SHORT = 3;
}

enum java.time.format.TextStyle {
    FULL = 0;
    FULL_STANDALONE = 1;
    SHORT = 2;
    SHORT_STANDALONE = 3;
    NARROW = 4;
    NARROW_STANDALONE = 5;
}

type java.time.format.ZoneName {
}

type java.time.format.Parsed {
}

enum java.time.format.ResolverStyle {
    STRICT = 0;
    SMART = 1;
    LENIENT = 2;
}

type java.time.format.DateTimePrintContext {
}

type java.time.format.DecimalStyle {
    var STANDARD: java.time.format.DecimalStyle;
}

enum java.time.format.SignStyle {
    NORMAL = 0;
    ALWAYS = 1;
    NEVER = 2;
    NOT_NEGATIVE = 3;
    EXCEEDS_PAD = 4;
}

type java.time.format.DateTimeFormatterBuilder {
}

type java.time.format.DateTimeParseException {
}

type java.time.MonthDay {
}

type java.time.ZoneRegion {
    var SHORT_IDS: java.util.Map;
}

type java.time.Ser {
}

type java.time.Duration {
    var ZERO: java.time.Duration;
}

type java.time.DateTimeException {
}

type java.lang.LayerInstantiationException {
}

type java.lang.CharacterData00 {
}

type java.lang.NoSuchFieldException {
}

type java.lang.UnsupportedOperationException {
}

type java.lang.BootstrapMethodError {
}

type java.lang.StringConcatHelper {
}

type java.lang.RuntimeException {
}

type java.lang.Math {
    var E: double;
    var PI: double;
}

type java.lang.IllegalArgumentException {
}

type java.lang.Long {
    var MIN_VALUE: long;
    var MAX_VALUE: long;
    var TYPE: java.lang.Class;
    var SIZE: int;
    var BYTES: int;
}

type java.lang.VerifyError {
}

type java.lang.NoSuchMethodError {
}

type java.lang.ModuleLayer {
}

type java.lang.ref.Reference {
}

type java.lang.ref.PhantomReference {
}

type java.lang.ref.FinalReference {
}

type java.lang.ref.Finalizer {
}

type java.lang.ref.SoftReference {
}

type java.lang.ref.FinalizerHistogram {
}

type java.lang.ref.ReferenceQueue {
}

type java.lang.ref.WeakReference {
}

type java.lang.ref.Cleaner {
}

type java.lang.NoSuchMethodException {
}

type java.lang.CharacterData02 {
}

type java.lang.StackStreamFactory {
}

type java.lang.NegativeArraySizeException {
}

type java.lang.StringBuffer {
}

type java.lang.Process {
}

type java.lang.AbstractMethodError {
}

type java.lang.Comparable {
}

type java.lang.StackTraceElement {
}

type java.lang.Error {
}

type java.lang.InterruptedException {
}

type java.lang.IllegalStateException {
}

type java.lang.StringIndexOutOfBoundsException {
}

type java.lang.ClassValue {
}

type java.lang.InstantiationException {
}

type java.lang.StringCoding {
}

type java.lang.InheritableThreadLocal {
}

type java.lang.AbstractStringBuilder {
}

type java.lang.Appendable {
}

type java.lang.RuntimePermission {
}

type java.lang.AssertionStatusDirectives {
}

type java.lang.SecurityException {
}

type java.lang.Character {
    var MIN_RADIX: int;
    var MAX_RADIX: int;
    var MIN_VALUE: char;
    var MAX_VALUE: char;
    var TYPE: java.lang.Class;
    var UNASSIGNED: byte;
    var UPPERCASE_LETTER: byte;
    var LOWERCASE_LETTER: byte;
    var TITLECASE_LETTER: byte;
    var MODIFIER_LETTER: byte;
    var OTHER_LETTER: byte;
    var NON_SPACING_MARK: byte;
    var ENCLOSING_MARK: byte;
    var COMBINING_SPACING_MARK: byte;
    var DECIMAL_DIGIT_NUMBER: byte;
    var LETTER_NUMBER: byte;
    var OTHER_NUMBER: byte;
    var SPACE_SEPARATOR: byte;
    var LINE_SEPARATOR: byte;
    var PARAGRAPH_SEPARATOR: byte;
    var CONTROL: byte;
    var FORMAT: byte;
    var PRIVATE_USE: byte;
    var SURROGATE: byte;
    var DASH_PUNCTUATION: byte;
    var START_PUNCTUATION: byte;
    var END_PUNCTUATION: byte;
    var CONNECTOR_PUNCTUATION: byte;
    var OTHER_PUNCTUATION: byte;
    var MATH_SYMBOL: byte;
    var CURRENCY_SYMBOL: byte;
    var MODIFIER_SYMBOL: byte;
    var OTHER_SYMBOL: byte;
    var INITIAL_QUOTE_PUNCTUATION: byte;
    var FINAL_QUOTE_PUNCTUATION: byte;
    var DIRECTIONALITY_UNDEFINED: byte;
    var DIRECTIONALITY_LEFT_TO_RIGHT: byte;
    var DIRECTIONALITY_RIGHT_TO_LEFT: byte;
    var DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC: byte;
    var DIRECTIONALITY_EUROPEAN_NUMBER: byte;
    var DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR: byte;
    var DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR: byte;
    var DIRECTIONALITY_ARABIC_NUMBER: byte;
    var DIRECTIONALITY_COMMON_NUMBER_SEPARATOR: byte;
    var DIRECTIONALITY_NONSPACING_MARK: byte;
    var DIRECTIONALITY_BOUNDARY_NEUTRAL: byte;
    var DIRECTIONALITY_PARAGRAPH_SEPARATOR: byte;
    var DIRECTIONALITY_SEGMENT_SEPARATOR: byte;
    var DIRECTIONALITY_WHITESPACE: byte;
    var DIRECTIONALITY_OTHER_NEUTRALS: byte;
    var DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING: byte;
    var DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE: byte;
    var DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING: byte;
    var DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE: byte;
    var DIRECTIONALITY_POP_DIRECTIONAL_FORMAT: byte;
    var DIRECTIONALITY_LEFT_TO_RIGHT_ISOLATE: byte;
    var DIRECTIONALITY_RIGHT_TO_LEFT_ISOLATE: byte;
    var DIRECTIONALITY_FIRST_STRONG_ISOLATE: byte;
    var DIRECTIONALITY_POP_DIRECTIONAL_ISOLATE: byte;
    var MIN_HIGH_SURROGATE: char;
    var MAX_HIGH_SURROGATE: char;
    var MIN_LOW_SURROGATE: char;
    var MAX_LOW_SURROGATE: char;
    var MIN_SURROGATE: char;
    var MAX_SURROGATE: char;
    var MIN_SUPPLEMENTARY_CODE_POINT: int;
    var MIN_CODE_POINT: int;
    var MAX_CODE_POINT: int;
    var SIZE: int;
    var BYTES: int;
}

type java.lang.ClassNotFoundException {
}

type java.lang.CharacterDataUndefined {
}

type java.lang.ExceptionInInitializerError {
}

type java.lang.CharacterData03 {
}

type java.lang.VersionProps {
}

type java.lang.NoClassDefFoundError {
}

type java.lang.invoke.DelegatingMethodHandle$Holder {
}

type java.lang.invoke.IndirectVarHandle {
}

type java.lang.invoke.MemoryAccessVarHandleFloatHelper {
}

type java.lang.invoke.VarHandleByteArrayAsChars {
}

type java.lang.invoke.TypeDescriptor {
}

type java.lang.invoke.MethodHandles {
}

type java.lang.invoke.BoundMethodHandle {
}

type java.lang.invoke.VarHandleLongs {
}

type java.lang.invoke.GenerateJLIClassesHelper {
}

type java.lang.invoke.MemoryAccessVarHandleShortHelper {
}

type java.lang.invoke.VarHandleByteArrayAsDoubles {
}

type java.lang.invoke.LambdaFormBuffer {
}

type java.lang.invoke.BootstrapMethodInvoker {
}

type java.lang.invoke.BootstrapCallInfo {
}

type java.lang.invoke.VarHandleByteArrayAsInts {
}

type java.lang.invoke.Invokers$Holder {
}

type java.lang.invoke.ConstantBootstraps {
}

type java.lang.invoke.VarHandleByteArrayAsShorts {
}

type java.lang.invoke.ResolvedMethodName {
}

type java.lang.invoke.VolatileCallSite {
}

type java.lang.invoke.ConstantCallSite {
}

type java.lang.invoke.MemoryAccessVarHandleCharHelper {
}

type java.lang.invoke.LambdaProxyClassArchive {
}

type java.lang.invoke.VarHandleBooleans {
}

type java.lang.invoke.LambdaMetafactory {
    var FLAG_SERIALIZABLE: int;
    var FLAG_MARKERS: int;
    var FLAG_BRIDGES: int;
}

type java.lang.invoke.MethodHandleNatives {
}

type java.lang.invoke.MethodType {
}

type java.lang.invoke.ClassSpecializer {
}

type java.lang.invoke.InvokeDynamic {
}

type java.lang.invoke.InfoFromMemberName {
    var REF_getField: int;
    var REF_getStatic: int;
    var REF_putField: int;
    var REF_putStatic: int;
    var REF_invokeVirtual: int;
    var REF_invokeStatic: int;
    var REF_invokeSpecial: int;
    var REF_newInvokeSpecial: int;
    var REF_invokeInterface: int;
}

type java.lang.invoke.VarHandleFloats {
}

type java.lang.invoke.DirectMethodHandle$Holder {
}

type java.lang.invoke.Invokers {
}

type java.lang.invoke.ConstantGroup {
}

type java.lang.invoke.MemoryAccessVarHandleDoubleHelper {
}

type java.lang.invoke.MemoryAccessVarHandleBase {
}

type java.lang.invoke.DelegatingMethodHandle {
}

type java.lang.invoke.CallSite {
}

type java.lang.invoke.SwitchPoint {
}

type java.lang.invoke.MemberName {
    var PUBLIC: int;
    var DECLARED: int;
}

type java.lang.invoke.DirectMethodHandle {
}

type java.lang.invoke.VarHandleShorts {
}

type java.lang.invoke.MethodHandleProxies {
}

type java.lang.invoke.MutableCallSite {
}

type java.lang.invoke.TypeConvertingMethodAdapter {
}

type java.lang.invoke.VarHandleInts {
}

type java.lang.invoke.MethodHandle {
}

type java.lang.invoke.SerializedLambda {
}

type java.lang.invoke.InvokerBytecodeGenerator {
}

type java.lang.invoke.ProxyClassesDumper {
}

type java.lang.invoke.StringConcatFactory {
}

type java.lang.invoke.VarHandleReferences {
}

type java.lang.invoke.VarHandleGuards {
}

type java.lang.invoke.NativeMethodHandle {
}

type java.lang.invoke.MethodTypeForm {
    var ERASE: int;
    var WRAP: int;
    var UNWRAP: int;
}

type java.lang.invoke.VarHandleChars {
}

type java.lang.invoke.LambdaFormEditor {
}

type java.lang.invoke.MethodHandleInfo {
    var REF_getField: int;
    var REF_getStatic: int;
    var REF_putField: int;
    var REF_putStatic: int;
    var REF_invokeVirtual: int;
    var REF_invokeStatic: int;
    var REF_invokeSpecial: int;
    var REF_newInvokeSpecial: int;
    var REF_invokeInterface: int;
}

type java.lang.invoke.WrongMethodTypeException {
}

type java.lang.invoke.AbstractValidatingLambdaMetafactory {
}

type java.lang.invoke.VarHandles {
}

type java.lang.invoke.VarHandleDoubles {
}

type java.lang.invoke.StringConcatException {
}

type java.lang.invoke.MemoryAccessVarHandleByteHelper {
}

type java.lang.invoke.LambdaForm$Holder {
}

type java.lang.invoke.MethodHandleStatics {
}

type java.lang.invoke.VarHandleByteArrayAsLongs {
}

type java.lang.invoke.VarHandleBytes {
}

type java.lang.invoke.VarHandle {
}

type java.lang.invoke.InnerClassLambdaMetafactory {
}

type java.lang.invoke.LambdaForm {
    var VOID_RESULT: int;
    var LAST_RESULT: int;
}

type java.lang.invoke.MethodHandleImpl {
}

type java.lang.invoke.AbstractConstantGroup {
}

type java.lang.invoke.MemoryAccessVarHandleIntHelper {
}

type java.lang.invoke.MemoryAccessVarHandleLongHelper {
}

type java.lang.invoke.SimpleMethodHandle {
}

type java.lang.invoke.VarHandleByteArrayAsFloats {
}

type java.lang.invoke.VarForm {
}

type java.lang.invoke.VarHandleByteArrayBase {
}

type java.lang.invoke.LambdaConversionException {
}

type java.lang.module.ModuleFinder {
}

type java.lang.module.Resolver {
}

type java.lang.module.ResolvedModule {
}

type java.lang.module.ModuleReference {
}

type java.lang.module.InvalidModuleDescriptorException {
}

type java.lang.module.FindException {
}

type java.lang.module.ModuleReader {
}

type java.lang.module.Configuration {
}

type java.lang.module.ResolutionException {
}

type java.lang.module.ModuleDescriptor {
}

type java.lang.StrictMath {
    var E: double;
    var PI: double;
}

type java.lang.UnknownError {
}

type java.lang.Runtime {
}

type java.lang.CharacterData01 {
}

type java.lang.CharacterDataPrivateUse {
}

type java.lang.reflect.InvocationTargetException {
}

type java.lang.reflect.AnnotatedElement {
}

type java.lang.reflect.AnnotatedWildcardType {
}

type java.lang.reflect.ReflectAccess {
}

type java.lang.reflect.Constructor {
    var PUBLIC: int;
    var DECLARED: int;
}

type java.lang.reflect.AnnotatedArrayType {
}

type java.lang.reflect.Proxy {
}

type java.lang.reflect.AnnotatedType {
}

type java.lang.reflect.Array {
}

type java.lang.reflect.Executable {
    var PUBLIC: int;
    var DECLARED: int;
}

type java.lang.reflect.GenericSignatureFormatError {
}

type java.lang.reflect.AccessibleObject {
}

type java.lang.reflect.Parameter {
}

type java.lang.reflect.Type {
}

type java.lang.reflect.Member {
    var PUBLIC: int;
    var DECLARED: int;
}

type java.lang.reflect.GenericArrayType {
}

type java.lang.reflect.Field {
    var PUBLIC: int;
    var DECLARED: int;
}

type java.lang.reflect.ParameterizedType {
}

type java.lang.reflect.AnnotatedParameterizedType {
}

type java.lang.reflect.TypeVariable {
}

type java.lang.reflect.Method {
    var PUBLIC: int;
    var DECLARED: int;
}

type java.lang.reflect.MalformedParametersException {
}

type java.lang.reflect.AnnotatedTypeVariable {
}

type java.lang.reflect.ProxyGenerator {
    var COMPUTE_MAXS: int;
    var COMPUTE_FRAMES: int;
}

type java.lang.reflect.RecordComponent {
}

type java.lang.reflect.UndeclaredThrowableException {
}

type java.lang.reflect.MalformedParameterizedTypeException {
}

type java.lang.reflect.InaccessibleObjectException {
}

type java.lang.reflect.Modifier {
    var PUBLIC: int;
    var PRIVATE: int;
    var PROTECTED: int;
    var STATIC: int;
    var FINAL: int;
    var SYNCHRONIZED: int;
    var VOLATILE: int;
    var TRANSIENT: int;
    var NATIVE: int;
    var INTERFACE: int;
    var ABSTRACT: int;
    var STRICT: int;
}

type java.lang.reflect.ReflectPermission {
}

type java.lang.reflect.InvocationHandler {
}

type java.lang.reflect.WildcardType {
}

type java.lang.reflect.GenericDeclaration {
}

type java.lang.InternalError {
}

type java.lang.runtime.ObjectMethods {
}

type java.lang.CharacterData {
}

type java.lang.ArrayIndexOutOfBoundsException {
}

type java.lang.ThreadLocal {
}

type java.lang.Cloneable {
}

type java.lang.Throwable {
}

type java.lang.NullPointerException {
}

type java.lang.Thread {
    var MIN_PRIORITY: int;
    var NORM_PRIORITY: int;
    var MAX_PRIORITY: int;
}

type java.lang.Number {
}

type java.lang.NamedPackage {
}

type java.lang.FdLibm {
}

enum `java.lang.annotation.ElementType` {
    TYPE = 0;
    FIELD = 1;
    METHOD = 2;
    PARAMETER = 3;
    CONSTRUCTOR = 4;
    LOCAL_VARIABLE = 5;
    ANNOTATION_TYPE = 6;
    PACKAGE = 7;
    TYPE_PARAMETER = 8;
    TYPE_USE = 9;
    MODULE = 10;
    RECORD_COMPONENT = 11;
}

type `java.lang.annotation.AnnotationTypeMismatchException` {
}

type `java.lang.annotation.AnnotationFormatError` {
}

type `java.lang.annotation.IncompleteAnnotationException` {
}

//FIXME
enum `java.lang.annotation.RetentionPolicy` {
    SOURCE = 0;
    CLASS = 1;
    RUNTIME = 2;
}

type `java.lang.annotation.Annotation` {
}

type java.lang.Exception {
}

type java.lang.LiveStackFrameInfo {
}

type java.lang.ThreadDeath {
}

type java.lang.NumberFormatException {
}

type java.lang.StringUTF16 {
}

type java.lang.Void {
    var TYPE: java.lang.Class;
}

type java.lang.CloneNotSupportedException {
}

type java.lang.LinkageError {
}

type java.lang.ThreadGroup {
}

type java.lang.StackFrameInfo {
}

type java.lang.EnumConstantNotPresentException {
}

type java.lang.AutoCloseable {
}

type java.lang.Compiler {
}

type java.lang.StringBuilder {
}

type java.lang.SecurityManager {
}

type java.lang.ProcessHandle {
}

type java.lang.LiveStackFrame {
}

type java.lang.StackWalker {
}

type java.lang.ClassLoader {
}

type java.lang.ClassCircularityError {
}

type java.lang.Shutdown {
}

type java.lang.System {
    var `in`: java.io.InputStream;
    var `out`: java.io.PrintStream;
    var err: java.io.PrintStream;
}

type java.lang.CharacterDataLatin1 {
}

type java.lang.Readable {
}

type java.lang.Integer {
    var MIN_VALUE: int;
    var MAX_VALUE: int;
    var TYPE: java.lang.Class;
    var SIZE: int;
    var BYTES: int;
}

type java.lang.constant.ClassDesc {
}

type java.lang.constant.DirectMethodHandleDescImpl {
}

type java.lang.constant.ConstantUtils {
    var EMPTY_CONSTANTDESC: array<java.lang.constant.ConstantDesc>;
}

type java.lang.constant.AsTypeMethodHandleDesc {
}

type java.lang.constant.MethodTypeDesc {
}

type java.lang.constant.ReferenceClassDescImpl {
}

type java.lang.constant.ConstantDesc {
}

type java.lang.constant.Constable {
}

type java.lang.constant.DynamicCallSiteDesc {
}

type java.lang.constant.ConstantDescs {
    var DEFAULT_NAME: java.lang.String;
    var CD_Object: java.lang.constant.ClassDesc;
    var CD_String: java.lang.constant.ClassDesc;
    var CD_Class: java.lang.constant.ClassDesc;
    var CD_Number: java.lang.constant.ClassDesc;
    var CD_Integer: java.lang.constant.ClassDesc;
    var CD_Long: java.lang.constant.ClassDesc;
    var CD_Float: java.lang.constant.ClassDesc;
    var CD_Double: java.lang.constant.ClassDesc;
    var CD_Short: java.lang.constant.ClassDesc;
    var CD_Byte: java.lang.constant.ClassDesc;
    var CD_Character: java.lang.constant.ClassDesc;
    var CD_Boolean: java.lang.constant.ClassDesc;
    var CD_Void: java.lang.constant.ClassDesc;
    var CD_Throwable: java.lang.constant.ClassDesc;
    var CD_Exception: java.lang.constant.ClassDesc;
    var CD_Enum: java.lang.constant.ClassDesc;
    var CD_VarHandle: java.lang.constant.ClassDesc;
    var CD_MethodHandles: java.lang.constant.ClassDesc;
    var CD_MethodHandles_Lookup: java.lang.constant.ClassDesc;
    var CD_MethodHandle: java.lang.constant.ClassDesc;
    var CD_MethodType: java.lang.constant.ClassDesc;
    var CD_CallSite: java.lang.constant.ClassDesc;
    var CD_Collection: java.lang.constant.ClassDesc;
    var CD_List: java.lang.constant.ClassDesc;
    var CD_Set: java.lang.constant.ClassDesc;
    var CD_Map: java.lang.constant.ClassDesc;
    var CD_ConstantDesc: java.lang.constant.ClassDesc;
    var CD_ClassDesc: java.lang.constant.ClassDesc;
    var CD_EnumDesc: java.lang.constant.ClassDesc;
    var CD_MethodTypeDesc: java.lang.constant.ClassDesc;
    var CD_MethodHandleDesc: java.lang.constant.ClassDesc;
    var CD_DirectMethodHandleDesc: java.lang.constant.ClassDesc;
    var CD_VarHandleDesc: java.lang.constant.ClassDesc;
    var CD_MethodHandleDesc_Kind: java.lang.constant.ClassDesc;
    var CD_DynamicConstantDesc: java.lang.constant.ClassDesc;
    var CD_DynamicCallSiteDesc: java.lang.constant.ClassDesc;
    var CD_ConstantBootstraps: java.lang.constant.ClassDesc;
    var BSM_PRIMITIVE_CLASS: java.lang.constant.DirectMethodHandleDesc;
    var BSM_ENUM_CONSTANT: java.lang.constant.DirectMethodHandleDesc;
    var BSM_GET_STATIC_FINAL: java.lang.constant.DirectMethodHandleDesc;
    var BSM_NULL_CONSTANT: java.lang.constant.DirectMethodHandleDesc;
    var BSM_VARHANDLE_FIELD: java.lang.constant.DirectMethodHandleDesc;
    var BSM_VARHANDLE_STATIC_FIELD: java.lang.constant.DirectMethodHandleDesc;
    var BSM_VARHANDLE_ARRAY: java.lang.constant.DirectMethodHandleDesc;
    var BSM_INVOKE: java.lang.constant.DirectMethodHandleDesc;
    var BSM_EXPLICIT_CAST: java.lang.constant.DirectMethodHandleDesc;
    var CD_int: java.lang.constant.ClassDesc;
    var CD_long: java.lang.constant.ClassDesc;
    var CD_float: java.lang.constant.ClassDesc;
    var CD_double: java.lang.constant.ClassDesc;
    var CD_short: java.lang.constant.ClassDesc;
    var CD_byte: java.lang.constant.ClassDesc;
    var CD_char: java.lang.constant.ClassDesc;
    var CD_boolean: java.lang.constant.ClassDesc;
    var CD_void: java.lang.constant.ClassDesc;
    var NULL: java.lang.constant.ConstantDesc;
    var TRUE: java.lang.constant.DynamicConstantDesc;
    var FALSE: java.lang.constant.DynamicConstantDesc;
}

type java.lang.constant.DirectMethodHandleDesc {
}

type java.lang.constant.PrimitiveClassDescImpl {
}

type java.lang.constant.DynamicConstantDesc {
}

type java.lang.constant.MethodHandleDesc {
}

type java.lang.constant.MethodTypeDescImpl {
}

type java.lang.ProcessEnvironment {
}

type java.lang.ConditionalSpecialCasing {
}

type java.lang.Class {
}

typealias java.lang.String = string;

type java.lang.ProcessBuilder {
}

type java.lang.ApplicationShutdownHooks {
}

type java.lang.Terminator {
}

type java.lang.Byte {
    var MIN_VALUE: byte;
    var MAX_VALUE: byte;
    var TYPE: java.lang.Class;
    var SIZE: int;
    var BYTES: int;
}

type java.lang.ReflectiveOperationException {
}

type java.lang.Package {
}

type java.lang.IllegalMonitorStateException {
}

type java.lang.WeakPairMap {
}

type java.lang.UnsupportedClassVersionError {
}

type java.lang.InstantiationError {
}

type java.lang.IndexOutOfBoundsException {
}

type java.lang.IllegalThreadStateException {
}

type java.lang.StackOverflowError {
}

type java.lang.ClassCastException {
}

type java.lang.IllegalAccessException {
}

type java.lang.IllegalAccessError {
}

type java.lang.NoSuchFieldError {
}

type java.lang.CharSequence {
}

type java.lang.ClassFormatError {
}

type java.lang.VirtualMachineError {
}

type java.lang.Double {
    var POSITIVE_INFINITY: double;
    var NEGATIVE_INFINITY: double;
    var NaN: double;
    var MAX_VALUE: double;
    var MIN_NORMAL: double;
    var MIN_VALUE: double;
    var MAX_EXPONENT: int;
    var MIN_EXPONENT: int;
    var SIZE: int;
    var BYTES: int;
    var TYPE: java.lang.Class;
}

type java.lang.ProcessHandleImpl {
}

type java.lang.Object {
}

type java.lang.Record {
}

type java.lang.StringLatin1 {
}

type java.lang.TypeNotPresentException {
}

type java.lang.AssertionError {
}

type java.lang.UnsatisfiedLinkError {
}

type java.lang.Module {
}

type java.lang.CharacterData0E {
}

type java.lang.Runnable {
}

type java.lang.Boolean {
    var TRUE: java.lang.Boolean;
    var FALSE: java.lang.Boolean;
    var TYPE: java.lang.Class;
}

type java.lang.ArrayStoreException {
}

type java.lang.CharacterName {
}

type java.lang.ProcessImpl {
}

type java.lang.OutOfMemoryError {
}

type java.lang.IllegalCallerException {
}

type java.lang.Float {
    var POSITIVE_INFINITY: float;
    var NEGATIVE_INFINITY: float;
    var NaN: float;
    var MAX_VALUE: float;
    var MIN_NORMAL: float;
    var MIN_VALUE: float;
    var MAX_EXPONENT: int;
    var MIN_EXPONENT: int;
    var SIZE: int;
    var BYTES: int;
    var TYPE: java.lang.Class;
}

type java.lang.Iterable {
}

type java.lang.ArithmeticException {
}

type java.lang.Enum {
}

type java.lang.PublicMethods {
}

type java.lang.Short {
    var MIN_VALUE: short;
    var MAX_VALUE: short;
    var TYPE: java.lang.Class;
    var SIZE: int;
    var BYTES: int;
}

type java.lang.CompoundEnumeration {
}

type java.lang.IncompatibleClassChangeError {
}

type java.nio.DirectLongBufferRU {
}

type java.nio.ByteBufferAsLongBufferB {
}

type java.nio.Buffer {
}

type java.nio.DirectFloatBufferRU {
}

type java.nio.ByteBufferAsFloatBufferB {
}

type java.nio.BufferOverflowException {
}

type java.nio.DirectCharBufferRU {
}

type java.nio.HeapByteBufferR {
}

type java.nio.DirectDoubleBufferRU {
}

type java.nio.ByteBufferAsCharBufferL {
}

type java.nio.ByteBufferAsShortBufferB {
}

type java.nio.ByteBufferAsShortBufferRB {
}

type java.nio.DirectLongBufferRS {
}

type java.nio.ByteBufferAsIntBufferRL {
}

type java.nio.ByteBufferAsIntBufferB {
}

type java.nio.DoubleBuffer {
}

type java.nio.HeapDoubleBuffer {
}

type java.nio.ByteBufferAsCharBufferRL {
}

type java.nio.DirectFloatBufferRS {
}

type java.nio.DirectCharBufferRS {
}

type java.nio.file.DirectoryStream {
}

type java.nio.file.ProviderMismatchException {
}

type java.nio.file.AtomicMoveNotSupportedException {
}

type java.nio.file.FileChannelLinesSpliterator {
    var ORDERED: int;
    var DISTINCT: int;
    var SORTED: int;
    var SIZED: int;
    var NONNULL: int;
    var IMMUTABLE: int;
    var CONCURRENT: int;
    var SUBSIZED: int;
}

enum java.nio.file.AccessMode {
    READ = 0;
    WRITE = 1;
    EXECUTE = 2;
}

type java.nio.file.NotLinkException {
}

type java.nio.file.FileAlreadyExistsException {
}

type java.nio.file.LinkPermission {
}

type java.nio.file.attribute.AttributeView {
}

type java.nio.file.attribute.BasicFileAttributeView {
}

type java.nio.file.attribute.AclFileAttributeView {
}

enum java.nio.file.attribute.AclEntryFlag {
    FILE_INHERIT = 0;
    DIRECTORY_INHERIT = 1;
    NO_PROPAGATE_INHERIT = 2;
    INHERIT_ONLY = 3;
}

enum java.nio.file.attribute.AclEntryPermission {
    READ_DATA = 0;
    WRITE_DATA = 1;
    APPEND_DATA = 2;
    READ_NAMED_ATTRS = 3;
    WRITE_NAMED_ATTRS = 4;
    EXECUTE = 5;
    DELETE_CHILD = 6;
    READ_ATTRIBUTES = 7;
    WRITE_ATTRIBUTES = 8;
    DELETE = 9;
    READ_ACL = 10;
    WRITE_ACL = 11;
    WRITE_OWNER = 12;
    SYNCHRONIZE = 13;
}

type java.nio.file.attribute.UserPrincipalLookupService {
}

type java.nio.file.attribute.FileTime {
}

type java.nio.file.attribute.PosixFilePermissions {
}

type java.nio.file.attribute.AclEntry {
}

type java.nio.file.attribute.PosixFileAttributes {
}

enum java.nio.file.attribute.AclEntryType {
    ALLOW = 0;
    DENY = 1;
    AUDIT = 2;
    ALARM = 3;
}

type java.nio.file.attribute.BasicFileAttributes {
}

type java.nio.file.attribute.UserDefinedFileAttributeView {
}

type java.nio.file.attribute.GroupPrincipal {
}

type java.nio.file.attribute.UserPrincipalNotFoundException {
}

type java.nio.file.attribute.UserPrincipal {
}

enum java.nio.file.attribute.PosixFilePermission {
    OWNER_READ = 0;
    OWNER_WRITE = 1;
    OWNER_EXECUTE = 2;
    GROUP_READ = 3;
    GROUP_WRITE = 4;
    GROUP_EXECUTE = 5;
    OTHERS_READ = 6;
    OTHERS_WRITE = 7;
    OTHERS_EXECUTE = 8;
}

type java.nio.file.attribute.FileStoreAttributeView {
}

type java.nio.file.attribute.FileAttribute {
}

type java.nio.file.attribute.PosixFileAttributeView {
}

type java.nio.file.attribute.FileAttributeView {
}

type java.nio.file.attribute.FileOwnerAttributeView {
}

type java.nio.file.attribute.DosFileAttributes {
}

type java.nio.file.attribute.DosFileAttributeView {
}

type java.nio.file.FileSystemNotFoundException {
}

type java.nio.file.SecureDirectoryStream {
}

type java.nio.file.OpenOption {
}

type java.nio.file.WatchService {
}

type java.nio.file.FileVisitor {
}

enum java.nio.file.StandardOpenOption {
    READ = 0;
    WRITE = 1;
    APPEND = 2;
    TRUNCATE_EXISTING = 3;
    CREATE = 4;
    CREATE_NEW = 5;
    DELETE_ON_CLOSE = 6;
    SPARSE = 7;
    SYNC = 8;
    DSYNC = 9;
}

type java.nio.file.Paths {
}

type java.nio.file.PathMatcher {
}

type java.nio.file.WatchEvent {
}

type java.nio.file.WatchKey {
}

type java.nio.file.AccessDeniedException {
}

type java.nio.file.ProviderNotFoundException {
}

type java.nio.file.Watchable {
}

type java.nio.file.FileSystem {
}

type java.nio.file.Files {
}

type java.nio.file.ClosedDirectoryStreamException {
}

type java.nio.file.StandardWatchEventKinds {
}

type java.nio.file.FileSystemAlreadyExistsException {
}

type java.nio.file.spi.FileTypeDetector {
}

type java.nio.file.spi.FileSystemProvider {
}

type java.nio.file.FileTreeIterator {
}

type java.nio.file.FileSystemException {
}

type java.nio.file.SimpleFileVisitor {
}

type java.nio.file.Path {
}

type java.nio.file.ClosedFileSystemException {
}

type java.nio.file.TempFileHelper {
}

type java.nio.file.FileSystems {
}

type java.nio.file.CopyMoveHelper {
}

enum java.nio.file.LinkOption {
    NOFOLLOW_LINKS = 0;
}

enum java.nio.file.StandardCopyOption {
    REPLACE_EXISTING = 0;
    COPY_ATTRIBUTES = 1;
    ATOMIC_MOVE = 2;
}

type java.nio.file.FileStore {
}

enum java.nio.file.FileVisitResult {
    CONTINUE = 0;
    TERMINATE = 1;
    SKIP_SUBTREE = 2;
    SKIP_SIBLINGS = 3;
}

type java.nio.file.NoSuchFileException {
}

type java.nio.file.InvalidPathException {
}

type java.nio.file.CopyOption {
}

type java.nio.file.FileSystemLoopException {
}

type java.nio.file.DirectoryNotEmptyException {
}

type java.nio.file.ReadOnlyFileSystemException {
}

type java.nio.file.NotDirectoryException {
}

enum java.nio.file.FileVisitOption {
    FOLLOW_LINKS = 0;
}

type java.nio.file.ClosedWatchServiceException {
}

type java.nio.file.DirectoryIteratorException {
}

type java.nio.file.FileTreeWalker {
}

type java.nio.ByteOrder {
    var BIG_ENDIAN: java.nio.ByteOrder;
    var LITTLE_ENDIAN: java.nio.ByteOrder;
}

type java.nio.ByteBufferAsLongBufferRL {
}

type java.nio.DirectDoubleBufferRS {
}

type java.nio.BufferMismatch {
}

type java.nio.ByteBufferAsFloatBufferRB {
}

type java.nio.HeapFloatBufferR {
}

type java.nio.ByteBufferAsDoubleBufferRB {
}

type java.nio.ByteBuffer {
}

type java.nio.DirectLongBufferU {
}

type java.nio.HeapIntBufferR {
}

type java.nio.DirectShortBufferRS {
}

type java.nio.HeapShortBufferR {
}

type java.nio.ByteBufferAsDoubleBufferL {
}

type java.nio.HeapLongBuffer {
}

type java.nio.MappedMemoryUtils {
}

type java.nio.HeapByteBuffer {
}

type java.nio.CharBufferSpliterator {
    var ORDERED: int;
    var DISTINCT: int;
    var SORTED: int;
    var SIZED: int;
    var NONNULL: int;
    var IMMUTABLE: int;
    var CONCURRENT: int;
    var SUBSIZED: int;
}

type java.nio.DirectShortBufferRU {
}

type java.nio.DirectLongBufferS {
}

type java.nio.LongBuffer {
}

type java.nio.HeapCharBufferR {
}

type java.nio.MappedByteBuffer {
}

type java.nio.IntBuffer {
}

type java.nio.HeapCharBuffer {
}

type java.nio.DirectIntBufferS {
}

type java.nio.HeapLongBufferR {
}

type java.nio.DirectIntBufferRU {
}

type java.nio.DirectCharBufferS {
}

type java.nio.BufferUnderflowException {
}

type java.nio.DirectIntBufferU {
}

type java.nio.ByteBufferAsFloatBufferRL {
}

type java.nio.DirectByteBufferR {
}

type java.nio.ByteBufferAsDoubleBufferRL {
}

type java.nio.DirectIntBufferRS {
}

type java.nio.HeapFloatBuffer {
}

type java.nio.CharBuffer {
}

type java.nio.DirectCharBufferU {
}

type java.nio.StringCharBuffer {
}

type java.nio.ByteBufferAsDoubleBufferB {
}

type java.nio.HeapShortBuffer {
}

type java.nio.InvalidMarkException {
}

type java.nio.DirectShortBufferU {
}

type java.nio.ByteBufferAsShortBufferRL {
}

type java.nio.ByteBufferAsIntBufferRB {
}

type java.nio.HeapDoubleBufferR {
}

type java.nio.ByteBufferAsIntBufferL {
}

type java.nio.ByteBufferAsCharBufferRB {
}

type java.nio.ReadOnlyBufferException {
}

type java.nio.DirectDoubleBufferS {
}

type java.nio.DirectFloatBufferU {
}

type java.nio.ByteBufferAsLongBufferRB {
}

type java.nio.DirectShortBufferS {
}

type java.nio.ByteBufferAsLongBufferL {
}

type java.nio.ShortBuffer {
}

type java.nio.ByteBufferAsFloatBufferL {
}

type java.nio.charset.CoderMalfunctionError {
}

type java.nio.charset.CoderResult {
    var UNDERFLOW: java.nio.charset.CoderResult;
    var OVERFLOW: java.nio.charset.CoderResult;
}

type java.nio.charset.CharsetDecoder {
}

type java.nio.charset.UnsupportedCharsetException {
}

type java.nio.charset.IllegalCharsetNameException {
}

type java.nio.charset.CharacterCodingException {
}

type java.nio.charset.MalformedInputException {
}

type java.nio.charset.CharsetEncoder {
}

type java.nio.charset.CodingErrorAction {
    var IGNORE: java.nio.charset.CodingErrorAction;
    var REPLACE: java.nio.charset.CodingErrorAction;
    var REPORT: java.nio.charset.CodingErrorAction;
}

type java.nio.charset.spi.CharsetProvider {
}

type java.nio.charset.Charset {
}

type java.nio.charset.UnmappableCharacterException {
}

type java.nio.charset.StandardCharsets {
    var US_ASCII: java.nio.charset.Charset;
    var ISO_8859_1: java.nio.charset.Charset;
    var UTF_8: java.nio.charset.Charset;
    var UTF_16BE: java.nio.charset.Charset;
    var UTF_16LE: java.nio.charset.Charset;
    var UTF_16: java.nio.charset.Charset;
}

type java.nio.DirectDoubleBufferU {
}

type java.nio.DirectFloatBufferS {
}

type java.nio.Bits {
}

type java.nio.HeapIntBuffer {
}

type java.nio.DirectByteBuffer {
}

type java.nio.channels.WritePendingException {
}

type java.nio.channels.NetworkChannel {
}

type java.nio.channels.SeekableByteChannel {
}

type java.nio.channels.FileChannel {
}

type java.nio.channels.AsynchronousByteChannel {
}

type java.nio.channels.MembershipKey {
}

type java.nio.channels.AsynchronousServerSocketChannel {
}

type java.nio.channels.InterruptedByTimeoutException {
}

type java.nio.channels.DatagramChannel {
}

type java.nio.channels.ClosedByInterruptException {
}

type java.nio.channels.AlreadyConnectedException {
}

type java.nio.channels.Channels {
}

type java.nio.channels.AlreadyBoundException {
}

type java.nio.channels.AsynchronousSocketChannel {
}

type java.nio.channels.IllegalSelectorException {
}

type java.nio.channels.CompletionHandler {
}

type java.nio.channels.UnsupportedAddressTypeException {
}

type java.nio.channels.FileLock {
}

type java.nio.channels.ClosedSelectorException {
}

type java.nio.channels.CancelledKeyException {
}

type java.nio.channels.Channel {
}

type java.nio.channels.UnresolvedAddressException {
}

type java.nio.channels.Selector {
}

type java.nio.channels.MulticastChannel {
}

type java.nio.channels.SelectionKey {
    var OP_READ: int;
    var OP_WRITE: int;
    var OP_CONNECT: int;
    var OP_ACCEPT: int;
}

type java.nio.channels.SelectableChannel {
}

type java.nio.channels.ByteChannel {
}

type java.nio.channels.AsynchronousFileChannel {
}

type java.nio.channels.ServerSocketChannel {
}

type java.nio.channels.Pipe {
}

type java.nio.channels.ReadPendingException {
}

type java.nio.channels.ConnectionPendingException {
}

type java.nio.channels.InterruptibleChannel {
}

type java.nio.channels.WritableByteChannel {
}

type java.nio.channels.NotYetConnectedException {
}

type java.nio.channels.IllegalBlockingModeException {
}

type java.nio.channels.ShutdownChannelGroupException {
}

type java.nio.channels.spi.SelectorProvider {
}

type java.nio.channels.spi.AbstractInterruptibleChannel {
}

type java.nio.channels.spi.AsynchronousChannelProvider {
}

type java.nio.channels.spi.AbstractSelector {
}

type java.nio.channels.spi.AbstractSelectionKey {
    var OP_READ: int;
    var OP_WRITE: int;
    var OP_CONNECT: int;
    var OP_ACCEPT: int;
}

type java.nio.channels.spi.AbstractSelectableChannel {
}

type java.nio.channels.FileLockInterruptionException {
}

type java.nio.channels.IllegalChannelGroupException {
}

type java.nio.channels.NoConnectionPendingException {
}

type java.nio.channels.SocketChannel {
}

type java.nio.channels.AsynchronousChannelGroup {
}

type java.nio.channels.AcceptPendingException {
}

type java.nio.channels.NonWritableChannelException {
}

type java.nio.channels.AsynchronousCloseException {
}

type java.nio.channels.NonReadableChannelException {
}

type java.nio.channels.ClosedChannelException {
}

type java.nio.channels.ScatteringByteChannel {
}

type java.nio.channels.GatheringByteChannel {
}

type java.nio.channels.OverlappingFileLockException {
}

type java.nio.channels.AsynchronousChannel {
}

type java.nio.channels.NotYetBoundException {
}

type java.nio.channels.ReadableByteChannel {
}

type java.nio.ByteBufferAsShortBufferL {
}

type java.nio.FloatBuffer {
}

type java.nio.ByteBufferAsCharBufferB {
}

type java.text.FieldPosition {
}

type java.text.SimpleDateFormat {
    var ERA_FIELD: int;
    var YEAR_FIELD: int;
    var MONTH_FIELD: int;
    var DATE_FIELD: int;
    var HOUR_OF_DAY1_FIELD: int;
    var HOUR_OF_DAY0_FIELD: int;
    var MINUTE_FIELD: int;
    var SECOND_FIELD: int;
    var MILLISECOND_FIELD: int;
    var DAY_OF_WEEK_FIELD: int;
    var DAY_OF_YEAR_FIELD: int;
    var DAY_OF_WEEK_IN_MONTH_FIELD: int;
    var WEEK_OF_YEAR_FIELD: int;
    var WEEK_OF_MONTH_FIELD: int;
    var AM_PM_FIELD: int;
    var HOUR1_FIELD: int;
    var HOUR0_FIELD: int;
    var TIMEZONE_FIELD: int;
    var FULL: int;
    var LONG: int;
    var MEDIUM: int;
    var SHORT: int;
    var DEFAULT: int;
}

type java.text.Format {
}

type java.text.PatternEntry {
}

type java.text.CollationKey {
}

type java.text.CompactNumberFormat {
    var INTEGER_FIELD: int;
    var FRACTION_FIELD: int;
}

type java.text.DateFormat {
    var ERA_FIELD: int;
    var YEAR_FIELD: int;
    var MONTH_FIELD: int;
    var DATE_FIELD: int;
    var HOUR_OF_DAY1_FIELD: int;
    var HOUR_OF_DAY0_FIELD: int;
    var MINUTE_FIELD: int;
    var SECOND_FIELD: int;
    var MILLISECOND_FIELD: int;
    var DAY_OF_WEEK_FIELD: int;
    var DAY_OF_YEAR_FIELD: int;
    var DAY_OF_WEEK_IN_MONTH_FIELD: int;
    var WEEK_OF_YEAR_FIELD: int;
    var WEEK_OF_MONTH_FIELD: int;
    var AM_PM_FIELD: int;
    var HOUR1_FIELD: int;
    var HOUR0_FIELD: int;
    var TIMEZONE_FIELD: int;
    var FULL: int;
    var LONG: int;
    var MEDIUM: int;
    var SHORT: int;
    var DEFAULT: int;
}

type java.text.RBCollationTables {
}

type java.text.MergeCollation {
}

type java.text.ChoiceFormat {
    var INTEGER_FIELD: int;
    var FRACTION_FIELD: int;
}

type java.text.DecimalFormat {
    var INTEGER_FIELD: int;
    var FRACTION_FIELD: int;
}

type java.text.StringCharacterIterator {
    var DONE: char;
}

type java.text.AttributedCharacterIterator {
    var DONE: char;
}

type java.text.DateFormatSymbols {
}

type java.text.CharacterIteratorFieldDelegate {
}

type java.text.CollationElementIterator {
    var NULLORDER: int;
}

type java.text.MessageFormat {
}

type java.text.RuleBasedCollationKey {
}

type java.text.CalendarBuilder {
    var WEEK_YEAR: int;
    var ISO_DAY_OF_WEEK: int;
}

type java.text.EntryPair {
    var entryName: java.lang.String;
    var value: int;
    var fwd: boolean;
}

type java.text.ParsePosition {
}

type java.text.spi.CollatorProvider {
}

type java.text.spi.DateFormatSymbolsProvider {
}

type java.text.spi.DecimalFormatSymbolsProvider {
}

type java.text.spi.BreakIteratorProvider {
}

type java.text.spi.NumberFormatProvider {
}

type java.text.spi.DateFormatProvider {
}

type java.text.AttributeEntry {
}

type java.text.DontCareFieldPosition {
}

type java.text.RuleBasedCollator {
    var PRIMARY: int;
    var SECONDARY: int;
    var TERTIARY: int;
    var IDENTICAL: int;
    var NO_DECOMPOSITION: int;
    var CANONICAL_DECOMPOSITION: int;
    var FULL_DECOMPOSITION: int;
}

type java.text.AttributedString {
}

type java.text.Collator {
    var PRIMARY: int;
    var SECONDARY: int;
    var TERTIARY: int;
    var IDENTICAL: int;
    var NO_DECOMPOSITION: int;
    var CANONICAL_DECOMPOSITION: int;
    var FULL_DECOMPOSITION: int;
}

type java.text.CharacterIterator {
    var DONE: char;
}

type java.text.Bidi {
    var DIRECTION_LEFT_TO_RIGHT: int;
    var DIRECTION_RIGHT_TO_LEFT: int;
    var DIRECTION_DEFAULT_LEFT_TO_RIGHT: int;
    var DIRECTION_DEFAULT_RIGHT_TO_LEFT: int;
}

type java.text.NumberFormat {
    var INTEGER_FIELD: int;
    var FRACTION_FIELD: int;
}

type java.text.DigitList {
    var MAX_COUNT: int;
    var decimalAt: int;
    var count: int;
    var digits: array<char>;
}

type java.text.Normalizer {
}

type java.text.BreakIterator {
    var DONE: int;
}

type java.text.ParseException {
}

type java.text.Annotation {
}

type java.text.RBTableBuilder {
}

type java.text.DecimalFormatSymbols {
}

type javax.crypto.CryptoAllPermissionCollection {
}

type javax.crypto.Cipher {
    var ENCRYPT_MODE: int;
    var DECRYPT_MODE: int;
    var WRAP_MODE: int;
    var UNWRAP_MODE: int;
    var PUBLIC_KEY: int;
    var PRIVATE_KEY: int;
    var SECRET_KEY: int;
}

type javax.crypto.CryptoPermissions {
}

type javax.crypto.CryptoAllPermission {
}

type javax.crypto.Mac {
}

type javax.crypto.CryptoPermission {
}

type javax.crypto.SecretKeyFactorySpi {
}

type javax.crypto.CipherInputStream {
}

type javax.crypto.KeyAgreement {
}

type javax.crypto.SecretKeyFactory {
}

type javax.crypto.extObjectInputStream {
    var STREAM_MAGIC: short;
    var STREAM_VERSION: short;
    var TC_BASE: byte;
    var TC_NULL: byte;
    var TC_REFERENCE: byte;
    var TC_CLASSDESC: byte;
    var TC_OBJECT: byte;
    var TC_STRING: byte;
    var TC_ARRAY: byte;
    var TC_CLASS: byte;
    var TC_BLOCKDATA: byte;
    var TC_ENDBLOCKDATA: byte;
    var TC_RESET: byte;
    var TC_BLOCKDATALONG: byte;
    var TC_EXCEPTION: byte;
    var TC_LONGSTRING: byte;
    var TC_PROXYCLASSDESC: byte;
    var TC_ENUM: byte;
    var TC_MAX: byte;
    var baseWireHandle: int;
    var SC_WRITE_METHOD: byte;
    var SC_BLOCK_DATA: byte;
    var SC_SERIALIZABLE: byte;
    var SC_EXTERNALIZABLE: byte;
    var SC_ENUM: byte;
    var SUBSTITUTION_PERMISSION: java.io.SerializablePermission;
    var SUBCLASS_IMPLEMENTATION_PERMISSION: java.io.SerializablePermission;
    var SERIAL_FILTER_PERMISSION: java.io.SerializablePermission;
    var PROTOCOL_VERSION_1: int;
    var PROTOCOL_VERSION_2: int;
}

type javax.crypto.CipherSpi {
}

type javax.crypto.MacSpi {
}

type javax.crypto.CryptoPermissionCollection {
}

type javax.crypto.SealedObject {
}

type javax.crypto.NullCipherSpi {
}

type javax.crypto.spec.DHPublicKeySpec {
}

type javax.crypto.spec.RC2ParameterSpec {
}

type javax.crypto.spec.PBEKeySpec {
}

type javax.crypto.spec.GCMParameterSpec {
}

type javax.crypto.spec.DESKeySpec {
    var DES_KEY_LEN: int;
}

type javax.crypto.spec.IvParameterSpec {
}

type javax.crypto.spec.DESedeKeySpec {
    var DES_EDE_KEY_LEN: int;
}

type javax.crypto.spec.DHParameterSpec {
}

type javax.crypto.spec.ChaCha20ParameterSpec {
}

type javax.crypto.spec.SecretKeySpec {
    var serialVersionUID: long;
}

type javax.crypto.spec.DHPrivateKeySpec {
}

type javax.crypto.spec.RC5ParameterSpec {
}

type javax.crypto.spec.PBEParameterSpec {
}

type javax.crypto.spec.PSource {
}

type javax.crypto.spec.OAEPParameterSpec {
    var DEFAULT: javax.crypto.spec.OAEPParameterSpec;
}

type javax.crypto.spec.DHGenParameterSpec {
}

type javax.crypto.IllegalBlockSizeException {
}

type javax.crypto.PermissionsEnumerator {
}

type javax.crypto.KeyGenerator {
}

type javax.crypto.EncryptedPrivateKeyInfo {
}

type javax.crypto.BadPaddingException {
}

type javax.crypto.JceSecurityManager {
}

type javax.crypto.ExemptionMechanismException {
}

type javax.crypto.ExemptionMechanism {
}

type javax.crypto.KeyGeneratorSpi {
}

type javax.crypto.CryptoPolicyParser {
}

type javax.crypto.ShortBufferException {
}

type javax.crypto.NullCipher {
    var ENCRYPT_MODE: int;
    var DECRYPT_MODE: int;
    var WRAP_MODE: int;
    var UNWRAP_MODE: int;
    var PUBLIC_KEY: int;
    var PRIVATE_KEY: int;
    var SECRET_KEY: int;
}

type javax.crypto.NoSuchPaddingException {
}

type javax.crypto.KeyAgreementSpi {
}

type javax.crypto.ExemptionMechanismSpi {
}

type javax.crypto.JceSecurity {
}

type javax.crypto.AEADBadTagException {
}

type javax.crypto.SecretKey {
    var serialVersionUID: long;
}

type javax.crypto.ProviderVerifier {
}

type javax.crypto.interfaces.DHPrivateKey {
    var serialVersionUID: long;
}

type javax.crypto.interfaces.DHPublicKey {
    var serialVersionUID: long;
}

type javax.crypto.interfaces.DHKey {
}

type javax.crypto.interfaces.PBEKey {
    var serialVersionUID: long;
}

type javax.crypto.CipherOutputStream {
}

type javax.net.SocketFactory {
}

type javax.net.ssl.HandshakeCompletedListener {
}

type javax.net.ssl.SSLEngineResult {
}

type javax.net.ssl.DefaultSSLServerSocketFactory {
}

type javax.net.ssl.TrustManagerFactorySpi {
}

type javax.net.ssl.SSLContextSpi {
}

type javax.net.ssl.HttpsURLConnection {
    var HTTP_OK: int;
    var HTTP_CREATED: int;
    var HTTP_ACCEPTED: int;
    var HTTP_NOT_AUTHORITATIVE: int;
    var HTTP_NO_CONTENT: int;
    var HTTP_RESET: int;
    var HTTP_PARTIAL: int;
    var HTTP_MULT_CHOICE: int;
    var HTTP_MOVED_PERM: int;
    var HTTP_MOVED_TEMP: int;
    var HTTP_SEE_OTHER: int;
    var HTTP_NOT_MODIFIED: int;
    var HTTP_USE_PROXY: int;
    var HTTP_BAD_REQUEST: int;
    var HTTP_UNAUTHORIZED: int;
    var HTTP_PAYMENT_REQUIRED: int;
    var HTTP_FORBIDDEN: int;
    var HTTP_NOT_FOUND: int;
    var HTTP_BAD_METHOD: int;
    var HTTP_NOT_ACCEPTABLE: int;
    var HTTP_PROXY_AUTH: int;
    var HTTP_CLIENT_TIMEOUT: int;
    var HTTP_CONFLICT: int;
    var HTTP_GONE: int;
    var HTTP_LENGTH_REQUIRED: int;
    var HTTP_PRECON_FAILED: int;
    var HTTP_ENTITY_TOO_LARGE: int;
    var HTTP_REQ_TOO_LONG: int;
    var HTTP_UNSUPPORTED_TYPE: int;
    var HTTP_SERVER_ERROR: int;
    var HTTP_INTERNAL_ERROR: int;
    var HTTP_NOT_IMPLEMENTED: int;
    var HTTP_BAD_GATEWAY: int;
    var HTTP_UNAVAILABLE: int;
    var HTTP_GATEWAY_TIMEOUT: int;
    var HTTP_VERSION: int;
}

type javax.net.ssl.SSLEngine {
}

type javax.net.ssl.SSLKeyException {
}

type javax.net.ssl.CertPathTrustManagerParameters {
}

type javax.net.ssl.SSLPeerUnverifiedException {
}

type javax.net.ssl.SSLSession {
}

type javax.net.ssl.SSLSessionContext {
}

type javax.net.ssl.SSLException {
}

type javax.net.ssl.SSLSocketFactory {
}

type javax.net.ssl.StandardConstants {
    var SNI_HOST_NAME: int;
}

type javax.net.ssl.X509KeyManager {
}

type javax.net.ssl.KeyManager {
}

type javax.net.ssl.SNIServerName {
}

type javax.net.ssl.DefaultSSLSocketFactory {
}

type javax.net.ssl.SSLServerSocketFactory {
}

type javax.net.ssl.HostnameVerifier {
}

type javax.net.ssl.KeyManagerFactory {
}

type javax.net.ssl.SSLProtocolException {
}

type javax.net.ssl.X509TrustManager {
}

type javax.net.ssl.SNIMatcher {
}

type javax.net.ssl.TrustManagerFactory {
}

type javax.net.ssl.SSLSessionBindingEvent {
}

type javax.net.ssl.SSLPermission {
}

type javax.net.ssl.KeyManagerFactorySpi {
}

type javax.net.ssl.X509ExtendedTrustManager {
}

type javax.net.ssl.SSLHandshakeException {
}

type javax.net.ssl.KeyStoreBuilderParameters {
}

type javax.net.ssl.SNIHostName {
}

type javax.net.ssl.SSLSessionBindingListener {
}

type javax.net.ssl.HandshakeCompletedEvent {
}

type javax.net.ssl.SSLParameters {
}

type javax.net.ssl.ManagerFactoryParameters {
}

type javax.net.ssl.SSLSocket {
}

type javax.net.ssl.ExtendedSSLSession {
}

type javax.net.ssl.SSLServerSocket {
}

type javax.net.ssl.TrustManager {
}

type javax.net.ssl.SSLContext {
}

type javax.net.ssl.X509ExtendedKeyManager {
}

type javax.net.DefaultServerSocketFactory {
}

type javax.net.DefaultSocketFactory {
}

type javax.net.ServerSocketFactory {
}

type javax.security.auth.SubjectDomainCombiner {
}

type javax.security.auth.RefreshFailedException {
}

type javax.security.auth.Refreshable {
}

type javax.security.auth.DestroyFailedException {
}

type javax.security.auth.Subject {
}

type javax.security.auth.x500.X500PrivateCredential {
}

type javax.security.auth.x500.X500Principal {
    var RFC1779: java.lang.String;
    var RFC2253: java.lang.String;
    var CANONICAL: java.lang.String;
}

type javax.security.auth.spi.LoginModule {
}

type javax.security.auth.Destroyable {
}

type javax.security.auth.AuthPermission {
}

type javax.security.auth.callback.NameCallback {
}

type javax.security.auth.callback.LanguageCallback {
}

type javax.security.auth.callback.UnsupportedCallbackException {
}

type javax.security.auth.callback.PasswordCallback {
}

type javax.security.auth.callback.ConfirmationCallback {
    var UNSPECIFIED_OPTION: int;
    var YES_NO_OPTION: int;
    var YES_NO_CANCEL_OPTION: int;
    var OK_CANCEL_OPTION: int;
    var YES: int;
    var NO: int;
    var CANCEL: int;
    var OK: int;
    var INFORMATION: int;
    var WARNING: int;
    var ERROR: int;
}

type javax.security.auth.callback.TextOutputCallback {
    var INFORMATION: int;
    var WARNING: int;
    var ERROR: int;
}

type javax.security.auth.callback.ChoiceCallback {
}

type javax.security.auth.callback.TextInputCallback {
}

type javax.security.auth.callback.CallbackHandler {
}

type javax.security.auth.callback.Callback {
}

type javax.security.auth.PrivateCredentialPermission {
}

type javax.security.auth.login.LoginContext {
}

type javax.security.auth.login.LoginException {
}

type javax.security.auth.login.AccountExpiredException {
}

type javax.security.auth.login.AccountLockedException {
}

type javax.security.auth.login.AccountException {
}

type javax.security.auth.login.FailedLoginException {
}

type javax.security.auth.login.CredentialException {
}

type javax.security.auth.login.CredentialExpiredException {
}

type javax.security.auth.login.CredentialNotFoundException {
}

type javax.security.auth.login.AppConfigurationEntry {
}

type javax.security.auth.login.ConfigurationSpi {
}

type javax.security.auth.login.AccountNotFoundException {
}

type javax.security.auth.login.Configuration {
}

type javax.security.cert.Certificate {
}

type javax.security.cert.CertificateExpiredException {
}

type javax.security.cert.CertificateParsingException {
}

type javax.security.cert.X509Certificate {
}

type javax.security.cert.CertificateNotYetValidException {
}

type javax.security.cert.CertificateEncodingException {
}

type javax.security.cert.CertificateException {
}

type com.sun.crypto.provider.DHPrivateKey {
    var serialVersionUID: long;
}

type com.sun.crypto.provider.ISO10126Padding {
}

type com.sun.crypto.provider.KeyProtector {
}

type com.sun.crypto.provider.RC2Cipher {
}

type com.sun.crypto.provider.SealedObjectForKeyProtector {
}

type com.sun.crypto.provider.GCMParameters {
}

type com.sun.crypto.provider.DESKeyFactory {
}

type com.sun.crypto.provider.PBES2Parameters {
}

type com.sun.crypto.provider.CounterMode {
}

type com.sun.crypto.provider.DESedeKeyFactory {
}

type com.sun.crypto.provider.FeedbackCipher {
}

type com.sun.crypto.provider.HmacMD5 {
}

type com.sun.crypto.provider.GCTR {
}

type com.sun.crypto.provider.TlsMasterSecretGenerator {
}

type com.sun.crypto.provider.DESedeWrapCipher {
}

type com.sun.crypto.provider.RC2Parameters {
}

type com.sun.crypto.provider.GaloisCounterMode {
}

type com.sun.crypto.provider.PCBC {
}

type com.sun.crypto.provider.BlowfishConstants {
    var BLOWFISH_BLOCK_SIZE: int;
    var BLOWFISH_MAX_KEYSIZE: int;
}

type com.sun.crypto.provider.DESKey {
    var serialVersionUID: long;
}

type com.sun.crypto.provider.DESedeCipher {
}

type com.sun.crypto.provider.CipherCore {
}

type com.sun.crypto.provider.OutputFeedback {
}

type com.sun.crypto.provider.PBES1Core {
}

type com.sun.crypto.provider.DESedeKey {
    var serialVersionUID: long;
}

type com.sun.crypto.provider.BlowfishCipher {
}

type com.sun.crypto.provider.DESParameters {
}

type com.sun.crypto.provider.ChaCha20Poly1305Parameters {
}

type com.sun.crypto.provider.ConstructKeys {
}

type com.sun.crypto.provider.TlsPrfGenerator {
}

type com.sun.crypto.provider.PBMAC1Core {
}

type com.sun.crypto.provider.HmacSHA1KeyGenerator {
}

type com.sun.crypto.provider.DESCipher {
}

type com.sun.crypto.provider.DESedeKeyGenerator {
}

type com.sun.crypto.provider.DESedeParameters {
}

type com.sun.crypto.provider.CipherFeedback {
}

type com.sun.crypto.provider.HmacPKCS12PBECore {
}

type com.sun.crypto.provider.AESParameters {
}

type com.sun.crypto.provider.SymmetricCipher {
}

type com.sun.crypto.provider.RSACipher {
}

type com.sun.crypto.provider.HmacMD5KeyGenerator {
}

type com.sun.crypto.provider.PBKDF2HmacSHA1Factory {
}

type com.sun.crypto.provider.DHKeyAgreement {
}

type com.sun.crypto.provider.AESCrypt {
    var AES_BLOCK_SIZE: int;
    var AES_KEYSIZES: array<int>;
}

type com.sun.crypto.provider.DHParameterGenerator {
}

type com.sun.crypto.provider.PBEWithMD5AndDESCipher {
}

type com.sun.crypto.provider.PBKDF2Core {
}

type com.sun.crypto.provider.OAEPParameters {
}

type com.sun.crypto.provider.TlsKeyMaterialGenerator {
}

type com.sun.crypto.provider.AESCipher {
}

type com.sun.crypto.provider.Poly1305 {
}

type com.sun.crypto.provider.EncryptedPrivateKeyInfo {
}

type com.sun.crypto.provider.BlockCipherParamsCore {
}

type com.sun.crypto.provider.DHPublicKey {
    var serialVersionUID: long;
}

type com.sun.crypto.provider.DESCrypt {
    var DES_BLOCK_SIZE: int;
}

type com.sun.crypto.provider.BlowfishCrypt {
    var BLOWFISH_BLOCK_SIZE: int;
    var BLOWFISH_MAX_KEYSIZE: int;
}

type com.sun.crypto.provider.PBES2Core {
}

type com.sun.crypto.provider.DESKeyGenerator {
}

type com.sun.crypto.provider.AESConstants {
    var AES_BLOCK_SIZE: int;
    var AES_KEYSIZES: array<int>;
}

type com.sun.crypto.provider.HmacCore {
}

type com.sun.crypto.provider.PBKDF2KeyImpl {
    var serialVersionUID: long;
}

type com.sun.crypto.provider.DHParameters {
}

type com.sun.crypto.provider.TlsRsaPremasterSecretGenerator {
}

type com.sun.crypto.provider.DESedeCrypt {
    var DES_BLOCK_SIZE: int;
}

type com.sun.crypto.provider.SslMacCore {
}

type com.sun.crypto.provider.JceKeyStore {
}

type com.sun.crypto.provider.PBEParameters {
}

type com.sun.crypto.provider.PKCS12PBECipherCore {
}

type com.sun.crypto.provider.SunJCE {
}

type com.sun.crypto.provider.HmacSHA1 {
}

type com.sun.crypto.provider.AESKeyGenerator {
}

type com.sun.crypto.provider.BlowfishParameters {
}

type com.sun.crypto.provider.Padding {
}

type com.sun.crypto.provider.PBEWithMD5AndTripleDESCipher {
}

type com.sun.crypto.provider.CipherBlockChaining {
}

type com.sun.crypto.provider.ElectronicCodeBook {
}

type com.sun.crypto.provider.GHASH {
}

type com.sun.crypto.provider.ARCFOURCipher {
}

type com.sun.crypto.provider.PBEKey {
    var serialVersionUID: long;
}

type com.sun.crypto.provider.CipherTextStealing {
}

type com.sun.crypto.provider.CipherForKeyProtector {
    var ENCRYPT_MODE: int;
    var DECRYPT_MODE: int;
    var WRAP_MODE: int;
    var UNWRAP_MODE: int;
    var PUBLIC_KEY: int;
    var PRIVATE_KEY: int;
    var SECRET_KEY: int;
}

type com.sun.crypto.provider.PrivateKeyInfo {
}

type com.sun.crypto.provider.RC2Crypt {
}

type com.sun.crypto.provider.BlowfishKeyGenerator {
}

type com.sun.crypto.provider.ChaCha20Cipher {
}

type com.sun.crypto.provider.DHKeyFactory {
}

type com.sun.crypto.provider.PKCS5Padding {
}

type com.sun.crypto.provider.DESConstants {
    var DES_BLOCK_SIZE: int;
}

type com.sun.crypto.provider.KeyGeneratorCore {
}

type com.sun.crypto.provider.PBEKeyFactory {
}

type com.sun.crypto.provider.DHKeyPairGenerator {
}

type com.sun.security.ntlm.NTLMException {
    var PACKET_READ_ERROR: int;
    var NO_DOMAIN_INFO: int;
    var USER_UNKNOWN: int;
    var AUTH_FAILED: int;
    var BAD_VERSION: int;
    var PROTOCOL: int;
    var INVALID_INPUT: int;
}

enum com.sun.security.ntlm.Version {
    NTLM = 0;
    NTLM2 = 1;
    NTLMv2 = 2;
}

type com.sun.security.ntlm.Server {
}

type com.sun.security.ntlm.Client {
}

type com.sun.security.ntlm.NTLM {
}

type apple.laf.JRSUIFocus {
    var RING_ONLY: int;
    var RING_ABOVE: int;
    var RING_BELOW: int;
}

type apple.laf.JRSUIUtils {
}

type apple.laf.JRSUIConstants {
    var FOCUS_SIZE: int;
}

type apple.laf.JRSUIStateFactory {
}

type apple.laf.JRSUIControl {
}

type apple.laf.JRSUIState {
}

type sun.swing.ImageIconUIResource {
}

type sun.swing.ImageCache {
}

type sun.swing.CachedPainter {
}

type sun.swing.LightweightContent {
}

type sun.swing.FilePane {
    var ACTION_APPROVE_SELECTION: java.lang.String;
    var ACTION_CANCEL: java.lang.String;
    var ACTION_EDIT_FILE_NAME: java.lang.String;
    var ACTION_REFRESH: java.lang.String;
    var ACTION_CHANGE_TO_PARENT_DIRECTORY: java.lang.String;
    var ACTION_NEW_FOLDER: java.lang.String;
    var ACTION_VIEW_LIST: java.lang.String;
    var ACTION_VIEW_DETAILS: java.lang.String;
    var VIEWTYPE_LIST: int;
    var VIEWTYPE_DETAILS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.swing.JLightweightFrame {
    var DEFAULT_CURSOR: int;
    var CROSSHAIR_CURSOR: int;
    var TEXT_CURSOR: int;
    var WAIT_CURSOR: int;
    var SW_RESIZE_CURSOR: int;
    var SE_RESIZE_CURSOR: int;
    var NW_RESIZE_CURSOR: int;
    var NE_RESIZE_CURSOR: int;
    var N_RESIZE_CURSOR: int;
    var S_RESIZE_CURSOR: int;
    var W_RESIZE_CURSOR: int;
    var E_RESIZE_CURSOR: int;
    var HAND_CURSOR: int;
    var MOVE_CURSOR: int;
    var NORMAL: int;
    var ICONIFIED: int;
    var MAXIMIZED_HORIZ: int;
    var MAXIMIZED_VERT: int;
    var MAXIMIZED_BOTH: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.swing.plaf.GTKKeybindings {
}

type sun.swing.plaf.synth.DefaultSynthStyle {
}

type sun.swing.plaf.synth.Paint9Painter {
    var PAINT_TOP_LEFT: int;
    var PAINT_TOP: int;
    var PAINT_TOP_RIGHT: int;
    var PAINT_LEFT: int;
    var PAINT_CENTER: int;
    var PAINT_RIGHT: int;
    var PAINT_BOTTOM_RIGHT: int;
    var PAINT_BOTTOM: int;
    var PAINT_BOTTOM_LEFT: int;
    var PAINT_ALL: int;
}

type sun.swing.plaf.synth.StyleAssociation {
}

type sun.swing.plaf.synth.SynthFileChooserUIImpl {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type sun.swing.plaf.synth.SynthFileChooserUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type sun.swing.plaf.DesktopProperty {
}

type sun.swing.plaf.WindowsKeybindings {
}

type sun.swing.DefaultLookup {
}

type sun.swing.BakedArrayList {
}

type sun.swing.MenuItemLayoutHelper {
    var MAX_ARROW_WIDTH: sun.swing.StringUIClientPropertyKey;
    var MAX_CHECK_WIDTH: sun.swing.StringUIClientPropertyKey;
    var MAX_ICON_WIDTH: sun.swing.StringUIClientPropertyKey;
    var MAX_TEXT_WIDTH: sun.swing.StringUIClientPropertyKey;
    var MAX_ACC_WIDTH: sun.swing.StringUIClientPropertyKey;
    var MAX_LABEL_WIDTH: sun.swing.StringUIClientPropertyKey;
}

type sun.swing.DefaultLayoutStyle {
}

type sun.swing.AccumulativeRunnable {
}

type sun.swing.PrintColorUIResource {
    var white: java.awt.Color;
    var WHITE: java.awt.Color;
    var lightGray: java.awt.Color;
    var LIGHT_GRAY: java.awt.Color;
    var gray: java.awt.Color;
    var GRAY: java.awt.Color;
    var darkGray: java.awt.Color;
    var DARK_GRAY: java.awt.Color;
    var black: java.awt.Color;
    var BLACK: java.awt.Color;
    var red: java.awt.Color;
    var RED: java.awt.Color;
    var pink: java.awt.Color;
    var PINK: java.awt.Color;
    var orange: java.awt.Color;
    var ORANGE: java.awt.Color;
    var yellow: java.awt.Color;
    var YELLOW: java.awt.Color;
    var green: java.awt.Color;
    var GREEN: java.awt.Color;
    var magenta: java.awt.Color;
    var MAGENTA: java.awt.Color;
    var cyan: java.awt.Color;
    var CYAN: java.awt.Color;
    var blue: java.awt.Color;
    var BLUE: java.awt.Color;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type sun.swing.SwingAccessor {
}

type sun.swing.PrintingStatus {
}

type sun.swing.table.DefaultTableCellHeaderRenderer {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.swing.StringUIClientPropertyKey {
}

type sun.swing.UIAction {
    var DEFAULT: java.lang.String;
    var NAME: java.lang.String;
    var SHORT_DESCRIPTION: java.lang.String;
    var LONG_DESCRIPTION: java.lang.String;
    var SMALL_ICON: java.lang.String;
    var ACTION_COMMAND_KEY: java.lang.String;
    var ACCELERATOR_KEY: java.lang.String;
    var MNEMONIC_KEY: java.lang.String;
    var SELECTED_KEY: java.lang.String;
    var DISPLAYED_MNEMONIC_INDEX_KEY: java.lang.String;
    var LARGE_ICON_KEY: java.lang.String;
}

type sun.swing.SwingUtilities2 {
    var LAF_STATE_KEY: java.lang.Object;
    var MENU_SELECTION_MANAGER_LISTENER_KEY: java.lang.Object;
    var DEFAULT_FRC: java.awt.font.FontRenderContext;
    var IMPLIED_CR: java.lang.String;
    var BASICMENUITEMUI_MAX_TEXT_OFFSET: sun.swing.StringUIClientPropertyKey;
}

type sun.swing.text.TextComponentPrintable {
    var PAGE_EXISTS: int;
    var NO_SUCH_PAGE: int;
}

type sun.swing.text.html.FrameEditorPaneTag {
}

type sun.swing.text.CompoundPrintable {
    var PAGE_EXISTS: int;
    var NO_SUCH_PAGE: int;
}

type sun.swing.text.UndoableEditLockSupport {
}

type sun.swing.text.CountingPrintable {
    var PAGE_EXISTS: int;
    var NO_SUCH_PAGE: int;
}

type sun.swing.icon.SortArrowIcon {
}

type sun.swing.InteropProvider {
}

type sun.swing.WindowsPlacesBar {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.swing.MenuItemCheckIconFactory {
}

type sun.print.RasterPrinterJob {
    var forcePDL: boolean;
    var forceRaster: boolean;
    var shapeTextProp: boolean;
    var debugPrint: boolean;
}

type sun.print.BackgroundLookupListener {
}

type sun.print.SunAlternateMedia {
}

type sun.print.PSPrinterJob {
    var forcePDL: boolean;
    var forceRaster: boolean;
    var shapeTextProp: boolean;
    var debugPrint: boolean;
}

type sun.print.PrintServiceLookupProvider {
}

type sun.print.AttributeUpdater {
}

type sun.print.PrintJobFlavorException {
}

type sun.print.BackgroundServiceLookup {
}

type sun.print.DialogOwnerAccessor {
    var accessor: sun.print.DialogOwnerAccessor;
}

type sun.print.PageableDoc {
}

type sun.print.ProxyGraphics2D {
}

type sun.print.ProxyPrintGraphics {
}

type sun.print.PrintJob2D {
    var PAGE_EXISTS: int;
    var NO_SUCH_PAGE: int;
}

type sun.print.resources.serviceui_zh_HK {
}

type sun.print.resources.serviceui_zh_TW {
}

type sun.print.resources.serviceui {
}

type sun.print.resources.serviceui_fr {
}

type sun.print.resources.serviceui_ja {
}

type sun.print.resources.serviceui_de {
}

type sun.print.resources.serviceui_zh_CN {
}

type sun.print.resources.serviceui_es {
}

type sun.print.resources.serviceui_pt_BR {
}

type sun.print.resources.serviceui_it {
}

type sun.print.resources.serviceui_ko {
}

type sun.print.resources.serviceui_sv {
}

type sun.print.ProxyGraphics {
}

type sun.print.UnixPrintJob {
}

type sun.print.CustomMediaSizeName {
    var ISO_A0: javax.print.attribute.standard.MediaSizeName;
    var ISO_A1: javax.print.attribute.standard.MediaSizeName;
    var ISO_A2: javax.print.attribute.standard.MediaSizeName;
    var ISO_A3: javax.print.attribute.standard.MediaSizeName;
    var ISO_A4: javax.print.attribute.standard.MediaSizeName;
    var ISO_A5: javax.print.attribute.standard.MediaSizeName;
    var ISO_A6: javax.print.attribute.standard.MediaSizeName;
    var ISO_A7: javax.print.attribute.standard.MediaSizeName;
    var ISO_A8: javax.print.attribute.standard.MediaSizeName;
    var ISO_A9: javax.print.attribute.standard.MediaSizeName;
    var ISO_A10: javax.print.attribute.standard.MediaSizeName;
    var ISO_B0: javax.print.attribute.standard.MediaSizeName;
    var ISO_B1: javax.print.attribute.standard.MediaSizeName;
    var ISO_B2: javax.print.attribute.standard.MediaSizeName;
    var ISO_B3: javax.print.attribute.standard.MediaSizeName;
    var ISO_B4: javax.print.attribute.standard.MediaSizeName;
    var ISO_B5: javax.print.attribute.standard.MediaSizeName;
    var ISO_B6: javax.print.attribute.standard.MediaSizeName;
    var ISO_B7: javax.print.attribute.standard.MediaSizeName;
    var ISO_B8: javax.print.attribute.standard.MediaSizeName;
    var ISO_B9: javax.print.attribute.standard.MediaSizeName;
    var ISO_B10: javax.print.attribute.standard.MediaSizeName;
    var JIS_B0: javax.print.attribute.standard.MediaSizeName;
    var JIS_B1: javax.print.attribute.standard.MediaSizeName;
    var JIS_B2: javax.print.attribute.standard.MediaSizeName;
    var JIS_B3: javax.print.attribute.standard.MediaSizeName;
    var JIS_B4: javax.print.attribute.standard.MediaSizeName;
    var JIS_B5: javax.print.attribute.standard.MediaSizeName;
    var JIS_B6: javax.print.attribute.standard.MediaSizeName;
    var JIS_B7: javax.print.attribute.standard.MediaSizeName;
    var JIS_B8: javax.print.attribute.standard.MediaSizeName;
    var JIS_B9: javax.print.attribute.standard.MediaSizeName;
    var JIS_B10: javax.print.attribute.standard.MediaSizeName;
    var ISO_C0: javax.print.attribute.standard.MediaSizeName;
    var ISO_C1: javax.print.attribute.standard.MediaSizeName;
    var ISO_C2: javax.print.attribute.standard.MediaSizeName;
    var ISO_C3: javax.print.attribute.standard.MediaSizeName;
    var ISO_C4: javax.print.attribute.standard.MediaSizeName;
    var ISO_C5: javax.print.attribute.standard.MediaSizeName;
    var ISO_C6: javax.print.attribute.standard.MediaSizeName;
    var NA_LETTER: javax.print.attribute.standard.MediaSizeName;
    var NA_LEGAL: javax.print.attribute.standard.MediaSizeName;
    var EXECUTIVE: javax.print.attribute.standard.MediaSizeName;
    var LEDGER: javax.print.attribute.standard.MediaSizeName;
    var TABLOID: javax.print.attribute.standard.MediaSizeName;
    var INVOICE: javax.print.attribute.standard.MediaSizeName;
    var FOLIO: javax.print.attribute.standard.MediaSizeName;
    var QUARTO: javax.print.attribute.standard.MediaSizeName;
    var JAPANESE_POSTCARD: javax.print.attribute.standard.MediaSizeName;
    var JAPANESE_DOUBLE_POSTCARD: javax.print.attribute.standard.MediaSizeName;
    var A: javax.print.attribute.standard.MediaSizeName;
    var B: javax.print.attribute.standard.MediaSizeName;
    var C: javax.print.attribute.standard.MediaSizeName;
    var D: javax.print.attribute.standard.MediaSizeName;
    var E: javax.print.attribute.standard.MediaSizeName;
    var ISO_DESIGNATED_LONG: javax.print.attribute.standard.MediaSizeName;
    var ITALY_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var MONARCH_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var PERSONAL_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_NUMBER_9_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_NUMBER_10_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_NUMBER_11_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_NUMBER_12_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_NUMBER_14_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_6X9_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_7X9_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_9X11_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_9X12_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_10X13_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_10X14_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_10X15_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_5X7: javax.print.attribute.standard.MediaSizeName;
    var NA_8X10: javax.print.attribute.standard.MediaSizeName;
}

type sun.print.CUPSPrinter {
    var nPageSizes: int;
    var nTrays: int;
}

type sun.print.PlatformPrinterJobProxy {
}

type sun.print.IPPPrintService {
    var debugPrint: boolean;
    var OP_GET_ATTRIBUTES: java.lang.String;
    var OP_CUPS_GET_DEFAULT: java.lang.String;
    var OP_CUPS_GET_PRINTERS: java.lang.String;
}

type sun.print.PrinterGraphicsDevice {
    var TYPE_RASTER_SCREEN: int;
    var TYPE_PRINTER: int;
    var TYPE_IMAGE_BUFFER: int;
}

type sun.print.SunMinMaxPage {
}

type sun.print.AttributeClass {
    var TAG_UNSUPPORTED_VALUE: int;
    var TAG_INT: int;
    var TAG_BOOL: int;
    var TAG_ENUM: int;
    var TAG_OCTET: int;
    var TAG_DATE: int;
    var TAG_RESOLUTION: int;
    var TAG_RANGE_INTEGER: int;
    var TAG_TEXT_LANGUAGE: int;
    var TAG_NAME_LANGUAGE: int;
    var TAG_TEXT_WO_LANGUAGE: int;
    var TAG_NAME_WO_LANGUAGE: int;
    var TAG_KEYWORD: int;
    var TAG_URI: int;
    var TAG_CHARSET: int;
    var TAG_NATURALLANGUAGE: int;
    var TAG_MIME_MEDIATYPE: int;
    var TAG_MEMBER_ATTRNAME: int;
    var ATTRIBUTES_CHARSET: sun.print.AttributeClass;
    var ATTRIBUTES_NATURAL_LANGUAGE: sun.print.AttributeClass;
}

type sun.print.CustomMediaTray {
    var TOP: javax.print.attribute.standard.MediaTray;
    var MIDDLE: javax.print.attribute.standard.MediaTray;
    var BOTTOM: javax.print.attribute.standard.MediaTray;
    var ENVELOPE: javax.print.attribute.standard.MediaTray;
    var MANUAL: javax.print.attribute.standard.MediaTray;
    var LARGE_CAPACITY: javax.print.attribute.standard.MediaTray;
    var MAIN: javax.print.attribute.standard.MediaTray;
    var SIDE: javax.print.attribute.standard.MediaTray;
}

type sun.print.PeekMetrics {
}

type sun.print.PSPathGraphics {
}

type sun.print.PSStreamPrinterFactory {
}

type sun.print.PathGraphics {
}

type sun.print.PeekGraphics {
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.print.PSStreamPrintJob {
}

type sun.print.UnixPrintService {
}

type sun.print.OpenBook {
    var UNKNOWN_NUMBER_OF_PAGES: int;
}

type sun.print.ServiceNotifier {
    var MIN_PRIORITY: int;
    var NORM_PRIORITY: int;
    var MAX_PRIORITY: int;
}

type sun.print.DocumentPropertiesUI {
    var DOCUMENTPROPERTIES_ROLE: int;
    var DOCPROPERTIESCLASSNAME: java.lang.String;
}

type sun.print.PrinterGraphicsConfig {
}

type sun.print.PSStreamPrintService {
}

type sun.print.PrinterJobWrapper {
}

type sun.print.SunPageSelection {
    var ALL: sun.print.SunPageSelection;
    var RANGE: sun.print.SunPageSelection;
    var SELECTION: sun.print.SunPageSelection;
}

type sun.print.ImagePrinter {
    var PAGE_EXISTS: int;
    var NO_SUCH_PAGE: int;
}

type sun.print.SunPrinterJobService {
}

type sun.print.ServiceDialog {
    var WAITING: int;
    var APPROVE: int;
    var CANCEL: int;
    var DO_NOTHING_ON_CLOSE: int;
    var HIDE_ON_CLOSE: int;
    var DISPOSE_ON_CLOSE: int;
    var EXIT_ON_CLOSE: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.print.PrintJobAttributeException {
}

type sun.java2d.DataBufferNIOInt {
    var TYPE_BYTE: int;
    var TYPE_USHORT: int;
    var TYPE_SHORT: int;
    var TYPE_INT: int;
    var TYPE_FLOAT: int;
    var TYPE_DOUBLE: int;
    var TYPE_UNDEFINED: int;
}

type sun.java2d.ReentrantContextProviderTL {
    var REF_HARD: int;
    var REF_SOFT: int;
    var REF_WEAK: int;
}

type sun.java2d.HeadlessGraphicsEnvironment {
}

type sun.java2d.cmm.PCMM {
}

type sun.java2d.cmm.lcms.LcmsServiceProvider {
}

type sun.java2d.cmm.lcms.LCMSTransform {
    var Any: int;
    var In: int;
    var Out: int;
    var Gamut: int;
    var Simulation: int;
}

type sun.java2d.cmm.lcms.LCMSImageLayout {
    var SWAPFIRST: int;
    var DOSWAP: int;
    var PT_RGB_8: int;
    var PT_GRAY_8: int;
    var PT_GRAY_16: int;
    var PT_RGBA_8: int;
    var PT_ARGB_8: int;
    var PT_BGR_8: int;
    var PT_ABGR_8: int;
    var PT_BGRA_8: int;
    var DT_BYTE: int;
    var DT_SHORT: int;
    var DT_INT: int;
    var DT_DOUBLE: int;
}

type sun.java2d.cmm.lcms.LCMS {
}

type sun.java2d.cmm.lcms.LCMSProfile {
}

type sun.java2d.cmm.CMSManager {
}

type sun.java2d.cmm.ProfileDataVerifier {
}

type sun.java2d.cmm.ProfileDeferralInfo {
    var colorSpaceType: int;
    var numComponents: int;
    var profileClass: int;
    var filename: java.lang.String;
}

type sun.java2d.cmm.Profile {
}

type sun.java2d.cmm.ColorTransform {
    var Any: int;
    var In: int;
    var Out: int;
    var Gamut: int;
    var Simulation: int;
}

type sun.java2d.cmm.CMMServiceProvider {
}

type sun.java2d.SurfaceDataProxy {
    var UNCACHED: sun.java2d.SurfaceDataProxy;
}

type sun.java2d.Surface {
}

type sun.java2d.DisposerRecord {
}

type sun.java2d.marlin.Curve {
}

type sun.java2d.marlin.RendererStats {
    var ENABLE_LOGS: boolean;
    var USE_LOGGER: boolean;
    var LOG_CREATE_CONTEXT: boolean;
    var LOG_UNSAFE_MALLOC: boolean;
    var DO_CHECK_UNSAFE: boolean;
    var DO_STATS: boolean;
    var DO_MONITORS: boolean;
    var DO_CHECKS: boolean;
    var DO_AA_RANGE_CHECK: boolean;
    var DO_LOG_WIDEN_ARRAY: boolean;
    var DO_LOG_OVERSIZE: boolean;
    var DO_TRACE: boolean;
    var DO_FLUSH_STATS: boolean;
    var DO_FLUSH_MONITORS: boolean;
    var USE_DUMP_THREAD: boolean;
    var DUMP_INTERVAL: long;
    var DO_CLEAN_DIRTY: boolean;
    var USE_SIMPLIFIER: boolean;
    var USE_PATH_SIMPLIFIER: boolean;
    var DO_CLIP_SUBDIVIDER: boolean;
    var DO_LOG_BOUNDS: boolean;
    var DO_LOG_CLIP: boolean;
    var INITIAL_PIXEL_WIDTH: int;
    var INITIAL_PIXEL_HEIGHT: int;
    var INITIAL_ARRAY: int;
    var INITIAL_AA_ARRAY: int;
    var INITIAL_EDGES_COUNT: int;
    var INITIAL_EDGES_CAPACITY: int;
    var BYTE_0: byte;
    var SUBPIXEL_LG_POSITIONS_X: int;
    var SUBPIXEL_LG_POSITIONS_Y: int;
    var MIN_SUBPIXEL_LG_POSITIONS: int;
    var SUBPIXEL_POSITIONS_X: int;
    var SUBPIXEL_POSITIONS_Y: int;
    var MIN_SUBPIXELS: float;
    var MAX_AA_ALPHA: int;
    var TILE_H_LG: int;
    var TILE_H: int;
    var TILE_W_LG: int;
    var TILE_W: int;
    var BLOCK_SIZE_LG: int;
    var BLOCK_SIZE: int;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
    var OUTCODE_TOP: int;
    var OUTCODE_BOTTOM: int;
    var OUTCODE_LEFT: int;
    var OUTCODE_RIGHT: int;
    var OUTCODE_MASK_T_B: int;
    var OUTCODE_MASK_L_R: int;
    var OUTCODE_MASK_T_B_L_R: int;
}

type sun.java2d.marlin.Dasher {
    var ENABLE_LOGS: boolean;
    var USE_LOGGER: boolean;
    var LOG_CREATE_CONTEXT: boolean;
    var LOG_UNSAFE_MALLOC: boolean;
    var DO_CHECK_UNSAFE: boolean;
    var DO_STATS: boolean;
    var DO_MONITORS: boolean;
    var DO_CHECKS: boolean;
    var DO_AA_RANGE_CHECK: boolean;
    var DO_LOG_WIDEN_ARRAY: boolean;
    var DO_LOG_OVERSIZE: boolean;
    var DO_TRACE: boolean;
    var DO_FLUSH_STATS: boolean;
    var DO_FLUSH_MONITORS: boolean;
    var USE_DUMP_THREAD: boolean;
    var DUMP_INTERVAL: long;
    var DO_CLEAN_DIRTY: boolean;
    var USE_SIMPLIFIER: boolean;
    var USE_PATH_SIMPLIFIER: boolean;
    var DO_CLIP_SUBDIVIDER: boolean;
    var DO_LOG_BOUNDS: boolean;
    var DO_LOG_CLIP: boolean;
    var INITIAL_PIXEL_WIDTH: int;
    var INITIAL_PIXEL_HEIGHT: int;
    var INITIAL_ARRAY: int;
    var INITIAL_AA_ARRAY: int;
    var INITIAL_EDGES_COUNT: int;
    var INITIAL_EDGES_CAPACITY: int;
    var BYTE_0: byte;
    var SUBPIXEL_LG_POSITIONS_X: int;
    var SUBPIXEL_LG_POSITIONS_Y: int;
    var MIN_SUBPIXEL_LG_POSITIONS: int;
    var SUBPIXEL_POSITIONS_X: int;
    var SUBPIXEL_POSITIONS_Y: int;
    var MIN_SUBPIXELS: float;
    var MAX_AA_ALPHA: int;
    var TILE_H_LG: int;
    var TILE_H: int;
    var TILE_W_LG: int;
    var TILE_W: int;
    var BLOCK_SIZE_LG: int;
    var BLOCK_SIZE: int;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
    var OUTCODE_TOP: int;
    var OUTCODE_BOTTOM: int;
    var OUTCODE_LEFT: int;
    var OUTCODE_RIGHT: int;
    var OUTCODE_MASK_T_B: int;
    var OUTCODE_MASK_L_R: int;
    var OUTCODE_MASK_T_B_L_R: int;
}

type sun.java2d.marlin.CollinearSimplifier {
}

type sun.java2d.marlin.Version {
}

type sun.java2d.marlin.Helpers {
    var ENABLE_LOGS: boolean;
    var USE_LOGGER: boolean;
    var LOG_CREATE_CONTEXT: boolean;
    var LOG_UNSAFE_MALLOC: boolean;
    var DO_CHECK_UNSAFE: boolean;
    var DO_STATS: boolean;
    var DO_MONITORS: boolean;
    var DO_CHECKS: boolean;
    var DO_AA_RANGE_CHECK: boolean;
    var DO_LOG_WIDEN_ARRAY: boolean;
    var DO_LOG_OVERSIZE: boolean;
    var DO_TRACE: boolean;
    var DO_FLUSH_STATS: boolean;
    var DO_FLUSH_MONITORS: boolean;
    var USE_DUMP_THREAD: boolean;
    var DUMP_INTERVAL: long;
    var DO_CLEAN_DIRTY: boolean;
    var USE_SIMPLIFIER: boolean;
    var USE_PATH_SIMPLIFIER: boolean;
    var DO_CLIP_SUBDIVIDER: boolean;
    var DO_LOG_BOUNDS: boolean;
    var DO_LOG_CLIP: boolean;
    var INITIAL_PIXEL_WIDTH: int;
    var INITIAL_PIXEL_HEIGHT: int;
    var INITIAL_ARRAY: int;
    var INITIAL_AA_ARRAY: int;
    var INITIAL_EDGES_COUNT: int;
    var INITIAL_EDGES_CAPACITY: int;
    var BYTE_0: byte;
    var SUBPIXEL_LG_POSITIONS_X: int;
    var SUBPIXEL_LG_POSITIONS_Y: int;
    var MIN_SUBPIXEL_LG_POSITIONS: int;
    var SUBPIXEL_POSITIONS_X: int;
    var SUBPIXEL_POSITIONS_Y: int;
    var MIN_SUBPIXELS: float;
    var MAX_AA_ALPHA: int;
    var TILE_H_LG: int;
    var TILE_H: int;
    var TILE_W_LG: int;
    var TILE_W: int;
    var BLOCK_SIZE_LG: int;
    var BLOCK_SIZE: int;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
    var OUTCODE_TOP: int;
    var OUTCODE_BOTTOM: int;
    var OUTCODE_LEFT: int;
    var OUTCODE_RIGHT: int;
    var OUTCODE_MASK_T_B: int;
    var OUTCODE_MASK_L_R: int;
    var OUTCODE_MASK_T_B_L_R: int;
}

type sun.java2d.marlin.DPathConsumer2D {
}

type sun.java2d.marlin.MarlinTileGenerator {
    var ENABLE_LOGS: boolean;
    var USE_LOGGER: boolean;
    var LOG_CREATE_CONTEXT: boolean;
    var LOG_UNSAFE_MALLOC: boolean;
    var DO_CHECK_UNSAFE: boolean;
    var DO_STATS: boolean;
    var DO_MONITORS: boolean;
    var DO_CHECKS: boolean;
    var DO_AA_RANGE_CHECK: boolean;
    var DO_LOG_WIDEN_ARRAY: boolean;
    var DO_LOG_OVERSIZE: boolean;
    var DO_TRACE: boolean;
    var DO_FLUSH_STATS: boolean;
    var DO_FLUSH_MONITORS: boolean;
    var USE_DUMP_THREAD: boolean;
    var DUMP_INTERVAL: long;
    var DO_CLEAN_DIRTY: boolean;
    var USE_SIMPLIFIER: boolean;
    var USE_PATH_SIMPLIFIER: boolean;
    var DO_CLIP_SUBDIVIDER: boolean;
    var DO_LOG_BOUNDS: boolean;
    var DO_LOG_CLIP: boolean;
    var INITIAL_PIXEL_WIDTH: int;
    var INITIAL_PIXEL_HEIGHT: int;
    var INITIAL_ARRAY: int;
    var INITIAL_AA_ARRAY: int;
    var INITIAL_EDGES_COUNT: int;
    var INITIAL_EDGES_CAPACITY: int;
    var BYTE_0: byte;
    var SUBPIXEL_LG_POSITIONS_X: int;
    var SUBPIXEL_LG_POSITIONS_Y: int;
    var MIN_SUBPIXEL_LG_POSITIONS: int;
    var SUBPIXEL_POSITIONS_X: int;
    var SUBPIXEL_POSITIONS_Y: int;
    var MIN_SUBPIXELS: float;
    var MAX_AA_ALPHA: int;
    var TILE_H_LG: int;
    var TILE_H: int;
    var TILE_W_LG: int;
    var TILE_W: int;
    var BLOCK_SIZE_LG: int;
    var BLOCK_SIZE: int;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
    var OUTCODE_TOP: int;
    var OUTCODE_BOTTOM: int;
    var OUTCODE_LEFT: int;
    var OUTCODE_RIGHT: int;
    var OUTCODE_MASK_T_B: int;
    var OUTCODE_MASK_L_R: int;
    var OUTCODE_MASK_T_B_L_R: int;
}

type sun.java2d.marlin.ArrayCacheConst {
    var ENABLE_LOGS: boolean;
    var USE_LOGGER: boolean;
    var LOG_CREATE_CONTEXT: boolean;
    var LOG_UNSAFE_MALLOC: boolean;
    var DO_CHECK_UNSAFE: boolean;
    var DO_STATS: boolean;
    var DO_MONITORS: boolean;
    var DO_CHECKS: boolean;
    var DO_AA_RANGE_CHECK: boolean;
    var DO_LOG_WIDEN_ARRAY: boolean;
    var DO_LOG_OVERSIZE: boolean;
    var DO_TRACE: boolean;
    var DO_FLUSH_STATS: boolean;
    var DO_FLUSH_MONITORS: boolean;
    var USE_DUMP_THREAD: boolean;
    var DUMP_INTERVAL: long;
    var DO_CLEAN_DIRTY: boolean;
    var USE_SIMPLIFIER: boolean;
    var USE_PATH_SIMPLIFIER: boolean;
    var DO_CLIP_SUBDIVIDER: boolean;
    var DO_LOG_BOUNDS: boolean;
    var DO_LOG_CLIP: boolean;
    var INITIAL_PIXEL_WIDTH: int;
    var INITIAL_PIXEL_HEIGHT: int;
    var INITIAL_ARRAY: int;
    var INITIAL_AA_ARRAY: int;
    var INITIAL_EDGES_COUNT: int;
    var INITIAL_EDGES_CAPACITY: int;
    var BYTE_0: byte;
    var SUBPIXEL_LG_POSITIONS_X: int;
    var SUBPIXEL_LG_POSITIONS_Y: int;
    var MIN_SUBPIXEL_LG_POSITIONS: int;
    var SUBPIXEL_POSITIONS_X: int;
    var SUBPIXEL_POSITIONS_Y: int;
    var MIN_SUBPIXELS: float;
    var MAX_AA_ALPHA: int;
    var TILE_H_LG: int;
    var TILE_H: int;
    var TILE_W_LG: int;
    var TILE_W: int;
    var BLOCK_SIZE_LG: int;
    var BLOCK_SIZE: int;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
    var OUTCODE_TOP: int;
    var OUTCODE_BOTTOM: int;
    var OUTCODE_LEFT: int;
    var OUTCODE_RIGHT: int;
    var OUTCODE_MASK_T_B: int;
    var OUTCODE_MASK_L_R: int;
    var OUTCODE_MASK_T_B_L_R: int;
}

type sun.java2d.marlin.IntArrayCache {
    var ENABLE_LOGS: boolean;
    var USE_LOGGER: boolean;
    var LOG_CREATE_CONTEXT: boolean;
    var LOG_UNSAFE_MALLOC: boolean;
    var DO_CHECK_UNSAFE: boolean;
    var DO_STATS: boolean;
    var DO_MONITORS: boolean;
    var DO_CHECKS: boolean;
    var DO_AA_RANGE_CHECK: boolean;
    var DO_LOG_WIDEN_ARRAY: boolean;
    var DO_LOG_OVERSIZE: boolean;
    var DO_TRACE: boolean;
    var DO_FLUSH_STATS: boolean;
    var DO_FLUSH_MONITORS: boolean;
    var USE_DUMP_THREAD: boolean;
    var DUMP_INTERVAL: long;
    var DO_CLEAN_DIRTY: boolean;
    var USE_SIMPLIFIER: boolean;
    var USE_PATH_SIMPLIFIER: boolean;
    var DO_CLIP_SUBDIVIDER: boolean;
    var DO_LOG_BOUNDS: boolean;
    var DO_LOG_CLIP: boolean;
    var INITIAL_PIXEL_WIDTH: int;
    var INITIAL_PIXEL_HEIGHT: int;
    var INITIAL_ARRAY: int;
    var INITIAL_AA_ARRAY: int;
    var INITIAL_EDGES_COUNT: int;
    var INITIAL_EDGES_CAPACITY: int;
    var BYTE_0: byte;
    var SUBPIXEL_LG_POSITIONS_X: int;
    var SUBPIXEL_LG_POSITIONS_Y: int;
    var MIN_SUBPIXEL_LG_POSITIONS: int;
    var SUBPIXEL_POSITIONS_X: int;
    var SUBPIXEL_POSITIONS_Y: int;
    var MIN_SUBPIXELS: float;
    var MAX_AA_ALPHA: int;
    var TILE_H_LG: int;
    var TILE_H: int;
    var TILE_W_LG: int;
    var TILE_W: int;
    var BLOCK_SIZE_LG: int;
    var BLOCK_SIZE: int;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
    var OUTCODE_TOP: int;
    var OUTCODE_BOTTOM: int;
    var OUTCODE_LEFT: int;
    var OUTCODE_RIGHT: int;
    var OUTCODE_MASK_T_B: int;
    var OUTCODE_MASK_L_R: int;
    var OUTCODE_MASK_T_B_L_R: int;
}

type sun.java2d.marlin.ByteArrayCache {
    var ENABLE_LOGS: boolean;
    var USE_LOGGER: boolean;
    var LOG_CREATE_CONTEXT: boolean;
    var LOG_UNSAFE_MALLOC: boolean;
    var DO_CHECK_UNSAFE: boolean;
    var DO_STATS: boolean;
    var DO_MONITORS: boolean;
    var DO_CHECKS: boolean;
    var DO_AA_RANGE_CHECK: boolean;
    var DO_LOG_WIDEN_ARRAY: boolean;
    var DO_LOG_OVERSIZE: boolean;
    var DO_TRACE: boolean;
    var DO_FLUSH_STATS: boolean;
    var DO_FLUSH_MONITORS: boolean;
    var USE_DUMP_THREAD: boolean;
    var DUMP_INTERVAL: long;
    var DO_CLEAN_DIRTY: boolean;
    var USE_SIMPLIFIER: boolean;
    var USE_PATH_SIMPLIFIER: boolean;
    var DO_CLIP_SUBDIVIDER: boolean;
    var DO_LOG_BOUNDS: boolean;
    var DO_LOG_CLIP: boolean;
    var INITIAL_PIXEL_WIDTH: int;
    var INITIAL_PIXEL_HEIGHT: int;
    var INITIAL_ARRAY: int;
    var INITIAL_AA_ARRAY: int;
    var INITIAL_EDGES_COUNT: int;
    var INITIAL_EDGES_CAPACITY: int;
    var BYTE_0: byte;
    var SUBPIXEL_LG_POSITIONS_X: int;
    var SUBPIXEL_LG_POSITIONS_Y: int;
    var MIN_SUBPIXEL_LG_POSITIONS: int;
    var SUBPIXEL_POSITIONS_X: int;
    var SUBPIXEL_POSITIONS_Y: int;
    var MIN_SUBPIXELS: float;
    var MAX_AA_ALPHA: int;
    var TILE_H_LG: int;
    var TILE_H: int;
    var TILE_W_LG: int;
    var TILE_W: int;
    var BLOCK_SIZE_LG: int;
    var BLOCK_SIZE: int;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
    var OUTCODE_TOP: int;
    var OUTCODE_BOTTOM: int;
    var OUTCODE_LEFT: int;
    var OUTCODE_RIGHT: int;
    var OUTCODE_MASK_T_B: int;
    var OUTCODE_MASK_L_R: int;
    var OUTCODE_MASK_T_B_L_R: int;
}

type sun.java2d.marlin.MarlinCache {
    var ENABLE_LOGS: boolean;
    var USE_LOGGER: boolean;
    var LOG_CREATE_CONTEXT: boolean;
    var LOG_UNSAFE_MALLOC: boolean;
    var DO_CHECK_UNSAFE: boolean;
    var DO_STATS: boolean;
    var DO_MONITORS: boolean;
    var DO_CHECKS: boolean;
    var DO_AA_RANGE_CHECK: boolean;
    var DO_LOG_WIDEN_ARRAY: boolean;
    var DO_LOG_OVERSIZE: boolean;
    var DO_TRACE: boolean;
    var DO_FLUSH_STATS: boolean;
    var DO_FLUSH_MONITORS: boolean;
    var USE_DUMP_THREAD: boolean;
    var DUMP_INTERVAL: long;
    var DO_CLEAN_DIRTY: boolean;
    var USE_SIMPLIFIER: boolean;
    var USE_PATH_SIMPLIFIER: boolean;
    var DO_CLIP_SUBDIVIDER: boolean;
    var DO_LOG_BOUNDS: boolean;
    var DO_LOG_CLIP: boolean;
    var INITIAL_PIXEL_WIDTH: int;
    var INITIAL_PIXEL_HEIGHT: int;
    var INITIAL_ARRAY: int;
    var INITIAL_AA_ARRAY: int;
    var INITIAL_EDGES_COUNT: int;
    var INITIAL_EDGES_CAPACITY: int;
    var BYTE_0: byte;
    var SUBPIXEL_LG_POSITIONS_X: int;
    var SUBPIXEL_LG_POSITIONS_Y: int;
    var MIN_SUBPIXEL_LG_POSITIONS: int;
    var SUBPIXEL_POSITIONS_X: int;
    var SUBPIXEL_POSITIONS_Y: int;
    var MIN_SUBPIXELS: float;
    var MAX_AA_ALPHA: int;
    var TILE_H_LG: int;
    var TILE_H: int;
    var TILE_W_LG: int;
    var TILE_W: int;
    var BLOCK_SIZE_LG: int;
    var BLOCK_SIZE: int;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
    var OUTCODE_TOP: int;
    var OUTCODE_BOTTOM: int;
    var OUTCODE_LEFT: int;
    var OUTCODE_RIGHT: int;
    var OUTCODE_MASK_T_B: int;
    var OUTCODE_MASK_L_R: int;
    var OUTCODE_MASK_T_B_L_R: int;
}

type sun.java2d.marlin.TransformingPathConsumer2D {
}

type sun.java2d.marlin.MarlinProperties {
}

type sun.java2d.marlin.DoubleArrayCache {
    var ENABLE_LOGS: boolean;
    var USE_LOGGER: boolean;
    var LOG_CREATE_CONTEXT: boolean;
    var LOG_UNSAFE_MALLOC: boolean;
    var DO_CHECK_UNSAFE: boolean;
    var DO_STATS: boolean;
    var DO_MONITORS: boolean;
    var DO_CHECKS: boolean;
    var DO_AA_RANGE_CHECK: boolean;
    var DO_LOG_WIDEN_ARRAY: boolean;
    var DO_LOG_OVERSIZE: boolean;
    var DO_TRACE: boolean;
    var DO_FLUSH_STATS: boolean;
    var DO_FLUSH_MONITORS: boolean;
    var USE_DUMP_THREAD: boolean;
    var DUMP_INTERVAL: long;
    var DO_CLEAN_DIRTY: boolean;
    var USE_SIMPLIFIER: boolean;
    var USE_PATH_SIMPLIFIER: boolean;
    var DO_CLIP_SUBDIVIDER: boolean;
    var DO_LOG_BOUNDS: boolean;
    var DO_LOG_CLIP: boolean;
    var INITIAL_PIXEL_WIDTH: int;
    var INITIAL_PIXEL_HEIGHT: int;
    var INITIAL_ARRAY: int;
    var INITIAL_AA_ARRAY: int;
    var INITIAL_EDGES_COUNT: int;
    var INITIAL_EDGES_CAPACITY: int;
    var BYTE_0: byte;
    var SUBPIXEL_LG_POSITIONS_X: int;
    var SUBPIXEL_LG_POSITIONS_Y: int;
    var MIN_SUBPIXEL_LG_POSITIONS: int;
    var SUBPIXEL_POSITIONS_X: int;
    var SUBPIXEL_POSITIONS_Y: int;
    var MIN_SUBPIXELS: float;
    var MAX_AA_ALPHA: int;
    var TILE_H_LG: int;
    var TILE_H: int;
    var TILE_W_LG: int;
    var TILE_W: int;
    var BLOCK_SIZE_LG: int;
    var BLOCK_SIZE: int;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
    var OUTCODE_TOP: int;
    var OUTCODE_BOTTOM: int;
    var OUTCODE_LEFT: int;
    var OUTCODE_RIGHT: int;
    var OUTCODE_MASK_T_B: int;
    var OUTCODE_MASK_L_R: int;
    var OUTCODE_MASK_T_B_L_R: int;
}

type sun.java2d.marlin.PathSimplifier {
}

type sun.java2d.marlin.OffHeapArray {
}

type sun.java2d.marlin.RendererContext {
    var ENABLE_LOGS: boolean;
    var USE_LOGGER: boolean;
    var LOG_CREATE_CONTEXT: boolean;
    var LOG_UNSAFE_MALLOC: boolean;
    var DO_CHECK_UNSAFE: boolean;
    var DO_STATS: boolean;
    var DO_MONITORS: boolean;
    var DO_CHECKS: boolean;
    var DO_AA_RANGE_CHECK: boolean;
    var DO_LOG_WIDEN_ARRAY: boolean;
    var DO_LOG_OVERSIZE: boolean;
    var DO_TRACE: boolean;
    var DO_FLUSH_STATS: boolean;
    var DO_FLUSH_MONITORS: boolean;
    var USE_DUMP_THREAD: boolean;
    var DUMP_INTERVAL: long;
    var DO_CLEAN_DIRTY: boolean;
    var USE_SIMPLIFIER: boolean;
    var USE_PATH_SIMPLIFIER: boolean;
    var DO_CLIP_SUBDIVIDER: boolean;
    var DO_LOG_BOUNDS: boolean;
    var DO_LOG_CLIP: boolean;
    var INITIAL_PIXEL_WIDTH: int;
    var INITIAL_PIXEL_HEIGHT: int;
    var INITIAL_ARRAY: int;
    var INITIAL_AA_ARRAY: int;
    var INITIAL_EDGES_COUNT: int;
    var INITIAL_EDGES_CAPACITY: int;
    var BYTE_0: byte;
    var SUBPIXEL_LG_POSITIONS_X: int;
    var SUBPIXEL_LG_POSITIONS_Y: int;
    var MIN_SUBPIXEL_LG_POSITIONS: int;
    var SUBPIXEL_POSITIONS_X: int;
    var SUBPIXEL_POSITIONS_Y: int;
    var MIN_SUBPIXELS: float;
    var MAX_AA_ALPHA: int;
    var TILE_H_LG: int;
    var TILE_H: int;
    var TILE_W_LG: int;
    var TILE_W: int;
    var BLOCK_SIZE_LG: int;
    var BLOCK_SIZE: int;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
    var OUTCODE_TOP: int;
    var OUTCODE_BOTTOM: int;
    var OUTCODE_LEFT: int;
    var OUTCODE_RIGHT: int;
    var OUTCODE_MASK_T_B: int;
    var OUTCODE_MASK_L_R: int;
    var OUTCODE_MASK_T_B_L_R: int;
}

type sun.java2d.marlin.Stroker {
    var ENABLE_LOGS: boolean;
    var USE_LOGGER: boolean;
    var LOG_CREATE_CONTEXT: boolean;
    var LOG_UNSAFE_MALLOC: boolean;
    var DO_CHECK_UNSAFE: boolean;
    var DO_STATS: boolean;
    var DO_MONITORS: boolean;
    var DO_CHECKS: boolean;
    var DO_AA_RANGE_CHECK: boolean;
    var DO_LOG_WIDEN_ARRAY: boolean;
    var DO_LOG_OVERSIZE: boolean;
    var DO_TRACE: boolean;
    var DO_FLUSH_STATS: boolean;
    var DO_FLUSH_MONITORS: boolean;
    var USE_DUMP_THREAD: boolean;
    var DUMP_INTERVAL: long;
    var DO_CLEAN_DIRTY: boolean;
    var USE_SIMPLIFIER: boolean;
    var USE_PATH_SIMPLIFIER: boolean;
    var DO_CLIP_SUBDIVIDER: boolean;
    var DO_LOG_BOUNDS: boolean;
    var DO_LOG_CLIP: boolean;
    var INITIAL_PIXEL_WIDTH: int;
    var INITIAL_PIXEL_HEIGHT: int;
    var INITIAL_ARRAY: int;
    var INITIAL_AA_ARRAY: int;
    var INITIAL_EDGES_COUNT: int;
    var INITIAL_EDGES_CAPACITY: int;
    var BYTE_0: byte;
    var SUBPIXEL_LG_POSITIONS_X: int;
    var SUBPIXEL_LG_POSITIONS_Y: int;
    var MIN_SUBPIXEL_LG_POSITIONS: int;
    var SUBPIXEL_POSITIONS_X: int;
    var SUBPIXEL_POSITIONS_Y: int;
    var MIN_SUBPIXELS: float;
    var MAX_AA_ALPHA: int;
    var TILE_H_LG: int;
    var TILE_H: int;
    var TILE_W_LG: int;
    var TILE_W: int;
    var BLOCK_SIZE_LG: int;
    var BLOCK_SIZE: int;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
    var OUTCODE_TOP: int;
    var OUTCODE_BOTTOM: int;
    var OUTCODE_LEFT: int;
    var OUTCODE_RIGHT: int;
    var OUTCODE_MASK_T_B: int;
    var OUTCODE_MASK_L_R: int;
    var OUTCODE_MASK_T_B_L_R: int;
}

type sun.java2d.marlin.Renderer {
    var OFF_CURX_OR: long;
    var OFF_ERROR: long;
    var OFF_BUMP_X: long;
    var OFF_BUMP_ERR: long;
    var OFF_NEXT: long;
    var OFF_YMAX: long;
    var SIZEOF_EDGE_BYTES: int;
    var SCALE_DY: double;
    var CUB_DEC_BND: double;
    var CUB_INC_BND: double;
    var CUB_COUNT_LG: int;
    var QUAD_DEC_BND: double;
    var ENABLE_LOGS: boolean;
    var USE_LOGGER: boolean;
    var LOG_CREATE_CONTEXT: boolean;
    var LOG_UNSAFE_MALLOC: boolean;
    var DO_CHECK_UNSAFE: boolean;
    var DO_STATS: boolean;
    var DO_MONITORS: boolean;
    var DO_CHECKS: boolean;
    var DO_AA_RANGE_CHECK: boolean;
    var DO_LOG_WIDEN_ARRAY: boolean;
    var DO_LOG_OVERSIZE: boolean;
    var DO_TRACE: boolean;
    var DO_FLUSH_STATS: boolean;
    var DO_FLUSH_MONITORS: boolean;
    var USE_DUMP_THREAD: boolean;
    var DUMP_INTERVAL: long;
    var DO_CLEAN_DIRTY: boolean;
    var USE_SIMPLIFIER: boolean;
    var USE_PATH_SIMPLIFIER: boolean;
    var DO_CLIP_SUBDIVIDER: boolean;
    var DO_LOG_BOUNDS: boolean;
    var DO_LOG_CLIP: boolean;
    var INITIAL_PIXEL_WIDTH: int;
    var INITIAL_PIXEL_HEIGHT: int;
    var INITIAL_ARRAY: int;
    var INITIAL_AA_ARRAY: int;
    var INITIAL_EDGES_COUNT: int;
    var INITIAL_EDGES_CAPACITY: int;
    var BYTE_0: byte;
    var SUBPIXEL_LG_POSITIONS_X: int;
    var SUBPIXEL_LG_POSITIONS_Y: int;
    var MIN_SUBPIXEL_LG_POSITIONS: int;
    var SUBPIXEL_POSITIONS_X: int;
    var SUBPIXEL_POSITIONS_Y: int;
    var MIN_SUBPIXELS: float;
    var MAX_AA_ALPHA: int;
    var TILE_H_LG: int;
    var TILE_H: int;
    var TILE_W_LG: int;
    var TILE_W: int;
    var BLOCK_SIZE_LG: int;
    var BLOCK_SIZE: int;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
    var OUTCODE_TOP: int;
    var OUTCODE_BOTTOM: int;
    var OUTCODE_LEFT: int;
    var OUTCODE_RIGHT: int;
    var OUTCODE_MASK_T_B: int;
    var OUTCODE_MASK_L_R: int;
    var OUTCODE_MASK_T_B_L_R: int;
}

type sun.java2d.marlin.stats.StatLong {
    var name: java.lang.String;
    var count: long;
    var sum: long;
    var min: long;
    var max: long;
}

type sun.java2d.marlin.stats.Histogram {
    var name: java.lang.String;
    var count: long;
    var sum: long;
    var min: long;
    var max: long;
}

type sun.java2d.marlin.stats.Monitor {
    var name: java.lang.String;
    var count: long;
    var sum: long;
    var min: long;
    var max: long;
}

type sun.java2d.marlin.MergeSort {
    var INSERTION_SORT_THRESHOLD: int;
}

type sun.java2d.marlin.MarlinUtils {
}

type sun.java2d.marlin.FloatMath {
    var FLOAT_SIGNIFICAND_WIDTH: int;
    var FLOAT_EXP_BIAS: int;
    var FLOAT_EXP_BIT_MASK: int;
    var FLOAT_SIGNIF_BIT_MASK: int;
    var ENABLE_LOGS: boolean;
    var USE_LOGGER: boolean;
    var LOG_CREATE_CONTEXT: boolean;
    var LOG_UNSAFE_MALLOC: boolean;
    var DO_CHECK_UNSAFE: boolean;
    var DO_STATS: boolean;
    var DO_MONITORS: boolean;
    var DO_CHECKS: boolean;
    var DO_AA_RANGE_CHECK: boolean;
    var DO_LOG_WIDEN_ARRAY: boolean;
    var DO_LOG_OVERSIZE: boolean;
    var DO_TRACE: boolean;
    var DO_FLUSH_STATS: boolean;
    var DO_FLUSH_MONITORS: boolean;
    var USE_DUMP_THREAD: boolean;
    var DUMP_INTERVAL: long;
    var DO_CLEAN_DIRTY: boolean;
    var USE_SIMPLIFIER: boolean;
    var USE_PATH_SIMPLIFIER: boolean;
    var DO_CLIP_SUBDIVIDER: boolean;
    var DO_LOG_BOUNDS: boolean;
    var DO_LOG_CLIP: boolean;
    var INITIAL_PIXEL_WIDTH: int;
    var INITIAL_PIXEL_HEIGHT: int;
    var INITIAL_ARRAY: int;
    var INITIAL_AA_ARRAY: int;
    var INITIAL_EDGES_COUNT: int;
    var INITIAL_EDGES_CAPACITY: int;
    var BYTE_0: byte;
    var SUBPIXEL_LG_POSITIONS_X: int;
    var SUBPIXEL_LG_POSITIONS_Y: int;
    var MIN_SUBPIXEL_LG_POSITIONS: int;
    var SUBPIXEL_POSITIONS_X: int;
    var SUBPIXEL_POSITIONS_Y: int;
    var MIN_SUBPIXELS: float;
    var MAX_AA_ALPHA: int;
    var TILE_H_LG: int;
    var TILE_H: int;
    var TILE_W_LG: int;
    var TILE_W: int;
    var BLOCK_SIZE_LG: int;
    var BLOCK_SIZE: int;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
    var OUTCODE_TOP: int;
    var OUTCODE_BOTTOM: int;
    var OUTCODE_LEFT: int;
    var OUTCODE_RIGHT: int;
    var OUTCODE_MASK_T_B: int;
    var OUTCODE_MASK_L_R: int;
    var OUTCODE_MASK_T_B_L_R: int;
}

type sun.java2d.marlin.DMarlinRenderingEngine {
    var ENABLE_LOGS: boolean;
    var USE_LOGGER: boolean;
    var LOG_CREATE_CONTEXT: boolean;
    var LOG_UNSAFE_MALLOC: boolean;
    var DO_CHECK_UNSAFE: boolean;
    var DO_STATS: boolean;
    var DO_MONITORS: boolean;
    var DO_CHECKS: boolean;
    var DO_AA_RANGE_CHECK: boolean;
    var DO_LOG_WIDEN_ARRAY: boolean;
    var DO_LOG_OVERSIZE: boolean;
    var DO_TRACE: boolean;
    var DO_FLUSH_STATS: boolean;
    var DO_FLUSH_MONITORS: boolean;
    var USE_DUMP_THREAD: boolean;
    var DUMP_INTERVAL: long;
    var DO_CLEAN_DIRTY: boolean;
    var USE_SIMPLIFIER: boolean;
    var USE_PATH_SIMPLIFIER: boolean;
    var DO_CLIP_SUBDIVIDER: boolean;
    var DO_LOG_BOUNDS: boolean;
    var DO_LOG_CLIP: boolean;
    var INITIAL_PIXEL_WIDTH: int;
    var INITIAL_PIXEL_HEIGHT: int;
    var INITIAL_ARRAY: int;
    var INITIAL_AA_ARRAY: int;
    var INITIAL_EDGES_COUNT: int;
    var INITIAL_EDGES_CAPACITY: int;
    var BYTE_0: byte;
    var SUBPIXEL_LG_POSITIONS_X: int;
    var SUBPIXEL_LG_POSITIONS_Y: int;
    var MIN_SUBPIXEL_LG_POSITIONS: int;
    var SUBPIXEL_POSITIONS_X: int;
    var SUBPIXEL_POSITIONS_Y: int;
    var MIN_SUBPIXELS: float;
    var MAX_AA_ALPHA: int;
    var TILE_H_LG: int;
    var TILE_H: int;
    var TILE_W_LG: int;
    var TILE_W: int;
    var BLOCK_SIZE_LG: int;
    var BLOCK_SIZE: int;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
    var OUTCODE_TOP: int;
    var OUTCODE_BOTTOM: int;
    var OUTCODE_LEFT: int;
    var OUTCODE_RIGHT: int;
    var OUTCODE_MASK_T_B: int;
    var OUTCODE_MASK_L_R: int;
    var OUTCODE_MASK_T_B_L_R: int;
}

type sun.java2d.marlin.MarlinConst {
    var ENABLE_LOGS: boolean;
    var USE_LOGGER: boolean;
    var LOG_CREATE_CONTEXT: boolean;
    var LOG_UNSAFE_MALLOC: boolean;
    var DO_CHECK_UNSAFE: boolean;
    var DO_STATS: boolean;
    var DO_MONITORS: boolean;
    var DO_CHECKS: boolean;
    var DO_AA_RANGE_CHECK: boolean;
    var DO_LOG_WIDEN_ARRAY: boolean;
    var DO_LOG_OVERSIZE: boolean;
    var DO_TRACE: boolean;
    var DO_FLUSH_STATS: boolean;
    var DO_FLUSH_MONITORS: boolean;
    var USE_DUMP_THREAD: boolean;
    var DUMP_INTERVAL: long;
    var DO_CLEAN_DIRTY: boolean;
    var USE_SIMPLIFIER: boolean;
    var USE_PATH_SIMPLIFIER: boolean;
    var DO_CLIP_SUBDIVIDER: boolean;
    var DO_LOG_BOUNDS: boolean;
    var DO_LOG_CLIP: boolean;
    var INITIAL_PIXEL_WIDTH: int;
    var INITIAL_PIXEL_HEIGHT: int;
    var INITIAL_ARRAY: int;
    var INITIAL_AA_ARRAY: int;
    var INITIAL_EDGES_COUNT: int;
    var INITIAL_EDGES_CAPACITY: int;
    var BYTE_0: byte;
    var SUBPIXEL_LG_POSITIONS_X: int;
    var SUBPIXEL_LG_POSITIONS_Y: int;
    var MIN_SUBPIXEL_LG_POSITIONS: int;
    var SUBPIXEL_POSITIONS_X: int;
    var SUBPIXEL_POSITIONS_Y: int;
    var MIN_SUBPIXELS: float;
    var MAX_AA_ALPHA: int;
    var TILE_H_LG: int;
    var TILE_H: int;
    var TILE_W_LG: int;
    var TILE_W: int;
    var BLOCK_SIZE_LG: int;
    var BLOCK_SIZE: int;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
    var OUTCODE_TOP: int;
    var OUTCODE_BOTTOM: int;
    var OUTCODE_LEFT: int;
    var OUTCODE_RIGHT: int;
    var OUTCODE_MASK_T_B: int;
    var OUTCODE_MASK_L_R: int;
    var OUTCODE_MASK_T_B_L_R: int;
}

type sun.java2d.NullSurfaceData {
    var theInstance: sun.java2d.SurfaceData;
    var outlineTextRenderer: sun.java2d.pipe.TextPipe;
    var solidTextRenderer: sun.java2d.pipe.TextPipe;
    var aaTextRenderer: sun.java2d.pipe.TextPipe;
    var lcdTextRenderer: sun.java2d.pipe.TextPipe;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type sun.java2d.BackBufferCapsProvider {
}

type sun.java2d.pipe.BufferedBufImgOps {
}

type sun.java2d.pipe.SpanClipRenderer {
}

type sun.java2d.pipe.RenderingEngine {
}

type sun.java2d.pipe.BufferedMaskBlit {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.pipe.NullPipe {
}

type sun.java2d.pipe.TextRenderer {
}

type sun.java2d.pipe.PixelToShapeConverter {
}

type sun.java2d.pipe.hw.AccelTypedVolatileImage {
    var IMAGE_OK: int;
    var IMAGE_RESTORED: int;
    var IMAGE_INCOMPATIBLE: int;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
    var UndefinedProperty: java.lang.Object;
    var SCALE_DEFAULT: int;
    var SCALE_FAST: int;
    var SCALE_SMOOTH: int;
    var SCALE_REPLICATE: int;
    var SCALE_AREA_AVERAGING: int;
}

type sun.java2d.pipe.hw.ContextCapabilities {
    var CAPS_EMPTY: int;
    var CAPS_RT_PLAIN_ALPHA: int;
    var CAPS_RT_TEXTURE_ALPHA: int;
    var CAPS_RT_TEXTURE_OPAQUE: int;
    var CAPS_MULTITEXTURE: int;
    var CAPS_TEXNONPOW2: int;
    var CAPS_TEXNONSQUARE: int;
    var CAPS_PS20: int;
    var CAPS_PS30: int;
}

type sun.java2d.pipe.hw.AccelSurface {
    var UNDEFINED: int;
    var WINDOW: int;
    var RT_PLAIN: int;
    var TEXTURE: int;
    var FLIP_BACKBUFFER: int;
    var RT_TEXTURE: int;
}

type sun.java2d.pipe.hw.ExtendedBufferCapabilities {
}

type sun.java2d.pipe.hw.BufferedContextProvider {
}

type sun.java2d.pipe.hw.AccelGraphicsConfig {
}

type sun.java2d.pipe.AAShapePipe {
}

type sun.java2d.pipe.BufferedPaints {
    var MULTI_MAX_FRACTIONS: int;
}

type sun.java2d.pipe.SolidTextRenderer {
}

type sun.java2d.pipe.DrawImage {
}

type sun.java2d.pipe.OutlineTextRenderer {
    var THRESHHOLD: int;
}

type sun.java2d.pipe.PixelFillPipe {
}

type sun.java2d.pipe.ShapeSpanIterator {
}

type sun.java2d.pipe.BufferedOpCodes {
    var DRAW_LINE: int;
    var DRAW_RECT: int;
    var DRAW_POLY: int;
    var DRAW_PIXEL: int;
    var DRAW_SCANLINES: int;
    var DRAW_PARALLELOGRAM: int;
    var DRAW_AAPARALLELOGRAM: int;
    var FILL_RECT: int;
    var FILL_SPANS: int;
    var FILL_PARALLELOGRAM: int;
    var FILL_AAPARALLELOGRAM: int;
    var COPY_AREA: int;
    var BLIT: int;
    var MASK_FILL: int;
    var MASK_BLIT: int;
    var SURFACE_TO_SW_BLIT: int;
    var DRAW_GLYPH_LIST: int;
    var SET_RECT_CLIP: int;
    var BEGIN_SHAPE_CLIP: int;
    var SET_SHAPE_CLIP_SPANS: int;
    var END_SHAPE_CLIP: int;
    var RESET_CLIP: int;
    var SET_ALPHA_COMPOSITE: int;
    var SET_XOR_COMPOSITE: int;
    var RESET_COMPOSITE: int;
    var SET_TRANSFORM: int;
    var RESET_TRANSFORM: int;
    var SET_SURFACES: int;
    var SET_SCRATCH_SURFACE: int;
    var FLUSH_SURFACE: int;
    var DISPOSE_SURFACE: int;
    var DISPOSE_CONFIG: int;
    var INVALIDATE_CONTEXT: int;
    var SYNC: int;
    var RESTORE_DEVICES: int;
    var SWAP_BUFFERS: int;
    var NOOP: int;
    var RESET_PAINT: int;
    var SET_COLOR: int;
    var SET_GRADIENT_PAINT: int;
    var SET_LINEAR_GRADIENT_PAINT: int;
    var SET_RADIAL_GRADIENT_PAINT: int;
    var SET_TEXTURE_PAINT: int;
    var ENABLE_CONVOLVE_OP: int;
    var DISABLE_CONVOLVE_OP: int;
    var ENABLE_RESCALE_OP: int;
    var DISABLE_RESCALE_OP: int;
    var ENABLE_LOOKUP_OP: int;
    var DISABLE_LOOKUP_OP: int;
}

type sun.java2d.pipe.AATileGenerator {
}

type sun.java2d.pipe.AlphaPaintPipe {
}

type sun.java2d.pipe.ValidatePipe {
}

type sun.java2d.pipe.RegionSpanIterator {
}

type sun.java2d.pipe.RegionIterator {
}

type sun.java2d.pipe.RenderBuffer {
}

type sun.java2d.pipe.SpanShapeRenderer {
    var NON_RECTILINEAR_TRANSFORM_MASK: int;
}

type sun.java2d.pipe.LoopBasedPipe {
}

type sun.java2d.pipe.RegionClipSpanIterator {
}

type sun.java2d.pipe.BufferedMaskFill {
    var methodSignature: java.lang.String;
    var fillPgramSignature: java.lang.String;
    var drawPgramSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.pipe.Region {
    var EMPTY_REGION: sun.java2d.pipe.Region;
    var WHOLE_REGION: sun.java2d.pipe.Region;
}

type sun.java2d.pipe.AATextRenderer {
}

type sun.java2d.pipe.RenderQueue {
}

type sun.java2d.pipe.LoopPipe {
}

type sun.java2d.pipe.BufferedRenderPipe {
}

type sun.java2d.pipe.BufferedContext {
    var NO_CONTEXT_FLAGS: int;
    var SRC_IS_OPAQUE: int;
    var USE_MASK: int;
}

type sun.java2d.pipe.AlphaColorPipe {
}

type sun.java2d.pipe.GlyphListPipe {
}

type sun.java2d.pipe.ParallelogramPipe {
}

type sun.java2d.pipe.TextPipe {
}

type sun.java2d.pipe.CompositePipe {
}

type sun.java2d.pipe.GeneralCompositePipe {
}

type sun.java2d.pipe.LCDTextRenderer {
}

type sun.java2d.pipe.BufferedTextPipe {
}

type sun.java2d.pipe.ShapeDrawPipe {
}

type sun.java2d.pipe.DrawImagePipe {
}

type sun.java2d.pipe.PixelToParallelogramConverter {
}

type sun.java2d.pipe.GlyphListLoopPipe {
}

type sun.java2d.pipe.SpanIterator {
}

type sun.java2d.pipe.PixelDrawPipe {
}

type sun.java2d.MacosxSurfaceManagerFactory {
}

type sun.java2d.SurfaceManagerFactory {
}

type sun.java2d.Spans {
}

type sun.java2d.SunGraphicsEnvironment {
}

type sun.java2d.SunGraphics2D {
    var PAINT_CUSTOM: int;
    var PAINT_TEXTURE: int;
    var PAINT_RAD_GRADIENT: int;
    var PAINT_LIN_GRADIENT: int;
    var PAINT_GRADIENT: int;
    var PAINT_ALPHACOLOR: int;
    var PAINT_OPAQUECOLOR: int;
    var COMP_CUSTOM: int;
    var COMP_XOR: int;
    var COMP_ALPHA: int;
    var COMP_ISCOPY: int;
    var STROKE_CUSTOM: int;
    var STROKE_WIDE: int;
    var STROKE_THINDASHED: int;
    var STROKE_THIN: int;
    var TRANSFORM_GENERIC: int;
    var TRANSFORM_TRANSLATESCALE: int;
    var TRANSFORM_ANY_TRANSLATE: int;
    var TRANSFORM_INT_TRANSLATE: int;
    var TRANSFORM_ISIDENT: int;
    var CLIP_SHAPE: int;
    var CLIP_RECTANGULAR: int;
    var CLIP_DEVICE: int;
    var eargb: int;
    var pixel: int;
    var surfaceData: sun.java2d.SurfaceData;
    var drawpipe: sun.java2d.pipe.PixelDrawPipe;
    var fillpipe: sun.java2d.pipe.PixelFillPipe;
    var imagepipe: sun.java2d.pipe.DrawImagePipe;
    var shapepipe: sun.java2d.pipe.ShapeDrawPipe;
    var textpipe: sun.java2d.pipe.TextPipe;
    var alphafill: sun.java2d.loops.MaskFill;
    var loops: sun.java2d.loops.RenderLoops;
    var imageComp: sun.java2d.loops.CompositeType;
    var paintState: int;
    var compositeState: int;
    var strokeState: int;
    var transformState: int;
    var clipState: int;
    var foregroundColor: java.awt.Color;
    var backgroundColor: java.awt.Color;
    var transform: java.awt.geom.AffineTransform;
    var transX: int;
    var transY: int;
    var paint: java.awt.Paint;
    var stroke: java.awt.Stroke;
    var composite: java.awt.Composite;
    var renderHint: int;
    var antialiasHint: int;
    var textAntialiasHint: int;
    var lcdTextContrast: int;
    var strokeHint: int;
    var interpolationType: int;
    var hints: java.awt.RenderingHints;
    var constrainClip: sun.java2d.pipe.Region;
    var constrainX: int;
    var constrainY: int;
    var clipRegion: sun.java2d.pipe.Region;
    var usrClip: java.awt.Shape;
    var MinPenSizeAA: double;
    var MinPenSizeAASquared: double;
    var MinPenSizeSquared: double;
}

type sun.java2d.StateTrackable {
}

type sun.java2d.IntegerNIORaster {
}

type sun.java2d.CRenderer {
}

type sun.java2d.DefaultDisposerRecord {
}

type sun.java2d.OSXOffScreenSurfaceData {
    var outlineTextRenderer: sun.java2d.pipe.TextPipe;
    var solidTextRenderer: sun.java2d.pipe.TextPipe;
    var aaTextRenderer: sun.java2d.pipe.TextPipe;
    var lcdTextRenderer: sun.java2d.pipe.TextPipe;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type sun.java2d.CompositeCRenderer {
}

type sun.java2d.InvalidPipeException {
}

type sun.java2d.DisposerTarget {
}

type sun.java2d.FontSupport {
}

type sun.java2d.OSXSurfaceData {
    var outlineTextRenderer: sun.java2d.pipe.TextPipe;
    var solidTextRenderer: sun.java2d.pipe.TextPipe;
    var aaTextRenderer: sun.java2d.pipe.TextPipe;
    var lcdTextRenderer: sun.java2d.pipe.TextPipe;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type sun.java2d.StateTracker {
    var ALWAYS_CURRENT: sun.java2d.StateTracker;
    var NEVER_CURRENT: sun.java2d.StateTracker;
}

type sun.java2d.StateTrackableDelegate {
    var UNTRACKABLE_DELEGATE: sun.java2d.StateTrackableDelegate;
    var IMMUTABLE_DELEGATE: sun.java2d.StateTrackableDelegate;
}

type sun.java2d.loops.XorDrawGlyphListANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.ProcessPath {
    var PH_MODE_DRAW_CLIP: int;
    var PH_MODE_FILL_CLIP: int;
    var EPSFX: int;
    var EPSF: float;
}

type sun.java2d.loops.SetDrawPolygonsANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.XorDrawPathANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.GeneralRenderer {
}

type sun.java2d.loops.DrawRect {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.SetDrawRectANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.FillPath {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.XorCopyArgbToAny {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.BlitBg {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.TransformBlit {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.DrawGlyphList {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.TransformHelper {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.PixelWriter {
}

type sun.java2d.loops.MaskBlit {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.ScaledBlit {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.SetDrawPathANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.XorDrawRectANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.PixelWriterDrawHandler {
    var xMin: int;
    var yMin: int;
    var xMax: int;
    var yMax: int;
    var xMinf: float;
    var yMinf: float;
    var xMaxf: float;
    var yMaxf: float;
    var strokeControl: int;
}

type sun.java2d.loops.DrawParallelogram {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.DrawGlyphListLCD {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.XorFillSpansANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.XorPixelWriter {
}

type sun.java2d.loops.DrawPolygons {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.DrawLine {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.Blit {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.RenderCache {
}

type sun.java2d.loops.GraphicsPrimitiveMgr {
}

type sun.java2d.loops.OpaqueCopyArgbToAny {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.OpaqueCopyAnyToArgb {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.RenderLoops {
    var primTypeID: int;
    var drawLineLoop: sun.java2d.loops.DrawLine;
    var fillRectLoop: sun.java2d.loops.FillRect;
    var drawRectLoop: sun.java2d.loops.DrawRect;
    var drawPolygonsLoop: sun.java2d.loops.DrawPolygons;
    var drawPathLoop: sun.java2d.loops.DrawPath;
    var fillPathLoop: sun.java2d.loops.FillPath;
    var fillSpansLoop: sun.java2d.loops.FillSpans;
    var fillParallelogramLoop: sun.java2d.loops.FillParallelogram;
    var drawParallelogramLoop: sun.java2d.loops.DrawParallelogram;
    var drawGlyphListLoop: sun.java2d.loops.DrawGlyphList;
    var drawGlyphListAALoop: sun.java2d.loops.DrawGlyphListAA;
    var drawGlyphListLCDLoop: sun.java2d.loops.DrawGlyphListLCD;
    var drawGlyphListColorLoop: `<UNRESOLVED_TYPE>`;
}

type sun.java2d.loops.SurfaceType {
    var DESC_ANY: java.lang.String;
    var DESC_INT_RGB: java.lang.String;
    var DESC_INT_ARGB: java.lang.String;
    var DESC_INT_ARGB_PRE: java.lang.String;
    var DESC_INT_BGR: java.lang.String;
    var DESC_3BYTE_BGR: java.lang.String;
    var DESC_4BYTE_ABGR: java.lang.String;
    var DESC_4BYTE_ABGR_PRE: java.lang.String;
    var DESC_USHORT_565_RGB: java.lang.String;
    var DESC_USHORT_555_RGB: java.lang.String;
    var DESC_USHORT_555_RGBx: java.lang.String;
    var DESC_USHORT_4444_ARGB: java.lang.String;
    var DESC_BYTE_GRAY: java.lang.String;
    var DESC_USHORT_INDEXED: java.lang.String;
    var DESC_USHORT_GRAY: java.lang.String;
    var DESC_BYTE_BINARY: java.lang.String;
    var DESC_BYTE_INDEXED: java.lang.String;
    var DESC_ANY_INT: java.lang.String;
    var DESC_ANY_SHORT: java.lang.String;
    var DESC_ANY_BYTE: java.lang.String;
    var DESC_ANY_3BYTE: java.lang.String;
    var DESC_ANY_4BYTE: java.lang.String;
    var DESC_ANY_INT_DCM: java.lang.String;
    var DESC_INT_RGBx: java.lang.String;
    var DESC_INT_BGRx: java.lang.String;
    var DESC_3BYTE_RGB: java.lang.String;
    var DESC_INT_ARGB_BM: java.lang.String;
    var DESC_BYTE_INDEXED_BM: java.lang.String;
    var DESC_BYTE_INDEXED_OPAQUE: java.lang.String;
    var DESC_INDEX8_GRAY: java.lang.String;
    var DESC_INDEX12_GRAY: java.lang.String;
    var DESC_BYTE_BINARY_1BIT: java.lang.String;
    var DESC_BYTE_BINARY_2BIT: java.lang.String;
    var DESC_BYTE_BINARY_4BIT: java.lang.String;
    var DESC_ANY_PAINT: java.lang.String;
    var DESC_ANY_COLOR: java.lang.String;
    var DESC_OPAQUE_COLOR: java.lang.String;
    var DESC_GRADIENT_PAINT: java.lang.String;
    var DESC_OPAQUE_GRADIENT_PAINT: java.lang.String;
    var DESC_TEXTURE_PAINT: java.lang.String;
    var DESC_OPAQUE_TEXTURE_PAINT: java.lang.String;
    var DESC_LINEAR_GRADIENT_PAINT: java.lang.String;
    var DESC_OPAQUE_LINEAR_GRADIENT_PAINT: java.lang.String;
    var DESC_RADIAL_GRADIENT_PAINT: java.lang.String;
    var DESC_OPAQUE_RADIAL_GRADIENT_PAINT: java.lang.String;
    var Any: sun.java2d.loops.SurfaceType;
    var AnyInt: sun.java2d.loops.SurfaceType;
    var AnyShort: sun.java2d.loops.SurfaceType;
    var AnyByte: sun.java2d.loops.SurfaceType;
    var AnyByteBinary: sun.java2d.loops.SurfaceType;
    var Any3Byte: sun.java2d.loops.SurfaceType;
    var Any4Byte: sun.java2d.loops.SurfaceType;
    var AnyDcm: sun.java2d.loops.SurfaceType;
    var Custom: sun.java2d.loops.SurfaceType;
    var IntRgb: sun.java2d.loops.SurfaceType;
    var IntArgb: sun.java2d.loops.SurfaceType;
    var IntArgbPre: sun.java2d.loops.SurfaceType;
    var IntBgr: sun.java2d.loops.SurfaceType;
    var ThreeByteBgr: sun.java2d.loops.SurfaceType;
    var FourByteAbgr: sun.java2d.loops.SurfaceType;
    var FourByteAbgrPre: sun.java2d.loops.SurfaceType;
    var Ushort565Rgb: sun.java2d.loops.SurfaceType;
    var Ushort555Rgb: sun.java2d.loops.SurfaceType;
    var Ushort555Rgbx: sun.java2d.loops.SurfaceType;
    var Ushort4444Argb: sun.java2d.loops.SurfaceType;
    var UshortIndexed: sun.java2d.loops.SurfaceType;
    var ByteGray: sun.java2d.loops.SurfaceType;
    var UshortGray: sun.java2d.loops.SurfaceType;
    var ByteBinary1Bit: sun.java2d.loops.SurfaceType;
    var ByteBinary2Bit: sun.java2d.loops.SurfaceType;
    var ByteBinary4Bit: sun.java2d.loops.SurfaceType;
    var ByteIndexed: sun.java2d.loops.SurfaceType;
    var IntRgbx: sun.java2d.loops.SurfaceType;
    var IntBgrx: sun.java2d.loops.SurfaceType;
    var ThreeByteRgb: sun.java2d.loops.SurfaceType;
    var IntArgbBm: sun.java2d.loops.SurfaceType;
    var ByteIndexedBm: sun.java2d.loops.SurfaceType;
    var ByteIndexedOpaque: sun.java2d.loops.SurfaceType;
    var Index8Gray: sun.java2d.loops.SurfaceType;
    var Index12Gray: sun.java2d.loops.SurfaceType;
    var AnyPaint: sun.java2d.loops.SurfaceType;
    var AnyColor: sun.java2d.loops.SurfaceType;
    var OpaqueColor: sun.java2d.loops.SurfaceType;
    var GradientPaint: sun.java2d.loops.SurfaceType;
    var OpaqueGradientPaint: sun.java2d.loops.SurfaceType;
    var LinearGradientPaint: sun.java2d.loops.SurfaceType;
    var OpaqueLinearGradientPaint: sun.java2d.loops.SurfaceType;
    var RadialGradientPaint: sun.java2d.loops.SurfaceType;
    var OpaqueRadialGradientPaint: sun.java2d.loops.SurfaceType;
    var TexturePaint: sun.java2d.loops.SurfaceType;
    var OpaqueTexturePaint: sun.java2d.loops.SurfaceType;
}

type sun.java2d.loops.FillSpans {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.SetFillRectANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.MaskFill {
    var methodSignature: java.lang.String;
    var fillPgramSignature: java.lang.String;
    var drawPgramSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.FillRect {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.XorFillPathANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.CustomComponent {
}

type sun.java2d.loops.DrawPath {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.XorDrawLineANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.XorDrawPolygonsANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.SolidPixelWriter {
}

type sun.java2d.loops.SetFillSpansANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.XORComposite {
}

type sun.java2d.loops.FontInfo {
    var font: java.awt.Font;
    var font2D: sun.font.Font2D;
    var fontStrike: sun.font.FontStrike;
    var devTx: array<double>;
    var glyphTx: array<double>;
    var nonInvertibleTx: boolean;
    var pixelHeight: int;
    var originX: float;
    var originY: float;
    var aaHint: int;
    var lcdRGBOrder: boolean;
    var lcdSubPixPos: boolean;
}

type sun.java2d.loops.XorDrawGlyphListAAANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.GraphicsPrimitiveProxy {
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.FillParallelogram {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.CompositeType {
    var DESC_ANY: java.lang.String;
    var DESC_XOR: java.lang.String;
    var DESC_CLEAR: java.lang.String;
    var DESC_SRC: java.lang.String;
    var DESC_DST: java.lang.String;
    var DESC_SRC_OVER: java.lang.String;
    var DESC_DST_OVER: java.lang.String;
    var DESC_SRC_IN: java.lang.String;
    var DESC_DST_IN: java.lang.String;
    var DESC_SRC_OUT: java.lang.String;
    var DESC_DST_OUT: java.lang.String;
    var DESC_SRC_ATOP: java.lang.String;
    var DESC_DST_ATOP: java.lang.String;
    var DESC_ALPHA_XOR: java.lang.String;
    var DESC_SRC_NO_EA: java.lang.String;
    var DESC_SRC_OVER_NO_EA: java.lang.String;
    var DESC_ANY_ALPHA: java.lang.String;
    var Any: sun.java2d.loops.CompositeType;
    var General: sun.java2d.loops.CompositeType;
    var AnyAlpha: sun.java2d.loops.CompositeType;
    var Xor: sun.java2d.loops.CompositeType;
    var Clear: sun.java2d.loops.CompositeType;
    var Src: sun.java2d.loops.CompositeType;
    var Dst: sun.java2d.loops.CompositeType;
    var SrcOver: sun.java2d.loops.CompositeType;
    var DstOver: sun.java2d.loops.CompositeType;
    var SrcIn: sun.java2d.loops.CompositeType;
    var DstIn: sun.java2d.loops.CompositeType;
    var SrcOut: sun.java2d.loops.CompositeType;
    var DstOut: sun.java2d.loops.CompositeType;
    var SrcAtop: sun.java2d.loops.CompositeType;
    var DstAtop: sun.java2d.loops.CompositeType;
    var AlphaXor: sun.java2d.loops.CompositeType;
    var SrcNoEa: sun.java2d.loops.CompositeType;
    var SrcOverNoEa: sun.java2d.loops.CompositeType;
    var OpaqueSrcOverNoEa: sun.java2d.loops.CompositeType;
}

type sun.java2d.loops.GraphicsPrimitive {
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.XorFillRectANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.SetFillPathANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.DrawGlyphListAA {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.loops.SetDrawLineANY {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.ReentrantContextProviderCLQ {
    var REF_HARD: int;
    var REF_SOFT: int;
    var REF_WEAK: int;
}

type sun.java2d.SunCompositeContext {
}

type sun.java2d.DestSurfaceProvider {
}

type sun.java2d.Disposer {
    var WEAK: int;
    var PHANTOM: int;
    var refType: int;
    var pollingQueue: boolean;
}

type sun.java2d.ReentrantContextProvider {
    var REF_HARD: int;
    var REF_SOFT: int;
    var REF_WEAK: int;
}

type sun.java2d.SurfaceData {
    var outlineTextRenderer: sun.java2d.pipe.TextPipe;
    var solidTextRenderer: sun.java2d.pipe.TextPipe;
    var aaTextRenderer: sun.java2d.pipe.TextPipe;
    var lcdTextRenderer: sun.java2d.pipe.TextPipe;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type sun.java2d.ReentrantContext {
}

type sun.java2d.opengl.CGLVolatileSurfaceManager {
}

type sun.java2d.opengl.OGLSurfaceToSwBlit {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLSurfaceToSurfaceTransform {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLGeneralBlit {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLMaskBlit {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLSurfaceToSurfaceBlit {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLSurfaceData {
    var FBOBJECT: int;
    var PF_INT_ARGB: int;
    var PF_INT_ARGB_PRE: int;
    var PF_INT_RGB: int;
    var PF_INT_RGBX: int;
    var PF_INT_BGR: int;
    var PF_INT_BGRX: int;
    var PF_USHORT_565_RGB: int;
    var PF_USHORT_555_RGB: int;
    var PF_USHORT_555_RGBX: int;
    var PF_BYTE_GRAY: int;
    var PF_USHORT_GRAY: int;
    var PF_3BYTE_BGR: int;
    var UNDEFINED: int;
    var WINDOW: int;
    var RT_PLAIN: int;
    var TEXTURE: int;
    var FLIP_BACKBUFFER: int;
    var RT_TEXTURE: int;
    var outlineTextRenderer: sun.java2d.pipe.TextPipe;
    var solidTextRenderer: sun.java2d.pipe.TextPipe;
    var aaTextRenderer: sun.java2d.pipe.TextPipe;
    var lcdTextRenderer: sun.java2d.pipe.TextPipe;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type sun.java2d.opengl.OGLSurfaceDataProxy {
    var UNCACHED: sun.java2d.SurfaceDataProxy;
}

type sun.java2d.opengl.OGLSwToTextureBlit {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLSurfaceToSurfaceScale {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLSwToSurfaceScale {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLTextureToSurfaceTransform {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLSwToSurfaceBlit {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLRenderQueue {
}

type sun.java2d.opengl.OGLSwToSurfaceTransform {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLAnyCompositeBlit {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLRTTSurfaceToSurfaceScale {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.CGLGraphicsConfig {
}

type sun.java2d.opengl.OGLRTTSurfaceToSurfaceTransform {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.CGLLayer {
}

type sun.java2d.opengl.OGLUtilities {
    var UNDEFINED: int;
    var WINDOW: int;
    var TEXTURE: int;
    var FLIP_BACKBUFFER: int;
    var FBOBJECT: int;
}

type sun.java2d.opengl.OGLPaints {
}

type sun.java2d.opengl.OGLBlitLoops {
}

type sun.java2d.opengl.OGLTextureToSurfaceBlit {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLTextRenderer {
}

type sun.java2d.opengl.OGLMaskFill {
    var methodSignature: java.lang.String;
    var fillPgramSignature: java.lang.String;
    var drawPgramSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLGraphicsConfig {
}

type sun.java2d.opengl.OGLBufImgOps {
}

type sun.java2d.opengl.OGLDrawImage {
}

type sun.java2d.opengl.OGLRTTSurfaceToSurfaceBlit {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.CGLSurfaceData {
    var FBOBJECT: int;
    var PF_INT_ARGB: int;
    var PF_INT_ARGB_PRE: int;
    var PF_INT_RGB: int;
    var PF_INT_RGBX: int;
    var PF_INT_BGR: int;
    var PF_INT_BGRX: int;
    var PF_USHORT_565_RGB: int;
    var PF_USHORT_555_RGB: int;
    var PF_USHORT_555_RGBX: int;
    var PF_BYTE_GRAY: int;
    var PF_USHORT_GRAY: int;
    var PF_3BYTE_BGR: int;
    var UNDEFINED: int;
    var WINDOW: int;
    var RT_PLAIN: int;
    var TEXTURE: int;
    var FLIP_BACKBUFFER: int;
    var RT_TEXTURE: int;
    var outlineTextRenderer: sun.java2d.pipe.TextPipe;
    var solidTextRenderer: sun.java2d.pipe.TextPipe;
    var aaTextRenderer: sun.java2d.pipe.TextPipe;
    var lcdTextRenderer: sun.java2d.pipe.TextPipe;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type sun.java2d.opengl.OGLContext {
    var NO_CONTEXT_FLAGS: int;
    var SRC_IS_OPAQUE: int;
    var USE_MASK: int;
}

type sun.java2d.opengl.OGLGeneralTransformedBlit {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLTextureToSurfaceScale {
    var methodSignature: java.lang.String;
    var primTypeID: int;
    var traceflags: int;
    var tracefile: java.lang.String;
    var traceout: java.io.PrintStream;
    var TRACELOG: int;
    var TRACETIMESTAMP: int;
    var TRACECOUNTS: int;
}

type sun.java2d.opengl.OGLRenderer {
}

type sun.awt.SunToolkit {
    var GRAB_EVENT_MASK: int;
    var MAX_BUTTONS_SUPPORTED: int;
    var DEFAULT_WAIT_TIME: int;
    var DESKTOPFONTHINTS: java.lang.String;
}

type sun.awt.HKSCS {
}

type sun.awt.AWTIcon64_java_icon16_png {
    var java_icon16_png: array<long>;
}

type sun.awt.AWTIcon64_security_icon_yellow16_png {
    var security_icon_yellow16_png: array<long>;
}

type sun.awt.KeyboardFocusManagerPeerProvider {
}

type sun.awt.SunHints {
    var INTKEY_RENDERING: int;
    var INTVAL_RENDER_DEFAULT: int;
    var INTVAL_RENDER_SPEED: int;
    var INTVAL_RENDER_QUALITY: int;
    var INTKEY_ANTIALIASING: int;
    var INTVAL_ANTIALIAS_DEFAULT: int;
    var INTVAL_ANTIALIAS_OFF: int;
    var INTVAL_ANTIALIAS_ON: int;
    var INTKEY_TEXT_ANTIALIASING: int;
    var INTVAL_TEXT_ANTIALIAS_DEFAULT: int;
    var INTVAL_TEXT_ANTIALIAS_OFF: int;
    var INTVAL_TEXT_ANTIALIAS_ON: int;
    var INTVAL_TEXT_ANTIALIAS_GASP: int;
    var INTVAL_TEXT_ANTIALIAS_LCD_HRGB: int;
    var INTVAL_TEXT_ANTIALIAS_LCD_HBGR: int;
    var INTVAL_TEXT_ANTIALIAS_LCD_VRGB: int;
    var INTVAL_TEXT_ANTIALIAS_LCD_VBGR: int;
    var INTKEY_FRACTIONALMETRICS: int;
    var INTVAL_FRACTIONALMETRICS_DEFAULT: int;
    var INTVAL_FRACTIONALMETRICS_OFF: int;
    var INTVAL_FRACTIONALMETRICS_ON: int;
    var INTKEY_DITHERING: int;
    var INTVAL_DITHER_DEFAULT: int;
    var INTVAL_DITHER_DISABLE: int;
    var INTVAL_DITHER_ENABLE: int;
    var INTKEY_INTERPOLATION: int;
    var INTVAL_INTERPOLATION_NEAREST_NEIGHBOR: int;
    var INTVAL_INTERPOLATION_BILINEAR: int;
    var INTVAL_INTERPOLATION_BICUBIC: int;
    var INTKEY_ALPHA_INTERPOLATION: int;
    var INTVAL_ALPHA_INTERPOLATION_DEFAULT: int;
    var INTVAL_ALPHA_INTERPOLATION_SPEED: int;
    var INTVAL_ALPHA_INTERPOLATION_QUALITY: int;
    var INTKEY_COLOR_RENDERING: int;
    var INTVAL_COLOR_RENDER_DEFAULT: int;
    var INTVAL_COLOR_RENDER_SPEED: int;
    var INTVAL_COLOR_RENDER_QUALITY: int;
    var INTKEY_STROKE_CONTROL: int;
    var INTVAL_STROKE_DEFAULT: int;
    var INTVAL_STROKE_NORMALIZE: int;
    var INTVAL_STROKE_PURE: int;
    var INTKEY_RESOLUTION_VARIANT: int;
    var INTVAL_RESOLUTION_VARIANT_DEFAULT: int;
    var INTVAL_RESOLUTION_VARIANT_BASE: int;
    var INTVAL_RESOLUTION_VARIANT_SIZE_FIT: int;
    var INTVAL_RESOLUTION_VARIANT_DPI_FIT: int;
    var INTKEY_AATEXT_LCD_CONTRAST: int;
    var VALUE_RENDER_SPEED: java.lang.Object;
    var VALUE_RENDER_QUALITY: java.lang.Object;
    var VALUE_RENDER_DEFAULT: java.lang.Object;
    var VALUE_ANTIALIAS_ON: java.lang.Object;
    var VALUE_ANTIALIAS_OFF: java.lang.Object;
    var VALUE_ANTIALIAS_DEFAULT: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_ON: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_OFF: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_DEFAULT: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_GASP: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_LCD_HRGB: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_LCD_HBGR: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_LCD_VRGB: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_LCD_VBGR: java.lang.Object;
    var VALUE_FRACTIONALMETRICS_ON: java.lang.Object;
    var VALUE_FRACTIONALMETRICS_OFF: java.lang.Object;
    var VALUE_FRACTIONALMETRICS_DEFAULT: java.lang.Object;
    var VALUE_DITHER_ENABLE: java.lang.Object;
    var VALUE_DITHER_DISABLE: java.lang.Object;
    var VALUE_DITHER_DEFAULT: java.lang.Object;
    var VALUE_INTERPOLATION_NEAREST_NEIGHBOR: java.lang.Object;
    var VALUE_INTERPOLATION_BILINEAR: java.lang.Object;
    var VALUE_INTERPOLATION_BICUBIC: java.lang.Object;
    var VALUE_ALPHA_INTERPOLATION_SPEED: java.lang.Object;
    var VALUE_ALPHA_INTERPOLATION_QUALITY: java.lang.Object;
    var VALUE_ALPHA_INTERPOLATION_DEFAULT: java.lang.Object;
    var VALUE_COLOR_RENDER_SPEED: java.lang.Object;
    var VALUE_COLOR_RENDER_QUALITY: java.lang.Object;
    var VALUE_COLOR_RENDER_DEFAULT: java.lang.Object;
    var VALUE_STROKE_DEFAULT: java.lang.Object;
    var VALUE_STROKE_NORMALIZE: java.lang.Object;
    var VALUE_STROKE_PURE: java.lang.Object;
    var VALUE_RESOLUTION_VARIANT_DEFAULT: java.lang.Object;
    var VALUE_RESOLUTION_VARIANT_BASE: java.lang.Object;
    var VALUE_RESOLUTION_VARIANT_SIZE_FIT: java.lang.Object;
    var VALUE_RESOLUTION_VARIANT_DPI_FIT: java.lang.Object;
}

type sun.awt.AWTCharset {
}

type sun.awt.EventQueueItem {
    var event: java.awt.AWTEvent;
    var next: sun.awt.EventQueueItem;
}

type sun.awt.AWTIcon64_security_icon_bw24_png {
    var security_icon_bw24_png: array<long>;
}

type sun.awt.HeadlessToolkit {
}

type sun.awt.AWTIcon32_security_icon_yellow24_png {
    var security_icon_yellow24_png: array<int>;
}

type sun.awt.AWTIcon32_java_icon16_png {
    var java_icon16_png: array<int>;
}

type sun.awt.NativeLibLoader {
}

type sun.awt.LightweightFrame {
    var DEFAULT_CURSOR: int;
    var CROSSHAIR_CURSOR: int;
    var TEXT_CURSOR: int;
    var WAIT_CURSOR: int;
    var SW_RESIZE_CURSOR: int;
    var SE_RESIZE_CURSOR: int;
    var NW_RESIZE_CURSOR: int;
    var NE_RESIZE_CURSOR: int;
    var N_RESIZE_CURSOR: int;
    var S_RESIZE_CURSOR: int;
    var W_RESIZE_CURSOR: int;
    var E_RESIZE_CURSOR: int;
    var HAND_CURSOR: int;
    var MOVE_CURSOR: int;
    var NORMAL: int;
    var ICONIFIED: int;
    var MAXIMIZED_HORIZ: int;
    var MAXIMIZED_VERT: int;
    var MAXIMIZED_BOTH: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.awt.AWTIcon64_security_icon_interim48_png {
    var security_icon_interim48_png: array<long>;
}

type sun.awt.util.IdentityLinkedList {
}

type sun.awt.util.PerformanceLogger {
}

type sun.awt.util.ThreadGroupUtils {
}

type sun.awt.util.IdentityArrayList {
}

type sun.awt.AWTIcon64_security_icon_interim32_png {
    var security_icon_interim32_png: array<long>;
}

type sun.awt.AWTIcon32_security_icon_interim48_png {
    var security_icon_interim48_png: array<int>;
}

type sun.awt.AWTIcon32_security_icon_interim32_png {
    var security_icon_interim32_png: array<int>;
}

type sun.awt.CausedFocusEvent {
    var FOCUS_FIRST: int;
    var FOCUS_LAST: int;
    var FOCUS_GAINED: int;
    var FOCUS_LOST: int;
    var COMPONENT_FIRST: int;
    var COMPONENT_LAST: int;
    var COMPONENT_MOVED: int;
    var COMPONENT_RESIZED: int;
    var COMPONENT_SHOWN: int;
    var COMPONENT_HIDDEN: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type sun.awt.AWTIcon64_security_icon_bw16_png {
    var security_icon_bw16_png: array<long>;
}

type sun.awt.shell.ShellFolder {
    var COLUMN_NAME: java.lang.String;
    var COLUMN_SIZE: java.lang.String;
    var COLUMN_DATE: java.lang.String;
    var separatorChar: char;
    var separator: java.lang.String;
    var pathSeparatorChar: char;
    var pathSeparator: java.lang.String;
}

type sun.awt.shell.ShellFolderColumnInfo {
}

type sun.awt.shell.ShellFolderManager {
}

type sun.awt.shell.DefaultShellFolder {
    var COLUMN_NAME: java.lang.String;
    var COLUMN_SIZE: java.lang.String;
    var COLUMN_DATE: java.lang.String;
    var separatorChar: char;
    var separator: java.lang.String;
    var pathSeparatorChar: char;
    var pathSeparator: java.lang.String;
}

type sun.awt.ExtendedKeyCodes {
}

type sun.awt.IconInfo {
}

type sun.awt.AWTIcon32_java_icon24_png {
    var java_icon24_png: array<int>;
}

type sun.awt.dnd.SunDragSourceContextPeer {
}

type sun.awt.dnd.SunDropTargetContextPeer {
    var DISPATCH_SYNC: boolean;
}

type sun.awt.dnd.SunDropTargetEvent {
    var MOUSE_DROPPED: int;
    var MOUSE_FIRST: int;
    var MOUSE_LAST: int;
    var MOUSE_CLICKED: int;
    var MOUSE_PRESSED: int;
    var MOUSE_RELEASED: int;
    var MOUSE_MOVED: int;
    var MOUSE_ENTERED: int;
    var MOUSE_EXITED: int;
    var MOUSE_DRAGGED: int;
    var MOUSE_WHEEL: int;
    var NOBUTTON: int;
    var BUTTON1: int;
    var BUTTON2: int;
    var BUTTON3: int;
    var SHIFT_MASK: int;
    var CTRL_MASK: int;
    var META_MASK: int;
    var ALT_MASK: int;
    var ALT_GRAPH_MASK: int;
    var BUTTON1_MASK: int;
    var BUTTON2_MASK: int;
    var BUTTON3_MASK: int;
    var SHIFT_DOWN_MASK: int;
    var CTRL_DOWN_MASK: int;
    var META_DOWN_MASK: int;
    var ALT_DOWN_MASK: int;
    var BUTTON1_DOWN_MASK: int;
    var BUTTON2_DOWN_MASK: int;
    var BUTTON3_DOWN_MASK: int;
    var ALT_GRAPH_DOWN_MASK: int;
    var COMPONENT_FIRST: int;
    var COMPONENT_LAST: int;
    var COMPONENT_MOVED: int;
    var COMPONENT_RESIZED: int;
    var COMPONENT_SHOWN: int;
    var COMPONENT_HIDDEN: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type sun.awt.AWTIcon32_security_icon_yellow16_png {
    var security_icon_yellow16_png: array<int>;
}

type sun.awt.ConstrainableGraphics {
}

type sun.awt.OSInfo {
}

type sun.awt.resources.awt_it {
}

type sun.awt.resources.awt_ko {
}

type sun.awt.resources.awt {
}

type sun.awt.resources.awt_sv {
}

type sun.awt.resources.awt_ja {
}

type sun.awt.resources.awt_de {
}

type sun.awt.resources.awt_es {
}

type sun.awt.resources.awt_zh_HK {
}

type sun.awt.resources.awt_zh_TW {
}

type sun.awt.resources.awt_fr {
}

type sun.awt.resources.awt_zh_CN {
}

type sun.awt.resources.awtosx {
}

type sun.awt.resources.awt_pt_BR {
}

type sun.awt.FontDescriptor {
    var encoder: java.nio.charset.CharsetEncoder;
    var unicodeEncoder: java.nio.charset.CharsetEncoder;
}

type sun.awt.DebugSettings {
}

type sun.awt.PlatformFont {
}

type sun.awt.AWTIcon32_security_icon_bw48_png {
    var security_icon_bw48_png: array<int>;
}

type sun.awt.CGraphicsEnvironment {
}

type sun.awt.AWTIcon32_security_icon_bw32_png {
    var security_icon_bw32_png: array<int>;
}

type sun.awt.NullComponentPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.awt.RepaintArea {
}

type sun.awt.AWTIcon64_java_icon24_png {
    var java_icon24_png: array<long>;
}

type sun.awt.CustomCursor {
    var DEFAULT_CURSOR: int;
    var CROSSHAIR_CURSOR: int;
    var TEXT_CURSOR: int;
    var WAIT_CURSOR: int;
    var SW_RESIZE_CURSOR: int;
    var SE_RESIZE_CURSOR: int;
    var NW_RESIZE_CURSOR: int;
    var NE_RESIZE_CURSOR: int;
    var N_RESIZE_CURSOR: int;
    var S_RESIZE_CURSOR: int;
    var W_RESIZE_CURSOR: int;
    var E_RESIZE_CURSOR: int;
    var HAND_CURSOR: int;
    var MOVE_CURSOR: int;
    var CUSTOM_CURSOR: int;
}

type sun.awt.AWTIcon64_security_icon_yellow24_png {
    var security_icon_yellow24_png: array<long>;
}

type sun.awt.CGraphicsDevice {
    var TYPE_RASTER_SCREEN: int;
    var TYPE_PRINTER: int;
    var TYPE_IMAGE_BUFFER: int;
}

type sun.awt.WeakIdentityHashMap {
}

type sun.awt.www.content.MultimediaContentHandlers {
}

type sun.awt.www.content.image.x_xbitmap {
}

type sun.awt.www.content.image.gif {
}

type sun.awt.www.content.image.x_xpixmap {
}

type sun.awt.www.content.image.png {
}

type sun.awt.www.content.image.jpeg {
}

type sun.awt.www.content.audio.x_wav {
}

type sun.awt.www.content.audio.wav {
}

type sun.awt.www.content.audio.basic {
}

type sun.awt.www.content.audio.aiff {
}

type sun.awt.www.content.audio.x_aiff {
}

type sun.awt.image.ImageCache {
}

type sun.awt.image.URLImageSource {
}

type sun.awt.image.ImageRepresentation {
    var RANDOMPIXELORDER: int;
    var TOPDOWNLEFTRIGHT: int;
    var COMPLETESCANLINES: int;
    var SINGLEPASS: int;
    var SINGLEFRAME: int;
    var IMAGEERROR: int;
    var SINGLEFRAMEDONE: int;
    var STATICIMAGEDONE: int;
    var IMAGEABORTED: int;
}

type sun.awt.image.BufferedImageGraphicsConfig {
}

type sun.awt.image.FileImageSource {
}

type sun.awt.image.NativeLibLoader {
}

type sun.awt.image.ImageWatched {
}

type sun.awt.image.ImageAccessException {
}

type sun.awt.image.BufImgVolatileSurfaceManager {
}

type sun.awt.image.BufImgSurfaceManager {
}

type sun.awt.image.ImageDecoder {
}

type sun.awt.image.SunWritableRaster {
}

type sun.awt.image.FetcherInfo {
}

type sun.awt.image.ToolkitImage {
    var UndefinedProperty: java.lang.Object;
    var SCALE_DEFAULT: int;
    var SCALE_FAST: int;
    var SCALE_SMOOTH: int;
    var SCALE_REPLICATE: int;
    var SCALE_AREA_AVERAGING: int;
}

type sun.awt.image.BufferedImageDevice {
    var TYPE_RASTER_SCREEN: int;
    var TYPE_PRINTER: int;
    var TYPE_IMAGE_BUFFER: int;
}

type sun.awt.image.ImageFetchable {
}

type sun.awt.image.BufImgSurfaceData {
    var outlineTextRenderer: sun.java2d.pipe.TextPipe;
    var solidTextRenderer: sun.java2d.pipe.TextPipe;
    var aaTextRenderer: sun.java2d.pipe.TextPipe;
    var lcdTextRenderer: sun.java2d.pipe.TextPipe;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type sun.awt.image.ShortBandedRaster {
}

type sun.awt.image.GifImageDecoder {
}

type sun.awt.image.WritableRasterNative {
}

type sun.awt.image.OffScreenImageSource {
}

type sun.awt.image.IntegerComponentRaster {
}

type sun.awt.image.PixelConverter {
    var instance: sun.awt.image.PixelConverter;
}

type sun.awt.image.ByteInterleavedRaster {
}

type sun.awt.image.ImagingLib {
}

type sun.awt.image.ImageFormatException {
}

type sun.awt.image.BytePackedRaster {
}

type sun.awt.image.OffScreenImage {
    var TYPE_CUSTOM: int;
    var TYPE_INT_RGB: int;
    var TYPE_INT_ARGB: int;
    var TYPE_INT_ARGB_PRE: int;
    var TYPE_INT_BGR: int;
    var TYPE_3BYTE_BGR: int;
    var TYPE_4BYTE_ABGR: int;
    var TYPE_4BYTE_ABGR_PRE: int;
    var TYPE_USHORT_565_RGB: int;
    var TYPE_USHORT_555_RGB: int;
    var TYPE_BYTE_GRAY: int;
    var TYPE_USHORT_GRAY: int;
    var TYPE_BYTE_BINARY: int;
    var TYPE_BYTE_INDEXED: int;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
    var UndefinedProperty: java.lang.Object;
    var SCALE_DEFAULT: int;
    var SCALE_FAST: int;
    var SCALE_SMOOTH: int;
    var SCALE_REPLICATE: int;
    var SCALE_AREA_AVERAGING: int;
}

type sun.awt.image.ByteComponentRaster {
}

type sun.awt.image.VolatileSurfaceManager {
}

type sun.awt.image.SunVolatileImage {
    var IMAGE_OK: int;
    var IMAGE_RESTORED: int;
    var IMAGE_INCOMPATIBLE: int;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
    var UndefinedProperty: java.lang.Object;
    var SCALE_DEFAULT: int;
    var SCALE_FAST: int;
    var SCALE_SMOOTH: int;
    var SCALE_REPLICATE: int;
    var SCALE_AREA_AVERAGING: int;
}

type sun.awt.image.GifFrame {
}

type sun.awt.image.PNGFilterInputStream {
    var underlyingInputStream: java.io.InputStream;
}

type sun.awt.image.VSyncedBSManager {
}

type sun.awt.image.ShortInterleavedRaster {
}

type sun.awt.image.MultiResolutionToolkitImage {
    var UndefinedProperty: java.lang.Object;
    var SCALE_DEFAULT: int;
    var SCALE_FAST: int;
    var SCALE_SMOOTH: int;
    var SCALE_REPLICATE: int;
    var SCALE_AREA_AVERAGING: int;
}

type sun.awt.image.MultiResolutionCachedImage {
    var UndefinedProperty: java.lang.Object;
    var SCALE_DEFAULT: int;
    var SCALE_FAST: int;
    var SCALE_SMOOTH: int;
    var SCALE_REPLICATE: int;
    var SCALE_AREA_AVERAGING: int;
}

type sun.awt.image.InputStreamImageSource {
}

type sun.awt.image.SurfaceManager {
}

type sun.awt.image.XbmImageDecoder {
}

type sun.awt.image.ByteBandedRaster {
}

type sun.awt.image.ShortComponentRaster {
}

type sun.awt.image.DataBufferNative {
    var TYPE_BYTE: int;
    var TYPE_USHORT: int;
    var TYPE_SHORT: int;
    var TYPE_INT: int;
    var TYPE_FLOAT: int;
    var TYPE_DOUBLE: int;
    var TYPE_UNDEFINED: int;
}

type sun.awt.image.ByteArrayImageSource {
}

type sun.awt.image.ImageFetcher {
    var MIN_PRIORITY: int;
    var NORM_PRIORITY: int;
    var MAX_PRIORITY: int;
}

type sun.awt.image.JPEGImageDecoder {
}

type sun.awt.image.PNGImageDecoder {
}

type sun.awt.image.IntegerInterleavedRaster {
}

type sun.awt.image.ImageConsumerQueue {
}

type sun.awt.datatransfer.DataTransferer {
    var javaTextEncodingFlavor: `<UNRESOLVED_TYPE>`;
}

type sun.awt.datatransfer.ClassLoaderObjectInputStream {
    var STREAM_MAGIC: short;
    var STREAM_VERSION: short;
    var TC_BASE: byte;
    var TC_NULL: byte;
    var TC_REFERENCE: byte;
    var TC_CLASSDESC: byte;
    var TC_OBJECT: byte;
    var TC_STRING: byte;
    var TC_ARRAY: byte;
    var TC_CLASS: byte;
    var TC_BLOCKDATA: byte;
    var TC_ENDBLOCKDATA: byte;
    var TC_RESET: byte;
    var TC_BLOCKDATALONG: byte;
    var TC_EXCEPTION: byte;
    var TC_LONGSTRING: byte;
    var TC_PROXYCLASSDESC: byte;
    var TC_ENUM: byte;
    var TC_MAX: byte;
    var baseWireHandle: int;
    var SC_WRITE_METHOD: byte;
    var SC_BLOCK_DATA: byte;
    var SC_SERIALIZABLE: byte;
    var SC_EXTERNALIZABLE: byte;
    var SC_ENUM: byte;
    var SUBSTITUTION_PERMISSION: java.io.SerializablePermission;
    var SUBCLASS_IMPLEMENTATION_PERMISSION: java.io.SerializablePermission;
    var SERIAL_FILTER_PERMISSION: java.io.SerializablePermission;
    var PROTOCOL_VERSION_1: int;
    var PROTOCOL_VERSION_2: int;
}

type sun.awt.datatransfer.TransferableProxy {
}

type sun.awt.datatransfer.ToolkitThreadBlockedHandler {
}

type sun.awt.datatransfer.SunClipboard {
}

type sun.awt.datatransfer.ClipboardTransferable {
}

type sun.awt.datatransfer.ClassLoaderObjectOutputStream {
    var STREAM_MAGIC: short;
    var STREAM_VERSION: short;
    var TC_BASE: byte;
    var TC_NULL: byte;
    var TC_REFERENCE: byte;
    var TC_CLASSDESC: byte;
    var TC_OBJECT: byte;
    var TC_STRING: byte;
    var TC_ARRAY: byte;
    var TC_CLASS: byte;
    var TC_BLOCKDATA: byte;
    var TC_ENDBLOCKDATA: byte;
    var TC_RESET: byte;
    var TC_BLOCKDATALONG: byte;
    var TC_EXCEPTION: byte;
    var TC_LONGSTRING: byte;
    var TC_PROXYCLASSDESC: byte;
    var TC_ENUM: byte;
    var TC_MAX: byte;
    var baseWireHandle: int;
    var SC_WRITE_METHOD: byte;
    var SC_BLOCK_DATA: byte;
    var SC_SERIALIZABLE: byte;
    var SC_EXTERNALIZABLE: byte;
    var SC_ENUM: byte;
    var SUBSTITUTION_PERMISSION: java.io.SerializablePermission;
    var SUBCLASS_IMPLEMENTATION_PERMISSION: java.io.SerializablePermission;
    var SERIAL_FILTER_PERMISSION: java.io.SerializablePermission;
    var PROTOCOL_VERSION_1: int;
    var PROTOCOL_VERSION_2: int;
}

type sun.awt.datatransfer.DesktopDatatransferServiceImpl {
}

type sun.awt.PaintEventDispatcher {
}

type sun.awt.TimedWindowEvent {
    var WINDOW_FIRST: int;
    var WINDOW_OPENED: int;
    var WINDOW_CLOSING: int;
    var WINDOW_CLOSED: int;
    var WINDOW_ICONIFIED: int;
    var WINDOW_DEICONIFIED: int;
    var WINDOW_ACTIVATED: int;
    var WINDOW_DEACTIVATED: int;
    var WINDOW_GAINED_FOCUS: int;
    var WINDOW_LOST_FOCUS: int;
    var WINDOW_STATE_CHANGED: int;
    var WINDOW_LAST: int;
    var COMPONENT_FIRST: int;
    var COMPONENT_LAST: int;
    var COMPONENT_MOVED: int;
    var COMPONENT_RESIZED: int;
    var COMPONENT_SHOWN: int;
    var COMPONENT_HIDDEN: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type sun.awt.ModalExclude {
}

type sun.awt.ComponentFactory {
}

type sun.awt.Mutex {
}

type sun.awt.FontConfiguration {
    var verbose: boolean;
}

type sun.awt.ScrollPaneWheelScroller {
}

type sun.awt.EmbeddedFrame {
    var DEFAULT_CURSOR: int;
    var CROSSHAIR_CURSOR: int;
    var TEXT_CURSOR: int;
    var WAIT_CURSOR: int;
    var SW_RESIZE_CURSOR: int;
    var SE_RESIZE_CURSOR: int;
    var NW_RESIZE_CURSOR: int;
    var NE_RESIZE_CURSOR: int;
    var N_RESIZE_CURSOR: int;
    var S_RESIZE_CURSOR: int;
    var W_RESIZE_CURSOR: int;
    var E_RESIZE_CURSOR: int;
    var HAND_CURSOR: int;
    var MOVE_CURSOR: int;
    var NORMAL: int;
    var ICONIFIED: int;
    var MAXIMIZED_HORIZ: int;
    var MAXIMIZED_VERT: int;
    var MAXIMIZED_BOTH: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.awt.geom.Order2 {
    var INCREASING: int;
    var DECREASING: int;
    var RECT_INTERSECTS: int;
    var TMIN: double;
}

type sun.awt.geom.Curve {
    var INCREASING: int;
    var DECREASING: int;
    var RECT_INTERSECTS: int;
    var TMIN: double;
}

type sun.awt.geom.Order0 {
    var INCREASING: int;
    var DECREASING: int;
    var RECT_INTERSECTS: int;
    var TMIN: double;
}

type sun.awt.geom.Edge {
}

type sun.awt.geom.Order1 {
    var INCREASING: int;
    var DECREASING: int;
    var RECT_INTERSECTS: int;
    var TMIN: double;
}

type sun.awt.geom.Order3 {
    var INCREASING: int;
    var DECREASING: int;
    var RECT_INTERSECTS: int;
    var TMIN: double;
}

type sun.awt.geom.Crossings {
    var debug: boolean;
}

type sun.awt.geom.ChainEnd {
}

type sun.awt.geom.CurveLink {
}

type sun.awt.geom.PathConsumer2D {
}

type sun.awt.geom.AreaOp {
    var CTAG_LEFT: int;
    var CTAG_RIGHT: int;
    var ETAG_IGNORE: int;
    var ETAG_ENTER: int;
    var ETAG_EXIT: int;
    var RSTAG_INSIDE: int;
    var RSTAG_OUTSIDE: int;
}

type sun.awt.InputMethodSupport {
}

type sun.awt.KeyboardFocusManagerPeerImpl {
    var SNFH_FAILURE: int;
    var SNFH_SUCCESS_HANDLED: int;
    var SNFH_SUCCESS_PROCEED: int;
}

type sun.awt.WindowIDProvider {
}

type sun.awt.AWTIcon32_security_icon_yellow48_png {
    var security_icon_yellow48_png: array<int>;
}

type sun.awt.ModalityEvent {
    var MODALITY_PUSHED: int;
    var MODALITY_POPPED: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type sun.awt.AWTIcon32_security_icon_yellow32_png {
    var security_icon_yellow32_png: array<int>;
}

type sun.awt.MostRecentKeyValue {
}

type sun.awt.SoftCache {
}

type sun.awt.FullScreenCapable {
}

type sun.awt.AWTIcon64_security_icon_bw48_png {
    var security_icon_bw48_png: array<long>;
}

type sun.awt.AWTIcon64_security_icon_bw32_png {
    var security_icon_bw32_png: array<long>;
}

type sun.awt.AWTIcon32_security_icon_bw16_png {
    var security_icon_bw16_png: array<int>;
}

type sun.awt.LightweightPeerHolder {
}

type sun.awt.AWTIcon32_security_icon_interim24_png {
    var security_icon_interim24_png: array<int>;
}

type sun.awt.AWTIcon64_security_icon_interim24_png {
    var security_icon_interim24_png: array<long>;
}

type sun.awt.im.SimpleInputMethodWindow {
    var DEFAULT_CURSOR: int;
    var CROSSHAIR_CURSOR: int;
    var TEXT_CURSOR: int;
    var WAIT_CURSOR: int;
    var SW_RESIZE_CURSOR: int;
    var SE_RESIZE_CURSOR: int;
    var NW_RESIZE_CURSOR: int;
    var NE_RESIZE_CURSOR: int;
    var N_RESIZE_CURSOR: int;
    var S_RESIZE_CURSOR: int;
    var W_RESIZE_CURSOR: int;
    var E_RESIZE_CURSOR: int;
    var HAND_CURSOR: int;
    var MOVE_CURSOR: int;
    var NORMAL: int;
    var ICONIFIED: int;
    var MAXIMIZED_HORIZ: int;
    var MAXIMIZED_VERT: int;
    var MAXIMIZED_BOTH: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.awt.im.InputContext {
}

type sun.awt.im.AWTInputMethodPopupMenu {
}

type sun.awt.im.InputMethodManager {
}

type sun.awt.im.CompositionArea {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.awt.im.InputMethodJFrame {
    var DO_NOTHING_ON_CLOSE: int;
    var HIDE_ON_CLOSE: int;
    var DISPOSE_ON_CLOSE: int;
    var EXIT_ON_CLOSE: int;
    var DEFAULT_CURSOR: int;
    var CROSSHAIR_CURSOR: int;
    var TEXT_CURSOR: int;
    var WAIT_CURSOR: int;
    var SW_RESIZE_CURSOR: int;
    var SE_RESIZE_CURSOR: int;
    var NW_RESIZE_CURSOR: int;
    var NE_RESIZE_CURSOR: int;
    var N_RESIZE_CURSOR: int;
    var S_RESIZE_CURSOR: int;
    var W_RESIZE_CURSOR: int;
    var E_RESIZE_CURSOR: int;
    var HAND_CURSOR: int;
    var MOVE_CURSOR: int;
    var NORMAL: int;
    var ICONIFIED: int;
    var MAXIMIZED_HORIZ: int;
    var MAXIMIZED_VERT: int;
    var MAXIMIZED_BOTH: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.awt.im.JInputMethodPopupMenu {
}

type sun.awt.im.InputMethodLocator {
}

type sun.awt.im.InputMethodContext {
}

type sun.awt.im.ExecutableInputMethodManager {
}

type sun.awt.im.CompositionAreaHandler {
}

type sun.awt.im.InputMethodPopupMenu {
}

type sun.awt.im.InputMethodWindow {
}

type sun.awt.im.InputMethodAdapter {
}

type sun.awt.AWTIcon32_java_icon48_png {
    var java_icon48_png: array<int>;
}

type sun.awt.AWTPermissions {
    var TOPLEVEL_WINDOW_PERMISSION: java.awt.AWTPermission;
    var ACCESS_CLIPBOARD_PERMISSION: java.awt.AWTPermission;
    var CHECK_AWT_EVENTQUEUE_PERMISSION: java.awt.AWTPermission;
    var TOOLKIT_MODALITY_PERMISSION: java.awt.AWTPermission;
    var READ_DISPLAY_PIXELS_PERMISSION: java.awt.AWTPermission;
    var CREATE_ROBOT_PERMISSION: java.awt.AWTPermission;
    var WATCH_MOUSE_PERMISSION: java.awt.AWTPermission;
    var SET_WINDOW_ALWAYS_ON_TOP_PERMISSION: java.awt.AWTPermission;
    var ALL_AWT_EVENTS_PERMISSION: java.awt.AWTPermission;
    var ACCESS_SYSTEM_TRAY_PERMISSION: java.awt.AWTPermission;
}

type sun.awt.PlatformGraphicsInfo {
}

type sun.awt.AWTIcon32_java_icon32_png {
    var java_icon32_png: array<int>;
}

type sun.awt.ModalityListener {
}

type sun.awt.SunDisplayChanger {
}

type sun.awt.AppContext {
    var EVENT_QUEUE_KEY: java.lang.Object;
    var EVENT_QUEUE_LOCK_KEY: java.lang.Object;
    var EVENT_QUEUE_COND_KEY: java.lang.Object;
    var DISPOSED_PROPERTY_NAME: java.lang.String;
    var GUI_DISPOSED: java.lang.String;
}

type sun.awt.CGraphicsConfig {
}

type sun.awt.DisplayChangedListener {
}

type sun.awt.GlobalCursorManager {
}

type sun.awt.AWTIcon32_security_icon_interim16_png {
    var security_icon_interim16_png: array<int>;
}

type sun.awt.AWTIcon32_security_icon_bw24_png {
    var security_icon_bw24_png: array<int>;
}

type sun.awt.AWTAccessor {
}

type sun.awt.RequestFocusController {
}

type sun.awt.AWTAutoShutdown {
}

type sun.awt.AWTIcon64_security_icon_interim16_png {
    var security_icon_interim16_png: array<long>;
}

type sun.awt.PeerEvent {
    var PRIORITY_EVENT: long;
    var ULTIMATE_PRIORITY_EVENT: long;
    var LOW_PRIORITY_EVENT: long;
    var INVOCATION_FIRST: int;
    var INVOCATION_DEFAULT: int;
    var INVOCATION_LAST: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type sun.awt.AWTIcon64_security_icon_yellow32_png {
    var security_icon_yellow32_png: array<long>;
}

type sun.awt.AWTIcon64_java_icon48_png {
    var java_icon48_png: array<long>;
}

type sun.awt.AWTIcon64_security_icon_yellow48_png {
    var security_icon_yellow48_png: array<long>;
}

type sun.awt.AWTIcon64_java_icon32_png {
    var java_icon32_png: array<long>;
}

type sun.awt.FwDispatcher {
}

type sun.awt.PostEventQueue {
}

type sun.awt.event.IgnorePaintEvent {
    var PAINT_FIRST: int;
    var PAINT_LAST: int;
    var PAINT: int;
    var UPDATE: int;
    var COMPONENT_FIRST: int;
    var COMPONENT_LAST: int;
    var COMPONENT_MOVED: int;
    var COMPONENT_RESIZED: int;
    var COMPONENT_SHOWN: int;
    var COMPONENT_HIDDEN: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type sun.awt.SunGraphicsCallback {
    var HEAVYWEIGHTS: int;
    var LIGHTWEIGHTS: int;
    var TWO_PASSES: int;
}

type sun.awt.Symbol {
}

type sun.awt.CharsetString {
    var charsetChars: array<char>;
    var offset: int;
    var length: int;
    var fontDescriptor: sun.awt.FontDescriptor;
}

type sun.awt.UngrabEvent {
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type sun.awt.OverrideNativeWindowHandle {
}

type sun.awt.SubRegionShowable {
}

type sun.font.Underline {
}

type sun.font.NativeStrike {
}

type sun.font.CompositeGlyphMapper {
    var SLOTMASK: int;
    var GLYPHMASK: int;
    var NBLOCKS: int;
    var BLOCKSZ: int;
    var MAXUNICODE: int;
    var HI_SURROGATE_START: int;
    var HI_SURROGATE_END: int;
    var LO_SURROGATE_START: int;
    var LO_SURROGATE_END: int;
    var VS_START: int;
    var VS_END: int;
    var VSS_START: int;
    var VSS_END: int;
    var UNINITIALIZED_GLYPH: int;
    var INVISIBLE_GLYPH_ID: int;
    var INVISIBLE_GLYPHS: int;
}

type sun.font.CharSequenceCodePointIterator {
    var DONE: int;
}

type sun.font.NativeFont {
    var FONT_CONFIG_RANK: int;
    var JRE_RANK: int;
    var TTF_RANK: int;
    var TYPE1_RANK: int;
    var NATIVE_RANK: int;
    var UNKNOWN_RANK: int;
    var DEFAULT_RANK: int;
    var handle: sun.font.Font2DHandle;
    var FWIDTH_NORMAL: int;
    var FWEIGHT_NORMAL: int;
    var FWEIGHT_BOLD: int;
}

type sun.font.FontManager {
    var NO_FALLBACK: int;
    var PHYSICAL_FALLBACK: int;
    var LOGICAL_FALLBACK: int;
}

type sun.font.CFontManager {
    var FONTFORMAT_NONE: int;
    var FONTFORMAT_TRUETYPE: int;
    var FONTFORMAT_TYPE1: int;
    var FONTFORMAT_TTC: int;
    var FONTFORMAT_COMPOSITE: int;
    var FONTFORMAT_NATIVE: int;
    var jreLibDirName: java.lang.String;
    var jreFontDirName: java.lang.String;
    var noType1Font: boolean;
    var NO_FALLBACK: int;
    var PHYSICAL_FALLBACK: int;
    var LOGICAL_FALLBACK: int;
}

type sun.font.FontStrikeDisposer {
}

type sun.font.FileFontStrike {
}

type sun.font.TextLineComponent {
    var LEFT_TO_RIGHT: int;
    var RIGHT_TO_LEFT: int;
    var UNCHANGED: int;
}

type sun.font.FontFamily {
}

type sun.font.CharToGlyphMapper {
    var HI_SURROGATE_START: int;
    var HI_SURROGATE_END: int;
    var LO_SURROGATE_START: int;
    var LO_SURROGATE_END: int;
    var VS_START: int;
    var VS_END: int;
    var VSS_START: int;
    var VSS_END: int;
    var UNINITIALIZED_GLYPH: int;
    var INVISIBLE_GLYPH_ID: int;
    var INVISIBLE_GLYPHS: int;
}

type sun.font.StrikeMetrics {
    var ascentX: float;
    var ascentY: float;
    var descentX: float;
    var descentY: float;
    var baselineX: float;
    var baselineY: float;
    var leadingX: float;
    var leadingY: float;
    var maxAdvanceX: float;
    var maxAdvanceY: float;
}

type sun.font.FontManagerFactory {
}

type sun.font.StrikeCache {
}

type sun.font.TextSource {
    var WITHOUT_CONTEXT: boolean;
    var WITH_CONTEXT: boolean;
}

type sun.font.CFontConfiguration {
    var verbose: boolean;
}

type sun.font.StandardTextSource {
    var WITHOUT_CONTEXT: boolean;
    var WITH_CONTEXT: boolean;
}

type sun.font.FontScalerException {
}

type sun.font.AttributeValues {
    var MASK_ALL: int;
}

type sun.font.FreetypeFontScaler {
}

type sun.font.FontDesignMetrics {
}

type sun.font.TrueTypeGlyphMapper {
    var HI_SURROGATE_START: int;
    var HI_SURROGATE_END: int;
    var LO_SURROGATE_START: int;
    var LO_SURROGATE_END: int;
    var VS_START: int;
    var VS_END: int;
    var VSS_START: int;
    var VSS_END: int;
    var UNINITIALIZED_GLYPH: int;
    var INVISIBLE_GLYPH_ID: int;
    var INVISIBLE_GLYPHS: int;
}

type sun.font.CCompositeGlyphMapper {
    var SLOTMASK: int;
    var GLYPHMASK: int;
    var NBLOCKS: int;
    var BLOCKSZ: int;
    var MAXUNICODE: int;
    var HI_SURROGATE_START: int;
    var HI_SURROGATE_END: int;
    var LO_SURROGATE_START: int;
    var LO_SURROGATE_END: int;
    var VS_START: int;
    var VS_END: int;
    var VSS_START: int;
    var VSS_END: int;
    var UNINITIALIZED_GLYPH: int;
    var INVISIBLE_GLYPH_ID: int;
    var INVISIBLE_GLYPHS: int;
}

type sun.font.FontSubstitution {
}

type sun.font.CStrikeDisposer {
}

type sun.font.FontResolver {
}

type sun.font.FontStrike {
}

type sun.font.lookup.JDKFontLookup {
}

type sun.font.CompositeFont {
    var FONT_CONFIG_RANK: int;
    var JRE_RANK: int;
    var TTF_RANK: int;
    var TYPE1_RANK: int;
    var NATIVE_RANK: int;
    var UNKNOWN_RANK: int;
    var DEFAULT_RANK: int;
    var handle: sun.font.Font2DHandle;
    var FWIDTH_NORMAL: int;
    var FWEIGHT_NORMAL: int;
    var FWEIGHT_BOLD: int;
}

type sun.font.ScriptRun {
}

type sun.font.StandardGlyphVector {
    var FLAG_USES_VERTICAL_BASELINE: int;
    var FLAG_USES_VERTICAL_METRICS: int;
    var FLAG_USES_ALTERNATE_ORIENTATION: int;
    var FLAG_HAS_TRANSFORMS: int;
    var FLAG_HAS_POSITION_ADJUSTMENTS: int;
    var FLAG_RUN_RTL: int;
    var FLAG_COMPLEX_GLYPHS: int;
    var FLAG_MASK: int;
}

type sun.font.TextSourceLabel {
}

type sun.font.CharArrayCodePointIterator {
    var DONE: int;
}

type sun.font.CompositeStrike {
}

type sun.font.GlyphList {
}

type sun.font.Font2D {
    var FONT_CONFIG_RANK: int;
    var JRE_RANK: int;
    var TTF_RANK: int;
    var TYPE1_RANK: int;
    var NATIVE_RANK: int;
    var UNKNOWN_RANK: int;
    var DEFAULT_RANK: int;
    var handle: sun.font.Font2DHandle;
    var FWIDTH_NORMAL: int;
    var FWEIGHT_NORMAL: int;
    var FWEIGHT_BOLD: int;
}

type sun.font.CCharToGlyphMapper {
    var HI_SURROGATE_START: int;
    var HI_SURROGATE_END: int;
    var LO_SURROGATE_START: int;
    var LO_SURROGATE_END: int;
    var VS_START: int;
    var VS_END: int;
    var VSS_START: int;
    var VSS_END: int;
    var UNINITIALIZED_GLYPH: int;
    var INVISIBLE_GLYPH_ID: int;
    var INVISIBLE_GLYPHS: int;
}

type sun.font.CharacterIteratorCodePointIterator {
    var DONE: int;
}

type sun.font.AttributeMap {
}

type sun.font.ExtendedTextSourceLabel {
    var LEFT_TO_RIGHT: int;
    var RIGHT_TO_LEFT: int;
    var UNCHANGED: int;
}

type sun.font.GraphicComponent {
    var GRAPHIC_LEADING: float;
    var LEFT_TO_RIGHT: int;
    var RIGHT_TO_LEFT: int;
    var UNCHANGED: int;
}

type sun.font.FontScaler {
}

type sun.font.CompositeFontDescriptor {
}

type sun.font.FontManagerNativeLibrary {
}

type sun.font.NullFontScaler {
}

type sun.font.Type1GlyphMapper {
    var HI_SURROGATE_START: int;
    var HI_SURROGATE_END: int;
    var LO_SURROGATE_START: int;
    var LO_SURROGATE_END: int;
    var VS_START: int;
    var VS_END: int;
    var VSS_START: int;
    var VSS_END: int;
    var UNINITIALIZED_GLYPH: int;
    var INVISIBLE_GLYPH_ID: int;
    var INVISIBLE_GLYPHS: int;
}

type sun.font.FontLineMetrics {
    var numchars: int;
    var cm: sun.font.CoreMetrics;
    var frc: java.awt.font.FontRenderContext;
}

type sun.font.FontManagerForSGE {
    var NO_FALLBACK: int;
    var PHYSICAL_FALLBACK: int;
    var LOGICAL_FALLBACK: int;
}

type sun.font.Type1Font {
    var FONT_CONFIG_RANK: int;
    var JRE_RANK: int;
    var TTF_RANK: int;
    var TYPE1_RANK: int;
    var NATIVE_RANK: int;
    var UNKNOWN_RANK: int;
    var DEFAULT_RANK: int;
    var handle: sun.font.Font2DHandle;
    var FWIDTH_NORMAL: int;
    var FWEIGHT_NORMAL: int;
    var FWEIGHT_BOLD: int;
}

type sun.font.TextLabelFactory {
}

type sun.font.SunLayoutEngine {
}

type sun.font.Script {
    var INVALID_CODE: int;
    var COMMON: int;
    var INHERITED: int;
    var ARABIC: int;
    var ARMENIAN: int;
    var BENGALI: int;
    var BOPOMOFO: int;
    var CHEROKEE: int;
    var COPTIC: int;
    var CYRILLIC: int;
    var DESERET: int;
    var DEVANAGARI: int;
    var ETHIOPIC: int;
    var GEORGIAN: int;
    var GOTHIC: int;
    var GREEK: int;
    var GUJARATI: int;
    var GURMUKHI: int;
    var HAN: int;
    var HANGUL: int;
    var HEBREW: int;
    var HIRAGANA: int;
    var KANNADA: int;
    var KATAKANA: int;
    var KHMER: int;
    var LAO: int;
    var LATIN: int;
    var MALAYALAM: int;
    var MONGOLIAN: int;
    var MYANMAR: int;
    var OGHAM: int;
    var OLD_ITALIC: int;
    var ORIYA: int;
    var RUNIC: int;
    var SINHALA: int;
    var SYRIAC: int;
    var TAMIL: int;
    var TELUGU: int;
    var THAANA: int;
    var THAI: int;
    var TIBETAN: int;
    var CANADIAN_ABORIGINAL: int;
    var UCAS: int;
    var YI: int;
    var TAGALOG: int;
    var HANUNOO: int;
    var BUHID: int;
    var TAGBANWA: int;
    var CODE_LIMIT: int;
}

type sun.font.CFont {
    var FONT_CONFIG_RANK: int;
    var JRE_RANK: int;
    var TTF_RANK: int;
    var TYPE1_RANK: int;
    var NATIVE_RANK: int;
    var UNKNOWN_RANK: int;
    var DEFAULT_RANK: int;
    var handle: sun.font.Font2DHandle;
    var FWIDTH_NORMAL: int;
    var FWEIGHT_NORMAL: int;
    var FWEIGHT_BOLD: int;
}

type sun.font.PhysicalFont {
    var FONT_CONFIG_RANK: int;
    var JRE_RANK: int;
    var TTF_RANK: int;
    var TYPE1_RANK: int;
    var NATIVE_RANK: int;
    var UNKNOWN_RANK: int;
    var DEFAULT_RANK: int;
    var handle: sun.font.Font2DHandle;
    var FWIDTH_NORMAL: int;
    var FWEIGHT_NORMAL: int;
    var FWEIGHT_BOLD: int;
}

type sun.font.Decoration {
}

type sun.font.GlyphDisposedListener {
}

type sun.font.GlyphLayout {
}

type sun.font.DelegatingShape {
}

type sun.font.FontUtilities {
    var isLinux: boolean;
    var isMacOSX: boolean;
    var isMacOSX14: boolean;
    var useJDKScaler: boolean;
    var isWindows: boolean;
    var MIN_LAYOUT_CHARCODE: int;
    var MAX_LAYOUT_CHARCODE: int;
}

type sun.font.FontStrikeDesc {
}

type sun.font.ScriptRunData {
}

type sun.font.SunFontManager {
    var FONTFORMAT_NONE: int;
    var FONTFORMAT_TRUETYPE: int;
    var FONTFORMAT_TYPE1: int;
    var FONTFORMAT_TTC: int;
    var FONTFORMAT_COMPOSITE: int;
    var FONTFORMAT_NATIVE: int;
    var jreLibDirName: java.lang.String;
    var jreFontDirName: java.lang.String;
    var noType1Font: boolean;
    var NO_FALLBACK: int;
    var PHYSICAL_FALLBACK: int;
    var LOGICAL_FALLBACK: int;
}

type sun.font.LayoutPathImpl {
}

type sun.font.CStrike {
}

type sun.font.TrueTypeFont {
    var cmapTag: int;
    var glyfTag: int;
    var headTag: int;
    var hheaTag: int;
    var hmtxTag: int;
    var locaTag: int;
    var maxpTag: int;
    var nameTag: int;
    var postTag: int;
    var os_2Tag: int;
    var GDEFTag: int;
    var GPOSTag: int;
    var GSUBTag: int;
    var mortTag: int;
    var morxTag: int;
    var fdscTag: int;
    var fvarTag: int;
    var featTag: int;
    var EBLCTag: int;
    var gaspTag: int;
    var ttcfTag: int;
    var v1ttTag: int;
    var trueTag: int;
    var ottoTag: int;
    var MAC_PLATFORM_ID: int;
    var MACROMAN_SPECIFIC_ID: int;
    var MACROMAN_ENGLISH_LANG: int;
    var MS_PLATFORM_ID: int;
    var ENGLISH_LOCALE_ID: short;
    var FAMILY_NAME_ID: int;
    var FULL_NAME_ID: int;
    var POSTSCRIPT_NAME_ID: int;
    var reserved_bits1: int;
    var reserved_bits2: int;
    var FONT_CONFIG_RANK: int;
    var JRE_RANK: int;
    var TTF_RANK: int;
    var TYPE1_RANK: int;
    var NATIVE_RANK: int;
    var UNKNOWN_RANK: int;
    var DEFAULT_RANK: int;
    var handle: sun.font.Font2DHandle;
    var FWIDTH_NORMAL: int;
    var FWEIGHT_NORMAL: int;
    var FWEIGHT_BOLD: int;
}

type sun.font.PhysicalStrike {
}

type sun.font.CoreMetrics {
    var ascent: float;
    var descent: float;
    var leading: float;
    var height: float;
    var baselineIndex: int;
    var baselineOffsets: array<float>;
    var strikethroughOffset: float;
    var strikethroughThickness: float;
    var underlineOffset: float;
    var underlineThickness: float;
    var ssOffset: float;
    var italicAngle: float;
}

type sun.font.BidiUtils {
}

enum sun.font.EAttribute {
    EFAMILY = 0;
    EWEIGHT = 1;
    EWIDTH = 2;
    EPOSTURE = 3;
    ESIZE = 4;
    ETRANSFORM = 5;
    ESUPERSCRIPT = 6;
    EFONT = 7;
    ECHAR_REPLACEMENT = 8;
    EFOREGROUND = 9;
    EBACKGROUND = 10;
    EUNDERLINE = 11;
    ESTRIKETHROUGH = 12;
    ERUN_DIRECTION = 13;
    EBIDI_EMBEDDING = 14;
    EJUSTIFICATION = 15;
    EINPUT_METHOD_HIGHLIGHT = 16;
    EINPUT_METHOD_UNDERLINE = 17;
    ESWAP_COLORS = 18;
    ENUMERIC_SHAPING = 19;
    EKERNING = 20;
    ELIGATURES = 21;
    ETRACKING = 22;
    EBASELINE_TRANSFORM = 23;
}

type sun.font.FontRunIterator {
}

type sun.font.CMap {
}

type sun.font.Font2DHandle {
    var font2D: sun.font.Font2D;
}

type sun.font.FontAccess {
}

type sun.font.CreatedFontTracker {
    var MAX_FILE_SIZE: int;
    var MAX_TOTAL_BYTES: int;
}

type sun.font.CodePointIterator {
    var DONE: int;
}

type sun.font.FileFont {
    var FONT_CONFIG_RANK: int;
    var JRE_RANK: int;
    var TTF_RANK: int;
    var TYPE1_RANK: int;
    var NATIVE_RANK: int;
    var UNKNOWN_RANK: int;
    var DEFAULT_RANK: int;
    var handle: sun.font.Font2DHandle;
    var FWIDTH_NORMAL: int;
    var FWEIGHT_NORMAL: int;
    var FWEIGHT_BOLD: int;
}

type sun.font.TextRecord {
    var text: array<char>;
    var start: int;
    var limit: int;
    var min: int;
    var max: int;
}

type sun.font.ExtendedTextLabel {
    var LEFT_TO_RIGHT: int;
    var RIGHT_TO_LEFT: int;
    var UNCHANGED: int;
}

type sun.font.TextLabel {
}

type sun.lwawt.LWContainerPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.PlatformEventNotifier {
}

type sun.lwawt.SecurityWarningWindow {
}

type sun.lwawt.LWToolkit {
    var GRAB_EVENT_MASK: int;
    var MAX_BUTTONS_SUPPORTED: int;
    var DEFAULT_WAIT_TIME: int;
    var DESKTOPFONTHINTS: java.lang.String;
}

type sun.lwawt.LWLabelPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.LWPanelPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.LWCanvasPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.LWCursorManager {
}

type sun.lwawt.LWScrollPanePeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.LWGraphicsConfig {
}

type sun.lwawt.LWRepaintArea {
}

type sun.lwawt.LWComponentPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.macosx.CSystemTray {
}

type sun.lwawt.macosx.CPrinterDialogPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.macosx.CViewPlatformEmbeddedFrame {
}

type sun.lwawt.macosx.CMenuComponent {
}

type sun.lwawt.macosx.CMenuItem {
}

type sun.lwawt.macosx.CInputMethod {
}

type sun.lwawt.macosx.LWCToolkit {
    var KEYBOARD_FOCUS_COLOR: int;
    var INACTIVE_SELECTION_BACKGROUND_COLOR: int;
    var INACTIVE_SELECTION_FOREGROUND_COLOR: int;
    var SELECTED_CONTROL_TEXT_COLOR: int;
    var GRAB_EVENT_MASK: int;
    var MAX_BUTTONS_SUPPORTED: int;
    var DEFAULT_WAIT_TIME: int;
    var DESKTOPFONTHINTS: java.lang.String;
}

type sun.lwawt.macosx.CPlatformComponent {
}

type sun.lwawt.macosx.CPrinterDialog {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.lwawt.macosx.CFRetainedResource {
}

type sun.lwawt.macosx.CPlatformResponder {
}

type sun.lwawt.macosx.CInputMethodDescriptor {
}

type sun.lwawt.macosx.CPopupMenu {
}

type sun.lwawt.macosx.CEmbeddedFrame {
    var DEFAULT_CURSOR: int;
    var CROSSHAIR_CURSOR: int;
    var TEXT_CURSOR: int;
    var WAIT_CURSOR: int;
    var SW_RESIZE_CURSOR: int;
    var SE_RESIZE_CURSOR: int;
    var NW_RESIZE_CURSOR: int;
    var NE_RESIZE_CURSOR: int;
    var N_RESIZE_CURSOR: int;
    var S_RESIZE_CURSOR: int;
    var W_RESIZE_CURSOR: int;
    var E_RESIZE_CURSOR: int;
    var HAND_CURSOR: int;
    var MOVE_CURSOR: int;
    var NORMAL: int;
    var ICONIFIED: int;
    var MAXIMIZED_HORIZ: int;
    var MAXIMIZED_VERT: int;
    var MAXIMIZED_BOTH: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.lwawt.macosx.NamedCursor {
    var DEFAULT_CURSOR: int;
    var CROSSHAIR_CURSOR: int;
    var TEXT_CURSOR: int;
    var WAIT_CURSOR: int;
    var SW_RESIZE_CURSOR: int;
    var SE_RESIZE_CURSOR: int;
    var NW_RESIZE_CURSOR: int;
    var NE_RESIZE_CURSOR: int;
    var N_RESIZE_CURSOR: int;
    var S_RESIZE_CURSOR: int;
    var W_RESIZE_CURSOR: int;
    var E_RESIZE_CURSOR: int;
    var HAND_CURSOR: int;
    var MOVE_CURSOR: int;
    var CUSTOM_CURSOR: int;
}

type sun.lwawt.macosx.CWarningWindow {
    var WINDOW_BRUSH_METAL_LOOK: java.lang.String;
    var WINDOW_DRAGGABLE_BACKGROUND: java.lang.String;
    var WINDOW_ALPHA: java.lang.String;
    var WINDOW_SHADOW: java.lang.String;
    var WINDOW_STYLE: java.lang.String;
    var WINDOW_SHADOW_REVALIDATE_NOW: java.lang.String;
    var WINDOW_DOCUMENT_MODIFIED: java.lang.String;
    var WINDOW_DOCUMENT_FILE: java.lang.String;
    var WINDOW_CLOSEABLE: java.lang.String;
    var WINDOW_MINIMIZABLE: java.lang.String;
    var WINDOW_ZOOMABLE: java.lang.String;
    var WINDOW_HIDES_ON_DEACTIVATE: java.lang.String;
    var WINDOW_DOC_MODAL_SHEET: java.lang.String;
    var WINDOW_FADE_DELEGATE: java.lang.String;
    var WINDOW_FADE_IN: java.lang.String;
    var WINDOW_FADE_OUT: java.lang.String;
    var WINDOW_FULLSCREENABLE: java.lang.String;
    var WINDOW_FULL_CONTENT: java.lang.String;
    var WINDOW_TRANSPARENT_TITLE_BAR: java.lang.String;
    var WINDOW_TITLE_VISIBLE: java.lang.String;
    var MAC_OS_TABBED_WINDOW: java.lang.String;
}

type sun.lwawt.macosx.CDesktopPeer {
}

type sun.lwawt.macosx.CPrinterPageDialog {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.lwawt.macosx.CPlatformView {
}

type sun.lwawt.macosx.CPlatformEmbeddedFrame {
}

type sun.lwawt.macosx.CWrapper {
}

type sun.lwawt.macosx.CPlatformLWComponent {
}

type sun.lwawt.macosx.CMenuBar {
}

type sun.lwawt.macosx.CPrinterJob {
    var forcePDL: boolean;
    var forceRaster: boolean;
    var shapeTextProp: boolean;
    var debugPrint: boolean;
}

type sun.lwawt.macosx.CPrinterDevice {
    var TYPE_RASTER_SCREEN: int;
    var TYPE_PRINTER: int;
    var TYPE_IMAGE_BUFFER: int;
}

type sun.lwawt.macosx.CPrinterGraphics {
}

type sun.lwawt.macosx.CPlatformWindow {
    var WINDOW_BRUSH_METAL_LOOK: java.lang.String;
    var WINDOW_DRAGGABLE_BACKGROUND: java.lang.String;
    var WINDOW_ALPHA: java.lang.String;
    var WINDOW_SHADOW: java.lang.String;
    var WINDOW_STYLE: java.lang.String;
    var WINDOW_SHADOW_REVALIDATE_NOW: java.lang.String;
    var WINDOW_DOCUMENT_MODIFIED: java.lang.String;
    var WINDOW_DOCUMENT_FILE: java.lang.String;
    var WINDOW_CLOSEABLE: java.lang.String;
    var WINDOW_MINIMIZABLE: java.lang.String;
    var WINDOW_ZOOMABLE: java.lang.String;
    var WINDOW_HIDES_ON_DEACTIVATE: java.lang.String;
    var WINDOW_DOC_MODAL_SHEET: java.lang.String;
    var WINDOW_FADE_DELEGATE: java.lang.String;
    var WINDOW_FADE_IN: java.lang.String;
    var WINDOW_FADE_OUT: java.lang.String;
    var WINDOW_FULLSCREENABLE: java.lang.String;
    var WINDOW_FULL_CONTENT: java.lang.String;
    var WINDOW_TRANSPARENT_TITLE_BAR: java.lang.String;
    var WINDOW_TITLE_VISIBLE: java.lang.String;
    var MAC_OS_TABBED_WINDOW: java.lang.String;
}

type sun.lwawt.macosx.CToolkitThreadBlockedHandler {
}

type sun.lwawt.macosx.CImage {
}

type sun.lwawt.macosx.CViewEmbeddedFrame {
    var DEFAULT_CURSOR: int;
    var CROSSHAIR_CURSOR: int;
    var TEXT_CURSOR: int;
    var WAIT_CURSOR: int;
    var SW_RESIZE_CURSOR: int;
    var SE_RESIZE_CURSOR: int;
    var NW_RESIZE_CURSOR: int;
    var NE_RESIZE_CURSOR: int;
    var N_RESIZE_CURSOR: int;
    var S_RESIZE_CURSOR: int;
    var W_RESIZE_CURSOR: int;
    var E_RESIZE_CURSOR: int;
    var HAND_CURSOR: int;
    var MOVE_CURSOR: int;
    var NORMAL: int;
    var ICONIFIED: int;
    var MAXIMIZED_HORIZ: int;
    var MAXIMIZED_VERT: int;
    var MAXIMIZED_BOTH: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.lwawt.macosx.CMouseDragGestureRecognizer {
}

type sun.lwawt.macosx.CPlatformLWWindow {
    var WINDOW_BRUSH_METAL_LOOK: java.lang.String;
    var WINDOW_DRAGGABLE_BACKGROUND: java.lang.String;
    var WINDOW_ALPHA: java.lang.String;
    var WINDOW_SHADOW: java.lang.String;
    var WINDOW_STYLE: java.lang.String;
    var WINDOW_SHADOW_REVALIDATE_NOW: java.lang.String;
    var WINDOW_DOCUMENT_MODIFIED: java.lang.String;
    var WINDOW_DOCUMENT_FILE: java.lang.String;
    var WINDOW_CLOSEABLE: java.lang.String;
    var WINDOW_MINIMIZABLE: java.lang.String;
    var WINDOW_ZOOMABLE: java.lang.String;
    var WINDOW_HIDES_ON_DEACTIVATE: java.lang.String;
    var WINDOW_DOC_MODAL_SHEET: java.lang.String;
    var WINDOW_FADE_DELEGATE: java.lang.String;
    var WINDOW_FADE_IN: java.lang.String;
    var WINDOW_FADE_OUT: java.lang.String;
    var WINDOW_FULLSCREENABLE: java.lang.String;
    var WINDOW_FULL_CONTENT: java.lang.String;
    var WINDOW_TRANSPARENT_TITLE_BAR: java.lang.String;
    var WINDOW_TITLE_VISIBLE: java.lang.String;
    var MAC_OS_TABBED_WINDOW: java.lang.String;
}

type sun.lwawt.macosx.CTextPipe {
}

type sun.lwawt.macosx.CPrinterGraphicsConfig {
}

type sun.lwawt.macosx.CDropTargetContextPeer {
    var DISPATCH_SYNC: boolean;
}

type sun.lwawt.macosx.CPlatformLWView {
}

type sun.lwawt.macosx.CPrinterSurfaceData {
    var DESC_INT_RGB_PQ: java.lang.String;
    var IntRgbPQ: sun.java2d.loops.SurfaceType;
    var outlineTextRenderer: sun.java2d.pipe.TextPipe;
    var solidTextRenderer: sun.java2d.pipe.TextPipe;
    var aaTextRenderer: sun.java2d.pipe.TextPipe;
    var lcdTextRenderer: sun.java2d.pipe.TextPipe;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type sun.lwawt.macosx.CMenu {
}

type sun.lwawt.macosx.CAccessible {
}

type sun.lwawt.macosx.CocoaConstants {
    var NSLeftMouseDown: int;
    var NSLeftMouseUp: int;
    var NSRightMouseDown: int;
    var NSRightMouseUp: int;
    var NSMouseMoved: int;
    var NSLeftMouseDragged: int;
    var NSRightMouseDragged: int;
    var NSMouseEntered: int;
    var NSMouseExited: int;
    var NSKeyDown: int;
    var NSKeyUp: int;
    var NSFlagsChanged: int;
    var NSScrollWheel: int;
    var NSOtherMouseDown: int;
    var NSOtherMouseUp: int;
    var NSOtherMouseDragged: int;
    var AllLeftMouseEventsMask: int;
    var AllRightMouseEventsMask: int;
    var AllOtherMouseEventsMask: int;
    var kCGMouseButtonLeft: int;
    var kCGMouseButtonRight: int;
    var kCGMouseButtonCenter: int;
    var NPCocoaEventDrawRect: int;
    var NPCocoaEventMouseDown: int;
    var NPCocoaEventMouseUp: int;
    var NPCocoaEventMouseMoved: int;
    var NPCocoaEventMouseEntered: int;
    var NPCocoaEventMouseExited: int;
    var NPCocoaEventMouseDragged: int;
    var NPCocoaEventKeyDown: int;
    var NPCocoaEventKeyUp: int;
    var NPCocoaEventFlagsChanged: int;
    var NPCocoaEventFocusChanged: int;
    var NPCocoaEventWindowFocusChanged: int;
    var NPCocoaEventScrollWheel: int;
    var NPCocoaEventTextInput: int;
}

type sun.lwawt.macosx.CCustomCursor {
    var DEFAULT_CURSOR: int;
    var CROSSHAIR_CURSOR: int;
    var TEXT_CURSOR: int;
    var WAIT_CURSOR: int;
    var SW_RESIZE_CURSOR: int;
    var SE_RESIZE_CURSOR: int;
    var NW_RESIZE_CURSOR: int;
    var NE_RESIZE_CURSOR: int;
    var N_RESIZE_CURSOR: int;
    var S_RESIZE_CURSOR: int;
    var W_RESIZE_CURSOR: int;
    var E_RESIZE_CURSOR: int;
    var HAND_CURSOR: int;
    var MOVE_CURSOR: int;
    var CUSTOM_CURSOR: int;
}

type sun.lwawt.macosx.CAccessibility {
}

type sun.lwawt.macosx.CFileDialog {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.macosx.CCheckboxMenuItem {
}

type sun.lwawt.macosx.CClipboard {
}

type sun.lwawt.macosx.CPrinterJobDialog {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type sun.lwawt.macosx.CDataTransferer {
    var CF_UNSUPPORTED: int;
    var CF_STRING: int;
    var CF_FILE: int;
    var CF_TIFF: int;
    var CF_RICH_TEXT: int;
    var CF_HTML: int;
    var CF_PDF: int;
    var CF_URL: int;
    var CF_PNG: int;
    var CF_JPEG: int;
    var CF_XPICT: int;
    var javaTextEncodingFlavor: `<UNRESOLVED_TYPE>`;
}

type sun.lwawt.macosx.CDropTarget {
}

type sun.lwawt.macosx.CRobot {
}

type sun.lwawt.macosx.CTaskbarPeer {
}

type sun.lwawt.macosx.CTrayIcon {
}

type sun.lwawt.macosx.CDragSourceContextPeer {
}

type sun.lwawt.macosx.NSEvent {
}

type sun.lwawt.macosx.CCursorManager {
}

type sun.lwawt.macosx.CAccessibleText {
}

type sun.lwawt.PlatformDropTarget {
}

type sun.lwawt.LWChoicePeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.PlatformWindow {
}

type sun.lwawt.LWButtonPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.PlatformComponent {
}

type sun.lwawt.LWTextFieldPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.LWTextAreaPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.LWMouseInfoPeer {
}

type sun.lwawt.LWCheckboxPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.LWWindowPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.LWKeyboardFocusManagerPeer {
    var SNFH_FAILURE: int;
    var SNFH_SUCCESS_HANDLED: int;
    var SNFH_SUCCESS_PROCEED: int;
}

type sun.lwawt.LWListPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.LWScrollBarPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.LWTextComponentPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type sun.lwawt.LWLightweightFramePeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.applet.AudioClip {
}

type java.applet.AppletContext {
}

type java.applet.AppletStub {
}

type java.applet.Applet {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.beans.Visibility {
}

type java.beans.ObjectInputStreamWithLoader {
    var STREAM_MAGIC: short;
    var STREAM_VERSION: short;
    var TC_BASE: byte;
    var TC_NULL: byte;
    var TC_REFERENCE: byte;
    var TC_CLASSDESC: byte;
    var TC_OBJECT: byte;
    var TC_STRING: byte;
    var TC_ARRAY: byte;
    var TC_CLASS: byte;
    var TC_BLOCKDATA: byte;
    var TC_ENDBLOCKDATA: byte;
    var TC_RESET: byte;
    var TC_BLOCKDATALONG: byte;
    var TC_EXCEPTION: byte;
    var TC_LONGSTRING: byte;
    var TC_PROXYCLASSDESC: byte;
    var TC_ENUM: byte;
    var TC_MAX: byte;
    var baseWireHandle: int;
    var SC_WRITE_METHOD: byte;
    var SC_BLOCK_DATA: byte;
    var SC_SERIALIZABLE: byte;
    var SC_EXTERNALIZABLE: byte;
    var SC_ENUM: byte;
    var SUBSTITUTION_PERMISSION: java.io.SerializablePermission;
    var SUBCLASS_IMPLEMENTATION_PERMISSION: java.io.SerializablePermission;
    var SERIAL_FILTER_PERMISSION: java.io.SerializablePermission;
    var PROTOCOL_VERSION_1: int;
    var PROTOCOL_VERSION_2: int;
}

type java.beans.PropertyEditor {
}

type java.beans.VetoableChangeListenerProxy {
}

type java.beans.MetaData {
}

type java.beans.MethodRef {
}

type java.beans.SimpleBeanInfo {
    var ICON_COLOR_16x16: int;
    var ICON_COLOR_32x32: int;
    var ICON_MONO_16x16: int;
    var ICON_MONO_32x32: int;
}

type java.beans.BeansAppletContext {
}

type java.beans.VetoableChangeListener {
}

type java.beans.VetoableChangeSupport {
}

type java.beans.DefaultPersistenceDelegate {
}

type java.beans.PropertyChangeSupport {
}

type java.beans.Expression {
}

type java.beans.PropertyVetoException {
}

type java.beans.BeanDescriptor {
}

type java.beans.PropertyEditorSupport {
}

type java.beans.NameGenerator {
}

type java.beans.Encoder {
}

type java.beans.BeansAppletStub {
}

type java.beans.DesignMode {
    var PROPERTYNAME: java.lang.String;
}

type java.beans.EventHandler {
}

type java.beans.IndexedPropertyChangeEvent {
}

type java.beans.ChangeListenerMap {
}

type java.beans.Introspector {
    var USE_ALL_BEANINFO: int;
    var IGNORE_IMMEDIATE_BEANINFO: int;
    var IGNORE_ALL_BEANINFO: int;
}

type java.beans.BeanInfo {
    var ICON_COLOR_16x16: int;
    var ICON_COLOR_32x32: int;
    var ICON_MONO_16x16: int;
    var ICON_MONO_32x32: int;
}

type java.beans.WeakIdentityMap {
}

type java.beans.Beans {
}

type java.beans.XMLDecoder {
}

type java.beans.PersistenceDelegate {
}

type java.beans.FeatureDescriptor {
}

type java.beans.ThreadGroupContext {
}

type java.beans.IndexedPropertyDescriptor {
}

type java.beans.beancontext.BeanContextServiceProvider {
}

type java.beans.beancontext.BeanContext {
    var globalHierarchyLock: java.lang.Object;
    var PROPERTYNAME: java.lang.String;
}

type java.beans.beancontext.BeanContextServices {
    var globalHierarchyLock: java.lang.Object;
    var PROPERTYNAME: java.lang.String;
}

type java.beans.beancontext.BeanContextServiceAvailableEvent {
}

type java.beans.beancontext.BeanContextMembershipListener {
}

type java.beans.beancontext.BeanContextContainerProxy {
}

type java.beans.beancontext.BeanContextChildSupport {
    var beanContextChildPeer: java.beans.beancontext.BeanContextChild;
}

type java.beans.beancontext.BeanContextSupport {
    var globalHierarchyLock: java.lang.Object;
    var PROPERTYNAME: java.lang.String;
    var beanContextChildPeer: java.beans.beancontext.BeanContextChild;
}

type java.beans.beancontext.BeanContextServiceRevokedEvent {
}

type java.beans.beancontext.BeanContextServicesListener {
}

type java.beans.beancontext.BeanContextServicesSupport {
    var globalHierarchyLock: java.lang.Object;
    var PROPERTYNAME: java.lang.String;
    var beanContextChildPeer: java.beans.beancontext.BeanContextChild;
}

type java.beans.beancontext.BeanContextServiceProviderBeanInfo {
    var ICON_COLOR_16x16: int;
    var ICON_COLOR_32x32: int;
    var ICON_MONO_16x16: int;
    var ICON_MONO_32x32: int;
}

type java.beans.beancontext.BeanContextChildComponentProxy {
}

type java.beans.beancontext.BeanContextMembershipEvent {
}

type java.beans.beancontext.BeanContextChild {
}

type java.beans.beancontext.BeanContextProxy {
}

type java.beans.beancontext.BeanContextEvent {
}

type java.beans.beancontext.BeanContextServiceRevokedListener {
}

type java.beans.XMLEncoder {
}

type java.beans.EventSetDescriptor {
}

type java.beans.PropertyChangeListener {
}

type java.beans.PropertyChangeEvent {
}

type java.beans.GenericBeanInfo {
    var ICON_COLOR_16x16: int;
    var ICON_COLOR_32x32: int;
    var ICON_MONO_16x16: int;
    var ICON_MONO_32x32: int;
}

type java.beans.PropertyDescriptor {
}

type java.beans.PropertyEditorManager {
}

type java.beans.ExceptionListener {
}

type java.beans.PropertyChangeListenerProxy {
}

type java.beans.Customizer {
}

type java.beans.Statement {
}

type java.beans.IntrospectionException {
}

type java.beans.MethodDescriptor {
}

type java.beans.AppletInitializer {
}

type java.beans.ParameterDescriptor {
}

type java.awt.FileDialog {
    var LOAD: int;
    var SAVE: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.RenderingHints {
    var VALUE_ANTIALIAS_ON: java.lang.Object;
    var VALUE_ANTIALIAS_OFF: java.lang.Object;
    var VALUE_ANTIALIAS_DEFAULT: java.lang.Object;
    var VALUE_RENDER_SPEED: java.lang.Object;
    var VALUE_RENDER_QUALITY: java.lang.Object;
    var VALUE_RENDER_DEFAULT: java.lang.Object;
    var VALUE_DITHER_DISABLE: java.lang.Object;
    var VALUE_DITHER_ENABLE: java.lang.Object;
    var VALUE_DITHER_DEFAULT: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_ON: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_OFF: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_DEFAULT: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_GASP: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_LCD_HRGB: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_LCD_HBGR: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_LCD_VRGB: java.lang.Object;
    var VALUE_TEXT_ANTIALIAS_LCD_VBGR: java.lang.Object;
    var VALUE_FRACTIONALMETRICS_OFF: java.lang.Object;
    var VALUE_FRACTIONALMETRICS_ON: java.lang.Object;
    var VALUE_FRACTIONALMETRICS_DEFAULT: java.lang.Object;
    var VALUE_INTERPOLATION_NEAREST_NEIGHBOR: java.lang.Object;
    var VALUE_INTERPOLATION_BILINEAR: java.lang.Object;
    var VALUE_INTERPOLATION_BICUBIC: java.lang.Object;
    var VALUE_ALPHA_INTERPOLATION_SPEED: java.lang.Object;
    var VALUE_ALPHA_INTERPOLATION_QUALITY: java.lang.Object;
    var VALUE_ALPHA_INTERPOLATION_DEFAULT: java.lang.Object;
    var VALUE_COLOR_RENDER_SPEED: java.lang.Object;
    var VALUE_COLOR_RENDER_QUALITY: java.lang.Object;
    var VALUE_COLOR_RENDER_DEFAULT: java.lang.Object;
    var VALUE_STROKE_DEFAULT: java.lang.Object;
    var VALUE_STROKE_NORMALIZE: java.lang.Object;
    var VALUE_STROKE_PURE: java.lang.Object;
    var VALUE_RESOLUTION_VARIANT_DEFAULT: java.lang.Object;
    var VALUE_RESOLUTION_VARIANT_BASE: java.lang.Object;
    var VALUE_RESOLUTION_VARIANT_SIZE_FIT: java.lang.Object;
    var VALUE_RESOLUTION_VARIANT_DPI_FIT: java.lang.Object;
}

type java.awt.PopupMenu {
}

type java.awt.GraphicsEnvironment {
}

type java.awt.TextArea {
    var SCROLLBARS_BOTH: int;
    var SCROLLBARS_VERTICAL_ONLY: int;
    var SCROLLBARS_HORIZONTAL_ONLY: int;
    var SCROLLBARS_NONE: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.FocusTraversalPolicy {
}

type java.awt.LayoutManager {
}

type java.awt.JobAttributes {
}

type java.awt.Label {
    var LEFT: int;
    var CENTER: int;
    var RIGHT: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.Event {
    var SHIFT_MASK: int;
    var CTRL_MASK: int;
    var META_MASK: int;
    var ALT_MASK: int;
    var HOME: int;
    var END: int;
    var PGUP: int;
    var PGDN: int;
    var UP: int;
    var DOWN: int;
    var LEFT: int;
    var RIGHT: int;
    var F1: int;
    var F2: int;
    var F3: int;
    var F4: int;
    var F5: int;
    var F6: int;
    var F7: int;
    var F8: int;
    var F9: int;
    var F10: int;
    var F11: int;
    var F12: int;
    var PRINT_SCREEN: int;
    var SCROLL_LOCK: int;
    var CAPS_LOCK: int;
    var NUM_LOCK: int;
    var PAUSE: int;
    var INSERT: int;
    var ENTER: int;
    var BACK_SPACE: int;
    var TAB: int;
    var ESCAPE: int;
    var DELETE: int;
    var WINDOW_DESTROY: int;
    var WINDOW_EXPOSE: int;
    var WINDOW_ICONIFY: int;
    var WINDOW_DEICONIFY: int;
    var WINDOW_MOVED: int;
    var KEY_PRESS: int;
    var KEY_RELEASE: int;
    var KEY_ACTION: int;
    var KEY_ACTION_RELEASE: int;
    var MOUSE_DOWN: int;
    var MOUSE_UP: int;
    var MOUSE_MOVE: int;
    var MOUSE_ENTER: int;
    var MOUSE_EXIT: int;
    var MOUSE_DRAG: int;
    var SCROLL_LINE_UP: int;
    var SCROLL_LINE_DOWN: int;
    var SCROLL_PAGE_UP: int;
    var SCROLL_PAGE_DOWN: int;
    var SCROLL_ABSOLUTE: int;
    var SCROLL_BEGIN: int;
    var SCROLL_END: int;
    var LIST_SELECT: int;
    var LIST_DESELECT: int;
    var ACTION_EVENT: int;
    var LOAD_FILE: int;
    var SAVE_FILE: int;
    var GOT_FOCUS: int;
    var LOST_FOCUS: int;
    var target: java.lang.Object;
    var when: long;
    var id: int;
    var x: int;
    var y: int;
    var key: int;
    var modifiers: int;
    var clickCount: int;
    var arg: java.lang.Object;
    var evt: java.awt.Event;
}

type java.awt.MenuBar {
}

type java.awt.PointerInfo {
}

type java.awt.AWTError {
}

type java.awt.GridLayout {
}

type java.awt.Composite {
}

type java.awt.AWTEvent {
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.AWTEventMulticaster {
}

type java.awt.KeyEventPostProcessor {
}

type java.awt.FocusManager {
}

type java.awt.AttributeValue {
}

type java.awt.CheckboxMenuItem {
}

type java.awt.CheckboxGroup {
}

type java.awt.Taskbar {
}

type java.awt.ColorPaintContext {
}

type java.awt.ActiveEvent {
}

type java.awt.LinearGradientPaintContext {
}

type java.awt.IllegalComponentStateException {
}

type java.awt.Panel {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.PageAttributes {
}

type java.awt.DefaultFocusTraversalPolicy {
}

type java.awt.Toolkit {
}

type java.awt.dnd.InvalidDnDOperationException {
}

type java.awt.dnd.DropTarget {
}

type java.awt.dnd.MouseDragGestureRecognizer {
}

type java.awt.dnd.DropTargetDropEvent {
}

type java.awt.dnd.DragSourceDragEvent {
}

type java.awt.dnd.DragSourceAdapter {
}

type java.awt.dnd.DropTargetListener {
}

type java.awt.dnd.DragGestureListener {
}

type java.awt.dnd.DragSourceDropEvent {
}

type java.awt.dnd.DragSource {
    var DefaultCopyDrop: java.awt.Cursor;
    var DefaultMoveDrop: java.awt.Cursor;
    var DefaultLinkDrop: java.awt.Cursor;
    var DefaultCopyNoDrop: java.awt.Cursor;
    var DefaultMoveNoDrop: java.awt.Cursor;
    var DefaultLinkNoDrop: java.awt.Cursor;
}

type java.awt.dnd.DropTargetDragEvent {
}

type java.awt.dnd.peer.DragSourceContextPeer {
}

type java.awt.dnd.peer.DropTargetContextPeer {
}

type java.awt.dnd.peer.DropTargetPeer {
}

type java.awt.dnd.DragGestureEvent {
}

type java.awt.dnd.DragSourceContext {
}

type java.awt.dnd.DnDEventMulticaster {
}

type java.awt.dnd.DragSourceListener {
}

type java.awt.dnd.DragSourceMotionListener {
}

type java.awt.dnd.DropTargetContext {
}

type java.awt.dnd.SerializationTester {
}

type java.awt.dnd.DropTargetEvent {
}

type java.awt.dnd.DnDConstants {
    var ACTION_NONE: int;
    var ACTION_COPY: int;
    var ACTION_MOVE: int;
    var ACTION_COPY_OR_MOVE: int;
    var ACTION_LINK: int;
    var ACTION_REFERENCE: int;
}

type java.awt.dnd.DragGestureRecognizer {
}

type java.awt.dnd.Autoscroll {
}

type java.awt.dnd.DragSourceEvent {
}

type java.awt.dnd.DropTargetAdapter {
}

type java.awt.TrayIcon {
}

type java.awt.color.ProfileDataException {
}

type java.awt.color.ICC_ColorSpace {
    var TYPE_XYZ: int;
    var TYPE_Lab: int;
    var TYPE_Luv: int;
    var TYPE_YCbCr: int;
    var TYPE_Yxy: int;
    var TYPE_RGB: int;
    var TYPE_GRAY: int;
    var TYPE_HSV: int;
    var TYPE_HLS: int;
    var TYPE_CMYK: int;
    var TYPE_CMY: int;
    var TYPE_2CLR: int;
    var TYPE_3CLR: int;
    var TYPE_4CLR: int;
    var TYPE_5CLR: int;
    var TYPE_6CLR: int;
    var TYPE_7CLR: int;
    var TYPE_8CLR: int;
    var TYPE_9CLR: int;
    var TYPE_ACLR: int;
    var TYPE_BCLR: int;
    var TYPE_CCLR: int;
    var TYPE_DCLR: int;
    var TYPE_ECLR: int;
    var TYPE_FCLR: int;
    var CS_sRGB: int;
    var CS_LINEAR_RGB: int;
    var CS_CIEXYZ: int;
    var CS_PYCC: int;
    var CS_GRAY: int;
}

type java.awt.color.ICC_ProfileGray {
    var CLASS_INPUT: int;
    var CLASS_DISPLAY: int;
    var CLASS_OUTPUT: int;
    var CLASS_DEVICELINK: int;
    var CLASS_COLORSPACECONVERSION: int;
    var CLASS_ABSTRACT: int;
    var CLASS_NAMEDCOLOR: int;
    var icSigXYZData: int;
    var icSigLabData: int;
    var icSigLuvData: int;
    var icSigYCbCrData: int;
    var icSigYxyData: int;
    var icSigRgbData: int;
    var icSigGrayData: int;
    var icSigHsvData: int;
    var icSigHlsData: int;
    var icSigCmykData: int;
    var icSigCmyData: int;
    var icSigSpace2CLR: int;
    var icSigSpace3CLR: int;
    var icSigSpace4CLR: int;
    var icSigSpace5CLR: int;
    var icSigSpace6CLR: int;
    var icSigSpace7CLR: int;
    var icSigSpace8CLR: int;
    var icSigSpace9CLR: int;
    var icSigSpaceACLR: int;
    var icSigSpaceBCLR: int;
    var icSigSpaceCCLR: int;
    var icSigSpaceDCLR: int;
    var icSigSpaceECLR: int;
    var icSigSpaceFCLR: int;
    var icSigInputClass: int;
    var icSigDisplayClass: int;
    var icSigOutputClass: int;
    var icSigLinkClass: int;
    var icSigAbstractClass: int;
    var icSigColorSpaceClass: int;
    var icSigNamedColorClass: int;
    var icPerceptual: int;
    var icRelativeColorimetric: int;
    var icMediaRelativeColorimetric: int;
    var icSaturation: int;
    var icAbsoluteColorimetric: int;
    var icICCAbsoluteColorimetric: int;
    var icSigHead: int;
    var icSigAToB0Tag: int;
    var icSigAToB1Tag: int;
    var icSigAToB2Tag: int;
    var icSigBlueColorantTag: int;
    var icSigBlueMatrixColumnTag: int;
    var icSigBlueTRCTag: int;
    var icSigBToA0Tag: int;
    var icSigBToA1Tag: int;
    var icSigBToA2Tag: int;
    var icSigCalibrationDateTimeTag: int;
    var icSigCharTargetTag: int;
    var icSigCopyrightTag: int;
    var icSigCrdInfoTag: int;
    var icSigDeviceMfgDescTag: int;
    var icSigDeviceModelDescTag: int;
    var icSigDeviceSettingsTag: int;
    var icSigGamutTag: int;
    var icSigGrayTRCTag: int;
    var icSigGreenColorantTag: int;
    var icSigGreenMatrixColumnTag: int;
    var icSigGreenTRCTag: int;
    var icSigLuminanceTag: int;
    var icSigMeasurementTag: int;
    var icSigMediaBlackPointTag: int;
    var icSigMediaWhitePointTag: int;
    var icSigNamedColor2Tag: int;
    var icSigOutputResponseTag: int;
    var icSigPreview0Tag: int;
    var icSigPreview1Tag: int;
    var icSigPreview2Tag: int;
    var icSigProfileDescriptionTag: int;
    var icSigProfileSequenceDescTag: int;
    var icSigPs2CRD0Tag: int;
    var icSigPs2CRD1Tag: int;
    var icSigPs2CRD2Tag: int;
    var icSigPs2CRD3Tag: int;
    var icSigPs2CSATag: int;
    var icSigPs2RenderingIntentTag: int;
    var icSigRedColorantTag: int;
    var icSigRedMatrixColumnTag: int;
    var icSigRedTRCTag: int;
    var icSigScreeningDescTag: int;
    var icSigScreeningTag: int;
    var icSigTechnologyTag: int;
    var icSigUcrBgTag: int;
    var icSigViewingCondDescTag: int;
    var icSigViewingConditionsTag: int;
    var icSigChromaticityTag: int;
    var icSigChromaticAdaptationTag: int;
    var icSigColorantOrderTag: int;
    var icSigColorantTableTag: int;
    var icHdrSize: int;
    var icHdrCmmId: int;
    var icHdrVersion: int;
    var icHdrDeviceClass: int;
    var icHdrColorSpace: int;
    var icHdrPcs: int;
    var icHdrDate: int;
    var icHdrMagic: int;
    var icHdrPlatform: int;
    var icHdrFlags: int;
    var icHdrManufacturer: int;
    var icHdrModel: int;
    var icHdrAttributes: int;
    var icHdrRenderingIntent: int;
    var icHdrIlluminant: int;
    var icHdrCreator: int;
    var icHdrProfileID: int;
    var icTagType: int;
    var icTagReserved: int;
    var icCurveCount: int;
    var icCurveData: int;
    var icXYZNumberX: int;
}

type java.awt.color.ColorSpace {
    var TYPE_XYZ: int;
    var TYPE_Lab: int;
    var TYPE_Luv: int;
    var TYPE_YCbCr: int;
    var TYPE_Yxy: int;
    var TYPE_RGB: int;
    var TYPE_GRAY: int;
    var TYPE_HSV: int;
    var TYPE_HLS: int;
    var TYPE_CMYK: int;
    var TYPE_CMY: int;
    var TYPE_2CLR: int;
    var TYPE_3CLR: int;
    var TYPE_4CLR: int;
    var TYPE_5CLR: int;
    var TYPE_6CLR: int;
    var TYPE_7CLR: int;
    var TYPE_8CLR: int;
    var TYPE_9CLR: int;
    var TYPE_ACLR: int;
    var TYPE_BCLR: int;
    var TYPE_CCLR: int;
    var TYPE_DCLR: int;
    var TYPE_ECLR: int;
    var TYPE_FCLR: int;
    var CS_sRGB: int;
    var CS_LINEAR_RGB: int;
    var CS_CIEXYZ: int;
    var CS_PYCC: int;
    var CS_GRAY: int;
}

type java.awt.color.ICC_ProfileRGB {
    var REDCOMPONENT: int;
    var GREENCOMPONENT: int;
    var BLUECOMPONENT: int;
    var CLASS_INPUT: int;
    var CLASS_DISPLAY: int;
    var CLASS_OUTPUT: int;
    var CLASS_DEVICELINK: int;
    var CLASS_COLORSPACECONVERSION: int;
    var CLASS_ABSTRACT: int;
    var CLASS_NAMEDCOLOR: int;
    var icSigXYZData: int;
    var icSigLabData: int;
    var icSigLuvData: int;
    var icSigYCbCrData: int;
    var icSigYxyData: int;
    var icSigRgbData: int;
    var icSigGrayData: int;
    var icSigHsvData: int;
    var icSigHlsData: int;
    var icSigCmykData: int;
    var icSigCmyData: int;
    var icSigSpace2CLR: int;
    var icSigSpace3CLR: int;
    var icSigSpace4CLR: int;
    var icSigSpace5CLR: int;
    var icSigSpace6CLR: int;
    var icSigSpace7CLR: int;
    var icSigSpace8CLR: int;
    var icSigSpace9CLR: int;
    var icSigSpaceACLR: int;
    var icSigSpaceBCLR: int;
    var icSigSpaceCCLR: int;
    var icSigSpaceDCLR: int;
    var icSigSpaceECLR: int;
    var icSigSpaceFCLR: int;
    var icSigInputClass: int;
    var icSigDisplayClass: int;
    var icSigOutputClass: int;
    var icSigLinkClass: int;
    var icSigAbstractClass: int;
    var icSigColorSpaceClass: int;
    var icSigNamedColorClass: int;
    var icPerceptual: int;
    var icRelativeColorimetric: int;
    var icMediaRelativeColorimetric: int;
    var icSaturation: int;
    var icAbsoluteColorimetric: int;
    var icICCAbsoluteColorimetric: int;
    var icSigHead: int;
    var icSigAToB0Tag: int;
    var icSigAToB1Tag: int;
    var icSigAToB2Tag: int;
    var icSigBlueColorantTag: int;
    var icSigBlueMatrixColumnTag: int;
    var icSigBlueTRCTag: int;
    var icSigBToA0Tag: int;
    var icSigBToA1Tag: int;
    var icSigBToA2Tag: int;
    var icSigCalibrationDateTimeTag: int;
    var icSigCharTargetTag: int;
    var icSigCopyrightTag: int;
    var icSigCrdInfoTag: int;
    var icSigDeviceMfgDescTag: int;
    var icSigDeviceModelDescTag: int;
    var icSigDeviceSettingsTag: int;
    var icSigGamutTag: int;
    var icSigGrayTRCTag: int;
    var icSigGreenColorantTag: int;
    var icSigGreenMatrixColumnTag: int;
    var icSigGreenTRCTag: int;
    var icSigLuminanceTag: int;
    var icSigMeasurementTag: int;
    var icSigMediaBlackPointTag: int;
    var icSigMediaWhitePointTag: int;
    var icSigNamedColor2Tag: int;
    var icSigOutputResponseTag: int;
    var icSigPreview0Tag: int;
    var icSigPreview1Tag: int;
    var icSigPreview2Tag: int;
    var icSigProfileDescriptionTag: int;
    var icSigProfileSequenceDescTag: int;
    var icSigPs2CRD0Tag: int;
    var icSigPs2CRD1Tag: int;
    var icSigPs2CRD2Tag: int;
    var icSigPs2CRD3Tag: int;
    var icSigPs2CSATag: int;
    var icSigPs2RenderingIntentTag: int;
    var icSigRedColorantTag: int;
    var icSigRedMatrixColumnTag: int;
    var icSigRedTRCTag: int;
    var icSigScreeningDescTag: int;
    var icSigScreeningTag: int;
    var icSigTechnologyTag: int;
    var icSigUcrBgTag: int;
    var icSigViewingCondDescTag: int;
    var icSigViewingConditionsTag: int;
    var icSigChromaticityTag: int;
    var icSigChromaticAdaptationTag: int;
    var icSigColorantOrderTag: int;
    var icSigColorantTableTag: int;
    var icHdrSize: int;
    var icHdrCmmId: int;
    var icHdrVersion: int;
    var icHdrDeviceClass: int;
    var icHdrColorSpace: int;
    var icHdrPcs: int;
    var icHdrDate: int;
    var icHdrMagic: int;
    var icHdrPlatform: int;
    var icHdrFlags: int;
    var icHdrManufacturer: int;
    var icHdrModel: int;
    var icHdrAttributes: int;
    var icHdrRenderingIntent: int;
    var icHdrIlluminant: int;
    var icHdrCreator: int;
    var icHdrProfileID: int;
    var icTagType: int;
    var icTagReserved: int;
    var icCurveCount: int;
    var icCurveData: int;
    var icXYZNumberX: int;
}

type java.awt.color.ICC_Profile {
    var CLASS_INPUT: int;
    var CLASS_DISPLAY: int;
    var CLASS_OUTPUT: int;
    var CLASS_DEVICELINK: int;
    var CLASS_COLORSPACECONVERSION: int;
    var CLASS_ABSTRACT: int;
    var CLASS_NAMEDCOLOR: int;
    var icSigXYZData: int;
    var icSigLabData: int;
    var icSigLuvData: int;
    var icSigYCbCrData: int;
    var icSigYxyData: int;
    var icSigRgbData: int;
    var icSigGrayData: int;
    var icSigHsvData: int;
    var icSigHlsData: int;
    var icSigCmykData: int;
    var icSigCmyData: int;
    var icSigSpace2CLR: int;
    var icSigSpace3CLR: int;
    var icSigSpace4CLR: int;
    var icSigSpace5CLR: int;
    var icSigSpace6CLR: int;
    var icSigSpace7CLR: int;
    var icSigSpace8CLR: int;
    var icSigSpace9CLR: int;
    var icSigSpaceACLR: int;
    var icSigSpaceBCLR: int;
    var icSigSpaceCCLR: int;
    var icSigSpaceDCLR: int;
    var icSigSpaceECLR: int;
    var icSigSpaceFCLR: int;
    var icSigInputClass: int;
    var icSigDisplayClass: int;
    var icSigOutputClass: int;
    var icSigLinkClass: int;
    var icSigAbstractClass: int;
    var icSigColorSpaceClass: int;
    var icSigNamedColorClass: int;
    var icPerceptual: int;
    var icRelativeColorimetric: int;
    var icMediaRelativeColorimetric: int;
    var icSaturation: int;
    var icAbsoluteColorimetric: int;
    var icICCAbsoluteColorimetric: int;
    var icSigHead: int;
    var icSigAToB0Tag: int;
    var icSigAToB1Tag: int;
    var icSigAToB2Tag: int;
    var icSigBlueColorantTag: int;
    var icSigBlueMatrixColumnTag: int;
    var icSigBlueTRCTag: int;
    var icSigBToA0Tag: int;
    var icSigBToA1Tag: int;
    var icSigBToA2Tag: int;
    var icSigCalibrationDateTimeTag: int;
    var icSigCharTargetTag: int;
    var icSigCopyrightTag: int;
    var icSigCrdInfoTag: int;
    var icSigDeviceMfgDescTag: int;
    var icSigDeviceModelDescTag: int;
    var icSigDeviceSettingsTag: int;
    var icSigGamutTag: int;
    var icSigGrayTRCTag: int;
    var icSigGreenColorantTag: int;
    var icSigGreenMatrixColumnTag: int;
    var icSigGreenTRCTag: int;
    var icSigLuminanceTag: int;
    var icSigMeasurementTag: int;
    var icSigMediaBlackPointTag: int;
    var icSigMediaWhitePointTag: int;
    var icSigNamedColor2Tag: int;
    var icSigOutputResponseTag: int;
    var icSigPreview0Tag: int;
    var icSigPreview1Tag: int;
    var icSigPreview2Tag: int;
    var icSigProfileDescriptionTag: int;
    var icSigProfileSequenceDescTag: int;
    var icSigPs2CRD0Tag: int;
    var icSigPs2CRD1Tag: int;
    var icSigPs2CRD2Tag: int;
    var icSigPs2CRD3Tag: int;
    var icSigPs2CSATag: int;
    var icSigPs2RenderingIntentTag: int;
    var icSigRedColorantTag: int;
    var icSigRedMatrixColumnTag: int;
    var icSigRedTRCTag: int;
    var icSigScreeningDescTag: int;
    var icSigScreeningTag: int;
    var icSigTechnologyTag: int;
    var icSigUcrBgTag: int;
    var icSigViewingCondDescTag: int;
    var icSigViewingConditionsTag: int;
    var icSigChromaticityTag: int;
    var icSigChromaticAdaptationTag: int;
    var icSigColorantOrderTag: int;
    var icSigColorantTableTag: int;
    var icHdrSize: int;
    var icHdrCmmId: int;
    var icHdrVersion: int;
    var icHdrDeviceClass: int;
    var icHdrColorSpace: int;
    var icHdrPcs: int;
    var icHdrDate: int;
    var icHdrMagic: int;
    var icHdrPlatform: int;
    var icHdrFlags: int;
    var icHdrManufacturer: int;
    var icHdrModel: int;
    var icHdrAttributes: int;
    var icHdrRenderingIntent: int;
    var icHdrIlluminant: int;
    var icHdrCreator: int;
    var icHdrProfileID: int;
    var icTagType: int;
    var icTagReserved: int;
    var icCurveCount: int;
    var icCurveData: int;
    var icXYZNumberX: int;
}

type java.awt.color.CMMException {
}

type java.awt.PaintContext {
}

type java.awt.SecondaryLoop {
}

type java.awt.Paint {
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type java.awt.ModalEventFilter {
}

type java.awt.PrintJob {
}

type java.awt.CardLayout {
}

type java.awt.KeyEventDispatcher {
}

type java.awt.Adjustable {
    var HORIZONTAL: int;
    var VERTICAL: int;
    var NO_ORIENTATION: int;
}

type java.awt.SequencedEvent {
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.MediaTracker {
    var LOADING: int;
    var ABORTED: int;
    var ERRORED: int;
    var COMPLETE: int;
}

type java.awt.MenuShortcut {
}

type java.awt.Container {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.desktop.FilesEvent {
}

type java.awt.desktop.AppForegroundEvent {
}

type java.awt.desktop.AppForegroundListener {
}

type java.awt.desktop.OpenFilesHandler {
}

type java.awt.desktop.OpenURIEvent {
}

type java.awt.desktop.AppReopenedListener {
}

type java.awt.desktop.PrintFilesHandler {
}

type java.awt.desktop.QuitEvent {
}

type java.awt.desktop.AppEvent {
}

enum java.awt.desktop.QuitStrategy {
    NORMAL_EXIT = 0;
    CLOSE_ALL_WINDOWS = 1;
}

type java.awt.desktop.AppReopenedEvent {
}

type java.awt.desktop.PreferencesHandler {
}

type java.awt.desktop.QuitResponse {
}

type java.awt.desktop.SystemSleepEvent {
}

type java.awt.desktop.ScreenSleepListener {
}

type java.awt.desktop.AboutEvent {
}

type java.awt.desktop.SystemSleepListener {
}

type java.awt.desktop.OpenURIHandler {
}

type java.awt.desktop.PrintFilesEvent {
}

type java.awt.desktop.SystemEventListener {
}

type java.awt.desktop.PreferencesEvent {
}

type java.awt.desktop.UserSessionListener {
}

type java.awt.desktop.QuitHandler {
}

type java.awt.desktop.UserSessionEvent {
}

type java.awt.desktop.AppHiddenEvent {
}

type java.awt.desktop.OpenFilesEvent {
}

type java.awt.desktop.AboutHandler {
}

type java.awt.desktop.AppHiddenListener {
}

type java.awt.desktop.ScreenSleepEvent {
}

type java.awt.GridBagLayoutInfo {
}

type java.awt.TextComponent {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.MenuContainer {
}

type java.awt.GraphicsConfiguration {
}

type java.awt.peer.ButtonPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.LabelPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.CheckboxMenuItemPeer {
}

type java.awt.peer.TrayIconPeer {
}

type java.awt.peer.FileDialogPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.DesktopPeer {
}

type java.awt.peer.LightweightPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.ScrollPanePeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.ContainerPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.MenuPeer {
}

type java.awt.peer.ChoicePeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.KeyboardFocusManagerPeer {
}

type java.awt.peer.RobotPeer {
}

type java.awt.peer.TextComponentPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.DialogPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.WindowPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.FontPeer {
}

type java.awt.peer.PanelPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.MenuComponentPeer {
}

type java.awt.peer.CheckboxPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.TextAreaPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.ComponentPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.TextFieldPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.ListPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.MenuBarPeer {
}

type java.awt.peer.PopupMenuPeer {
}

type java.awt.peer.MouseInfoPeer {
}

type java.awt.peer.SystemTrayPeer {
}

type java.awt.peer.MenuItemPeer {
}

type java.awt.peer.FramePeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.TaskbarPeer {
}

type java.awt.peer.ScrollbarPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.peer.CanvasPeer {
    var SET_LOCATION: int;
    var SET_SIZE: int;
    var SET_BOUNDS: int;
    var SET_CLIENT_SIZE: int;
    var RESET_OPERATION: int;
    var NO_EMBEDDED_CHECK: int;
    var DEFAULT_OPERATION: int;
}

type java.awt.print.PrinterException {
}

type java.awt.print.PrinterAbortException {
}

type java.awt.print.Paper {
}

type java.awt.print.Pageable {
    var UNKNOWN_NUMBER_OF_PAGES: int;
}

type java.awt.print.Printable {
    var PAGE_EXISTS: int;
    var NO_SUCH_PAGE: int;
}

type java.awt.print.PageFormat {
    var LANDSCAPE: int;
    var PORTRAIT: int;
    var REVERSE_LANDSCAPE: int;
}

type java.awt.print.Book {
    var UNKNOWN_NUMBER_OF_PAGES: int;
}

type java.awt.print.PrinterGraphics {
}

type java.awt.print.PrinterIOException {
}

type java.awt.print.PrinterJob {
}

type java.awt.Image {
    var UndefinedProperty: java.lang.Object;
    var SCALE_DEFAULT: int;
    var SCALE_FAST: int;
    var SCALE_SMOOTH: int;
    var SCALE_REPLICATE: int;
    var SCALE_AREA_AVERAGING: int;
}

type java.awt.image.DataBufferUShort {
    var TYPE_BYTE: int;
    var TYPE_USHORT: int;
    var TYPE_SHORT: int;
    var TYPE_INT: int;
    var TYPE_FLOAT: int;
    var TYPE_DOUBLE: int;
    var TYPE_UNDEFINED: int;
}

type java.awt.image.Raster {
}

type java.awt.image.Kernel {
}

type java.awt.image.AffineTransformOp {
    var TYPE_NEAREST_NEIGHBOR: int;
    var TYPE_BILINEAR: int;
    var TYPE_BICUBIC: int;
}

type java.awt.image.ShortLookupTable {
}

type java.awt.image.BufferedImageFilter {
    var RANDOMPIXELORDER: int;
    var TOPDOWNLEFTRIGHT: int;
    var COMPLETESCANLINES: int;
    var SINGLEPASS: int;
    var SINGLEFRAME: int;
    var IMAGEERROR: int;
    var SINGLEFRAMEDONE: int;
    var STATICIMAGEDONE: int;
    var IMAGEABORTED: int;
}

type java.awt.image.BandedSampleModel {
}

type java.awt.image.VolatileImage {
    var IMAGE_OK: int;
    var IMAGE_RESTORED: int;
    var IMAGE_INCOMPATIBLE: int;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
    var UndefinedProperty: java.lang.Object;
    var SCALE_DEFAULT: int;
    var SCALE_FAST: int;
    var SCALE_SMOOTH: int;
    var SCALE_REPLICATE: int;
    var SCALE_AREA_AVERAGING: int;
}

type java.awt.image.ConvolveOp {
    var EDGE_ZERO_FILL: int;
    var EDGE_NO_OP: int;
}

type java.awt.image.PackedColorModel {
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type java.awt.image.AbstractMultiResolutionImage {
    var UndefinedProperty: java.lang.Object;
    var SCALE_DEFAULT: int;
    var SCALE_FAST: int;
    var SCALE_SMOOTH: int;
    var SCALE_REPLICATE: int;
    var SCALE_AREA_AVERAGING: int;
}

type java.awt.image.RasterOp {
}

type java.awt.image.DataBufferDouble {
    var TYPE_BYTE: int;
    var TYPE_USHORT: int;
    var TYPE_SHORT: int;
    var TYPE_INT: int;
    var TYPE_FLOAT: int;
    var TYPE_DOUBLE: int;
    var TYPE_UNDEFINED: int;
}

type java.awt.image.ReplicateScaleFilter {
    var RANDOMPIXELORDER: int;
    var TOPDOWNLEFTRIGHT: int;
    var COMPLETESCANLINES: int;
    var SINGLEPASS: int;
    var SINGLEFRAME: int;
    var IMAGEERROR: int;
    var SINGLEFRAMEDONE: int;
    var STATICIMAGEDONE: int;
    var IMAGEABORTED: int;
}

type java.awt.image.MemoryImageSource {
}

type java.awt.image.PixelGrabber {
    var RANDOMPIXELORDER: int;
    var TOPDOWNLEFTRIGHT: int;
    var COMPLETESCANLINES: int;
    var SINGLEPASS: int;
    var SINGLEFRAME: int;
    var IMAGEERROR: int;
    var SINGLEFRAMEDONE: int;
    var STATICIMAGEDONE: int;
    var IMAGEABORTED: int;
}

type java.awt.image.DataBufferByte {
    var TYPE_BYTE: int;
    var TYPE_USHORT: int;
    var TYPE_SHORT: int;
    var TYPE_INT: int;
    var TYPE_FLOAT: int;
    var TYPE_DOUBLE: int;
    var TYPE_UNDEFINED: int;
}

type java.awt.image.LookupOp {
}

type java.awt.image.ByteLookupTable {
}

type java.awt.image.ImageConsumer {
    var RANDOMPIXELORDER: int;
    var TOPDOWNLEFTRIGHT: int;
    var COMPLETESCANLINES: int;
    var SINGLEPASS: int;
    var SINGLEFRAME: int;
    var IMAGEERROR: int;
    var SINGLEFRAMEDONE: int;
    var STATICIMAGEDONE: int;
    var IMAGEABORTED: int;
}

type java.awt.image.BufferedImage {
    var TYPE_CUSTOM: int;
    var TYPE_INT_RGB: int;
    var TYPE_INT_ARGB: int;
    var TYPE_INT_ARGB_PRE: int;
    var TYPE_INT_BGR: int;
    var TYPE_3BYTE_BGR: int;
    var TYPE_4BYTE_ABGR: int;
    var TYPE_4BYTE_ABGR_PRE: int;
    var TYPE_USHORT_565_RGB: int;
    var TYPE_USHORT_555_RGB: int;
    var TYPE_BYTE_GRAY: int;
    var TYPE_USHORT_GRAY: int;
    var TYPE_BYTE_BINARY: int;
    var TYPE_BYTE_INDEXED: int;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
    var UndefinedProperty: java.lang.Object;
    var SCALE_DEFAULT: int;
    var SCALE_FAST: int;
    var SCALE_SMOOTH: int;
    var SCALE_REPLICATE: int;
    var SCALE_AREA_AVERAGING: int;
}

type java.awt.image.ImageObserver {
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.image.PixelInterleavedSampleModel {
}

type java.awt.image.ColorModel {
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type java.awt.image.DataBufferInt {
    var TYPE_BYTE: int;
    var TYPE_USHORT: int;
    var TYPE_SHORT: int;
    var TYPE_INT: int;
    var TYPE_FLOAT: int;
    var TYPE_DOUBLE: int;
    var TYPE_UNDEFINED: int;
}

type java.awt.image.BufferStrategy {
}

type java.awt.image.MultiPixelPackedSampleModel {
}

type java.awt.image.ImagingOpException {
}

type java.awt.image.CropImageFilter {
    var RANDOMPIXELORDER: int;
    var TOPDOWNLEFTRIGHT: int;
    var COMPLETESCANLINES: int;
    var SINGLEPASS: int;
    var SINGLEFRAME: int;
    var IMAGEERROR: int;
    var SINGLEFRAMEDONE: int;
    var STATICIMAGEDONE: int;
    var IMAGEABORTED: int;
}

type java.awt.image.ImageProducer {
}

type java.awt.image.renderable.ContextualRenderedImageFactory {
}

type java.awt.image.renderable.RenderableImageProducer {
}

type java.awt.image.renderable.RenderableImageOp {
    var HINTS_OBSERVED: java.lang.String;
}

type java.awt.image.renderable.RenderableImage {
    var HINTS_OBSERVED: java.lang.String;
}

type java.awt.image.renderable.ParameterBlock {
}

type java.awt.image.renderable.RenderedImageFactory {
}

type java.awt.image.renderable.RenderContext {
}

type java.awt.image.DataBufferFloat {
    var TYPE_BYTE: int;
    var TYPE_USHORT: int;
    var TYPE_SHORT: int;
    var TYPE_INT: int;
    var TYPE_FLOAT: int;
    var TYPE_DOUBLE: int;
    var TYPE_UNDEFINED: int;
}

type java.awt.image.AreaAveragingScaleFilter {
    var RANDOMPIXELORDER: int;
    var TOPDOWNLEFTRIGHT: int;
    var COMPLETESCANLINES: int;
    var SINGLEPASS: int;
    var SINGLEFRAME: int;
    var IMAGEERROR: int;
    var SINGLEFRAMEDONE: int;
    var STATICIMAGEDONE: int;
    var IMAGEABORTED: int;
}

type java.awt.image.ColorConvertOp {
}

type java.awt.image.WritableRenderedImage {
}

type java.awt.image.DataBufferShort {
    var TYPE_BYTE: int;
    var TYPE_USHORT: int;
    var TYPE_SHORT: int;
    var TYPE_INT: int;
    var TYPE_FLOAT: int;
    var TYPE_DOUBLE: int;
    var TYPE_UNDEFINED: int;
}

type java.awt.image.RenderedImage {
}

type java.awt.image.RasterFormatException {
}

type java.awt.image.RescaleOp {
}

type java.awt.image.FilteredImageSource {
}

type java.awt.image.ComponentSampleModel {
}

type java.awt.image.BandCombineOp {
}

type java.awt.image.IndexColorModel {
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type java.awt.image.TileObserver {
}

type java.awt.image.DataBuffer {
    var TYPE_BYTE: int;
    var TYPE_USHORT: int;
    var TYPE_SHORT: int;
    var TYPE_INT: int;
    var TYPE_FLOAT: int;
    var TYPE_DOUBLE: int;
    var TYPE_UNDEFINED: int;
}

type java.awt.image.WritableRaster {
}

type java.awt.image.LookupTable {
}

type java.awt.image.BufferedImageOp {
}

type java.awt.image.ImageFilter {
    var RANDOMPIXELORDER: int;
    var TOPDOWNLEFTRIGHT: int;
    var COMPLETESCANLINES: int;
    var SINGLEPASS: int;
    var SINGLEFRAME: int;
    var IMAGEERROR: int;
    var SINGLEFRAMEDONE: int;
    var STATICIMAGEDONE: int;
    var IMAGEABORTED: int;
}

type java.awt.image.SampleModel {
}

type java.awt.image.DirectColorModel {
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type java.awt.image.MultiResolutionImage {
}

type java.awt.image.ComponentColorModel {
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type java.awt.image.RGBImageFilter {
    var RANDOMPIXELORDER: int;
    var TOPDOWNLEFTRIGHT: int;
    var COMPLETESCANLINES: int;
    var SINGLEPASS: int;
    var SINGLEFRAME: int;
    var IMAGEERROR: int;
    var SINGLEFRAMEDONE: int;
    var STATICIMAGEDONE: int;
    var IMAGEABORTED: int;
}

type java.awt.image.SinglePixelPackedSampleModel {
}

type java.awt.image.BaseMultiResolutionImage {
    var UndefinedProperty: java.lang.Object;
    var SCALE_DEFAULT: int;
    var SCALE_FAST: int;
    var SCALE_SMOOTH: int;
    var SCALE_REPLICATE: int;
    var SCALE_AREA_AVERAGING: int;
}

type java.awt.ScrollPane {
    var SCROLLBARS_AS_NEEDED: int;
    var SCROLLBARS_ALWAYS: int;
    var SCROLLBARS_NEVER: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.RadialGradientPaint {
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type java.awt.Frame {
    var DEFAULT_CURSOR: int;
    var CROSSHAIR_CURSOR: int;
    var TEXT_CURSOR: int;
    var WAIT_CURSOR: int;
    var SW_RESIZE_CURSOR: int;
    var SE_RESIZE_CURSOR: int;
    var NW_RESIZE_CURSOR: int;
    var NE_RESIZE_CURSOR: int;
    var N_RESIZE_CURSOR: int;
    var S_RESIZE_CURSOR: int;
    var W_RESIZE_CURSOR: int;
    var E_RESIZE_CURSOR: int;
    var HAND_CURSOR: int;
    var MOVE_CURSOR: int;
    var NORMAL: int;
    var ICONIFIED: int;
    var MAXIMIZED_HORIZ: int;
    var MAXIMIZED_VERT: int;
    var MAXIMIZED_BOTH: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.ItemSelectable {
}

type java.awt.DisplayMode {
    var BIT_DEPTH_MULTI: int;
    var REFRESH_RATE_UNKNOWN: int;
}

type java.awt.List {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.GraphicsConfigTemplate {
    var REQUIRED: int;
    var PREFERRED: int;
    var UNNECESSARY: int;
}

type java.awt.BorderLayout {
    var NORTH: java.lang.String;
    var SOUTH: java.lang.String;
    var EAST: java.lang.String;
    var WEST: java.lang.String;
    var CENTER: java.lang.String;
    var BEFORE_FIRST_LINE: java.lang.String;
    var AFTER_LAST_LINE: java.lang.String;
    var BEFORE_LINE_BEGINS: java.lang.String;
    var AFTER_LINE_ENDS: java.lang.String;
    var PAGE_START: java.lang.String;
    var PAGE_END: java.lang.String;
    var LINE_START: java.lang.String;
    var LINE_END: java.lang.String;
}

type java.awt.Desktop {
}

type java.awt.GraphicsDevice {
    var TYPE_RASTER_SCREEN: int;
    var TYPE_PRINTER: int;
    var TYPE_IMAGE_BUFFER: int;
}

type java.awt.BasicStroke {
    var JOIN_MITER: int;
    var JOIN_ROUND: int;
    var JOIN_BEVEL: int;
    var CAP_BUTT: int;
    var CAP_ROUND: int;
    var CAP_SQUARE: int;
}

type java.awt.TexturePaint {
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type java.awt.GraphicsCallback {
    var HEAVYWEIGHTS: int;
    var LIGHTWEIGHTS: int;
    var TWO_PASSES: int;
}

type java.awt.Canvas {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.GridBagLayout {
    var columnWidths: array<int>;
    var rowHeights: array<int>;
    var columnWeights: array<double>;
    var rowWeights: array<double>;
}

type java.awt.Window {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.TextField {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.LayoutManager2 {
}

type java.awt.MultipleGradientPaintContext {
}

type java.awt.Dimension {
    var width: int;
    var height: int;
}

type java.awt.DefaultKeyboardFocusManager {
    var FORWARD_TRAVERSAL_KEYS: int;
    var BACKWARD_TRAVERSAL_KEYS: int;
    var UP_CYCLE_TRAVERSAL_KEYS: int;
    var DOWN_CYCLE_TRAVERSAL_KEYS: int;
}

type java.awt.TexturePaintContext {
    var xrgbmodel: java.awt.image.ColorModel;
    var argbmodel: java.awt.image.ColorModel;
}

type java.awt.Conditional {
}

type java.awt.Shape {
}

type java.awt.FlowLayout {
    var LEFT: int;
    var CENTER: int;
    var RIGHT: int;
    var LEADING: int;
    var TRAILING: int;
}

type java.awt.geom.RoundRectangle2D {
}

type java.awt.geom.Ellipse2D {
}

type java.awt.geom.IllegalPathStateException {
}

type java.awt.geom.CubicCurve2D {
}

type java.awt.geom.EllipseIterator {
    var CtrlVal: double;
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var SEG_MOVETO: int;
    var SEG_LINETO: int;
    var SEG_QUADTO: int;
    var SEG_CUBICTO: int;
    var SEG_CLOSE: int;
}

type java.awt.geom.RectIterator {
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var SEG_MOVETO: int;
    var SEG_LINETO: int;
    var SEG_QUADTO: int;
    var SEG_CUBICTO: int;
    var SEG_CLOSE: int;
}

type java.awt.geom.RoundRectIterator {
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var SEG_MOVETO: int;
    var SEG_LINETO: int;
    var SEG_QUADTO: int;
    var SEG_CUBICTO: int;
    var SEG_CLOSE: int;
}

type java.awt.geom.Dimension2D {
}

type java.awt.geom.Arc2D {
    var OPEN: int;
    var CHORD: int;
    var PIE: int;
}

type java.awt.geom.AreaIterator {
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var SEG_MOVETO: int;
    var SEG_LINETO: int;
    var SEG_QUADTO: int;
    var SEG_CUBICTO: int;
    var SEG_CLOSE: int;
}

type java.awt.geom.AffineTransform {
    var TYPE_IDENTITY: int;
    var TYPE_TRANSLATION: int;
    var TYPE_UNIFORM_SCALE: int;
    var TYPE_GENERAL_SCALE: int;
    var TYPE_MASK_SCALE: int;
    var TYPE_FLIP: int;
    var TYPE_QUADRANT_ROTATION: int;
    var TYPE_GENERAL_ROTATION: int;
    var TYPE_MASK_ROTATION: int;
    var TYPE_GENERAL_TRANSFORM: int;
}

type java.awt.geom.Path2D {
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
}

type java.awt.geom.Point2D {
}

type java.awt.geom.CubicIterator {
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var SEG_MOVETO: int;
    var SEG_LINETO: int;
    var SEG_QUADTO: int;
    var SEG_CUBICTO: int;
    var SEG_CLOSE: int;
}

type java.awt.geom.FlatteningPathIterator {
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var SEG_MOVETO: int;
    var SEG_LINETO: int;
    var SEG_QUADTO: int;
    var SEG_CUBICTO: int;
    var SEG_CLOSE: int;
}

type java.awt.geom.QuadCurve2D {
}

type java.awt.geom.Area {
}

type java.awt.geom.PathIterator {
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var SEG_MOVETO: int;
    var SEG_LINETO: int;
    var SEG_QUADTO: int;
    var SEG_CUBICTO: int;
    var SEG_CLOSE: int;
}

type java.awt.geom.RectangularShape {
}

type java.awt.geom.ArcIterator {
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var SEG_MOVETO: int;
    var SEG_LINETO: int;
    var SEG_QUADTO: int;
    var SEG_CUBICTO: int;
    var SEG_CLOSE: int;
}

type java.awt.geom.NoninvertibleTransformException {
}

type java.awt.geom.Rectangle2D {
    var OUT_LEFT: int;
    var OUT_TOP: int;
    var OUT_RIGHT: int;
    var OUT_BOTTOM: int;
}

type java.awt.geom.LineIterator {
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var SEG_MOVETO: int;
    var SEG_LINETO: int;
    var SEG_QUADTO: int;
    var SEG_CUBICTO: int;
    var SEG_CLOSE: int;
}

type java.awt.geom.GeneralPath {
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
}

type java.awt.geom.QuadIterator {
    var WIND_EVEN_ODD: int;
    var WIND_NON_ZERO: int;
    var SEG_MOVETO: int;
    var SEG_LINETO: int;
    var SEG_QUADTO: int;
    var SEG_CUBICTO: int;
    var SEG_CLOSE: int;
}

type java.awt.geom.Line2D {
}

type java.awt.Point {
    var x: int;
    var y: int;
}

type java.awt.AlphaComposite {
    var CLEAR: int;
    var SRC: int;
    var DST: int;
    var SRC_OVER: int;
    var DST_OVER: int;
    var SRC_IN: int;
    var DST_IN: int;
    var SRC_OUT: int;
    var DST_OUT: int;
    var SRC_ATOP: int;
    var DST_ATOP: int;
    var XOR: int;
    var Clear: java.awt.AlphaComposite;
    var Src: java.awt.AlphaComposite;
    var Dst: java.awt.AlphaComposite;
    var SrcOver: java.awt.AlphaComposite;
    var DstOver: java.awt.AlphaComposite;
    var SrcIn: java.awt.AlphaComposite;
    var DstIn: java.awt.AlphaComposite;
    var SrcOut: java.awt.AlphaComposite;
    var DstOut: java.awt.AlphaComposite;
    var SrcAtop: java.awt.AlphaComposite;
    var DstAtop: java.awt.AlphaComposite;
    var Xor: java.awt.AlphaComposite;
}

type java.awt.WaitDispatchSupport {
}

type java.awt.ContainerOrderFocusTraversalPolicy {
}

type java.awt.VKCollection {
}

type java.awt.HeadlessException {
}

type java.awt.ScrollPaneAdjustable {
    var HORIZONTAL: int;
    var VERTICAL: int;
    var NO_ORIENTATION: int;
}

type java.awt.Queue {
}

type java.awt.FontFormatException {
}

type java.awt.LinearGradientPaint {
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type java.awt.ImageCapabilities {
}

type java.awt.SplashScreen {
}

type java.awt.Component {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.MenuItem {
}

type java.awt.MenuComponent {
}

type java.awt.GridBagConstraints {
    var RELATIVE: int;
    var REMAINDER: int;
    var NONE: int;
    var BOTH: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var CENTER: int;
    var NORTH: int;
    var NORTHEAST: int;
    var EAST: int;
    var SOUTHEAST: int;
    var SOUTH: int;
    var SOUTHWEST: int;
    var WEST: int;
    var NORTHWEST: int;
    var PAGE_START: int;
    var PAGE_END: int;
    var LINE_START: int;
    var LINE_END: int;
    var FIRST_LINE_START: int;
    var FIRST_LINE_END: int;
    var LAST_LINE_START: int;
    var LAST_LINE_END: int;
    var BASELINE: int;
    var BASELINE_LEADING: int;
    var BASELINE_TRAILING: int;
    var ABOVE_BASELINE: int;
    var ABOVE_BASELINE_LEADING: int;
    var ABOVE_BASELINE_TRAILING: int;
    var BELOW_BASELINE: int;
    var BELOW_BASELINE_LEADING: int;
    var BELOW_BASELINE_TRAILING: int;
    var gridx: int;
    var gridy: int;
    var gridwidth: int;
    var gridheight: int;
    var weightx: double;
    var weighty: double;
    var anchor: int;
    var fill: int;
    var insets: java.awt.Insets;
    var ipadx: int;
    var ipady: int;
}

type java.awt.CompositeContext {
}

type java.awt.EventQueue {
}

type java.awt.MediaEntry {
}

type java.awt.im.InputContext {
}

type java.awt.im.InputSubset {
    var LATIN: java.awt.im.InputSubset;
    var LATIN_DIGITS: java.awt.im.InputSubset;
    var TRADITIONAL_HANZI: java.awt.im.InputSubset;
    var SIMPLIFIED_HANZI: java.awt.im.InputSubset;
    var KANJI: java.awt.im.InputSubset;
    var HANJA: java.awt.im.InputSubset;
    var HALFWIDTH_KATAKANA: java.awt.im.InputSubset;
    var FULLWIDTH_LATIN: java.awt.im.InputSubset;
    var FULLWIDTH_DIGITS: java.awt.im.InputSubset;
}

type java.awt.im.spi.InputMethod {
}

type java.awt.im.spi.InputMethodDescriptor {
}

type java.awt.im.spi.InputMethodContext {
}

type java.awt.im.InputMethodRequests {
}

type java.awt.im.InputMethodHighlight {
    var RAW_TEXT: int;
    var CONVERTED_TEXT: int;
    var UNSELECTED_RAW_TEXT_HIGHLIGHT: java.awt.im.InputMethodHighlight;
    var SELECTED_RAW_TEXT_HIGHLIGHT: java.awt.im.InputMethodHighlight;
    var UNSELECTED_CONVERTED_TEXT_HIGHLIGHT: java.awt.im.InputMethodHighlight;
    var SELECTED_CONVERTED_TEXT_HIGHLIGHT: java.awt.im.InputMethodHighlight;
}

type java.awt.Polygon {
    var npoints: int;
    var xpoints: array<int>;
    var ypoints: array<int>;
}

type java.awt.AWTException {
}

type java.awt.EventFilter {
}

type java.awt.AWTPermission {
}

type java.awt.Menu {
}

type java.awt.Graphics {
}

type java.awt.Font {
    var DIALOG: java.lang.String;
    var DIALOG_INPUT: java.lang.String;
    var SANS_SERIF: java.lang.String;
    var SERIF: java.lang.String;
    var MONOSPACED: java.lang.String;
    var PLAIN: int;
    var BOLD: int;
    var ITALIC: int;
    var ROMAN_BASELINE: int;
    var CENTER_BASELINE: int;
    var HANGING_BASELINE: int;
    var TRUETYPE_FONT: int;
    var TYPE1_FONT: int;
    var LAYOUT_LEFT_TO_RIGHT: int;
    var LAYOUT_RIGHT_TO_LEFT: int;
    var LAYOUT_NO_START_CONTEXT: int;
    var LAYOUT_NO_LIMIT_CONTEXT: int;
}

type java.awt.PrintGraphics {
}

type java.awt.GradientPaint {
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type java.awt.SystemTray {
}

type java.awt.KeyboardFocusManager {
    var FORWARD_TRAVERSAL_KEYS: int;
    var BACKWARD_TRAVERSAL_KEYS: int;
    var UP_CYCLE_TRAVERSAL_KEYS: int;
    var DOWN_CYCLE_TRAVERSAL_KEYS: int;
}

type java.awt.Insets {
    var top: int;
    var left: int;
    var bottom: int;
    var right: int;
}

type java.awt.Checkbox {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.font.ImageGraphicAttribute {
    var TOP_ALIGNMENT: int;
    var BOTTOM_ALIGNMENT: int;
    var ROMAN_BASELINE: int;
    var CENTER_BASELINE: int;
    var HANGING_BASELINE: int;
}

type java.awt.font.TextLine {
}

type java.awt.font.ShapeGraphicAttribute {
    var STROKE: boolean;
    var FILL: boolean;
    var TOP_ALIGNMENT: int;
    var BOTTOM_ALIGNMENT: int;
    var ROMAN_BASELINE: int;
    var CENTER_BASELINE: int;
    var HANGING_BASELINE: int;
}

type java.awt.font.MultipleMaster {
}

type java.awt.font.TextMeasurer {
}

type java.awt.font.OpenType {
    var TAG_CMAP: int;
    var TAG_HEAD: int;
    var TAG_NAME: int;
    var TAG_GLYF: int;
    var TAG_MAXP: int;
    var TAG_PREP: int;
    var TAG_HMTX: int;
    var TAG_KERN: int;
    var TAG_HDMX: int;
    var TAG_LOCA: int;
    var TAG_POST: int;
    var TAG_OS2: int;
    var TAG_CVT: int;
    var TAG_GASP: int;
    var TAG_VDMX: int;
    var TAG_VMTX: int;
    var TAG_VHEA: int;
    var TAG_HHEA: int;
    var TAG_TYP1: int;
    var TAG_BSLN: int;
    var TAG_GSUB: int;
    var TAG_DSIG: int;
    var TAG_FPGM: int;
    var TAG_FVAR: int;
    var TAG_GVAR: int;
    var TAG_CFF: int;
    var TAG_MMSD: int;
    var TAG_MMFX: int;
    var TAG_BASE: int;
    var TAG_GDEF: int;
    var TAG_GPOS: int;
    var TAG_JSTF: int;
    var TAG_EBDT: int;
    var TAG_EBLC: int;
    var TAG_EBSC: int;
    var TAG_LTSH: int;
    var TAG_PCLT: int;
    var TAG_ACNT: int;
    var TAG_AVAR: int;
    var TAG_BDAT: int;
    var TAG_BLOC: int;
    var TAG_CVAR: int;
    var TAG_FEAT: int;
    var TAG_FDSC: int;
    var TAG_FMTX: int;
    var TAG_JUST: int;
    var TAG_LCAR: int;
    var TAG_MORT: int;
    var TAG_OPBD: int;
    var TAG_PROP: int;
    var TAG_TRAK: int;
}

type java.awt.font.LineBreakMeasurer {
}

type java.awt.font.TextAttribute {
    var FAMILY: java.awt.font.TextAttribute;
    var WEIGHT: java.awt.font.TextAttribute;
    var WEIGHT_EXTRA_LIGHT: java.lang.Float;
    var WEIGHT_LIGHT: java.lang.Float;
    var WEIGHT_DEMILIGHT: java.lang.Float;
    var WEIGHT_REGULAR: java.lang.Float;
    var WEIGHT_SEMIBOLD: java.lang.Float;
    var WEIGHT_MEDIUM: java.lang.Float;
    var WEIGHT_DEMIBOLD: java.lang.Float;
    var WEIGHT_BOLD: java.lang.Float;
    var WEIGHT_HEAVY: java.lang.Float;
    var WEIGHT_EXTRABOLD: java.lang.Float;
    var WEIGHT_ULTRABOLD: java.lang.Float;
    var WIDTH: java.awt.font.TextAttribute;
    var WIDTH_CONDENSED: java.lang.Float;
    var WIDTH_SEMI_CONDENSED: java.lang.Float;
    var WIDTH_REGULAR: java.lang.Float;
    var WIDTH_SEMI_EXTENDED: java.lang.Float;
    var WIDTH_EXTENDED: java.lang.Float;
    var POSTURE: java.awt.font.TextAttribute;
    var POSTURE_REGULAR: java.lang.Float;
    var POSTURE_OBLIQUE: java.lang.Float;
    var SIZE: java.awt.font.TextAttribute;
    var TRANSFORM: java.awt.font.TextAttribute;
    var SUPERSCRIPT: java.awt.font.TextAttribute;
    var SUPERSCRIPT_SUPER: java.lang.Integer;
    var SUPERSCRIPT_SUB: java.lang.Integer;
    var FONT: java.awt.font.TextAttribute;
    var CHAR_REPLACEMENT: java.awt.font.TextAttribute;
    var FOREGROUND: java.awt.font.TextAttribute;
    var BACKGROUND: java.awt.font.TextAttribute;
    var UNDERLINE: java.awt.font.TextAttribute;
    var UNDERLINE_ON: java.lang.Integer;
    var STRIKETHROUGH: java.awt.font.TextAttribute;
    var STRIKETHROUGH_ON: java.lang.Boolean;
    var RUN_DIRECTION: java.awt.font.TextAttribute;
    var RUN_DIRECTION_LTR: java.lang.Boolean;
    var RUN_DIRECTION_RTL: java.lang.Boolean;
    var BIDI_EMBEDDING: java.awt.font.TextAttribute;
    var JUSTIFICATION: java.awt.font.TextAttribute;
    var JUSTIFICATION_FULL: java.lang.Float;
    var JUSTIFICATION_NONE: java.lang.Float;
    var INPUT_METHOD_HIGHLIGHT: java.awt.font.TextAttribute;
    var INPUT_METHOD_UNDERLINE: java.awt.font.TextAttribute;
    var UNDERLINE_LOW_ONE_PIXEL: java.lang.Integer;
    var UNDERLINE_LOW_TWO_PIXEL: java.lang.Integer;
    var UNDERLINE_LOW_DOTTED: java.lang.Integer;
    var UNDERLINE_LOW_GRAY: java.lang.Integer;
    var UNDERLINE_LOW_DASHED: java.lang.Integer;
    var SWAP_COLORS: java.awt.font.TextAttribute;
    var SWAP_COLORS_ON: java.lang.Boolean;
    var NUMERIC_SHAPING: java.awt.font.TextAttribute;
    var KERNING: java.awt.font.TextAttribute;
    var KERNING_ON: java.lang.Integer;
    var LIGATURES: java.awt.font.TextAttribute;
    var LIGATURES_ON: java.lang.Integer;
    var TRACKING: java.awt.font.TextAttribute;
    var TRACKING_TIGHT: java.lang.Float;
    var TRACKING_LOOSE: java.lang.Float;
}

type java.awt.font.LayoutPath {
}

type java.awt.font.StyledParagraph {
}

type java.awt.font.GlyphJustificationInfo {
    var PRIORITY_KASHIDA: int;
    var PRIORITY_WHITESPACE: int;
    var PRIORITY_INTERCHAR: int;
    var PRIORITY_NONE: int;
    var weight: float;
    var growPriority: int;
    var growAbsorb: boolean;
    var growLeftLimit: float;
    var growRightLimit: float;
    var shrinkPriority: int;
    var shrinkAbsorb: boolean;
    var shrinkLeftLimit: float;
    var shrinkRightLimit: float;
}

type java.awt.font.CharArrayIterator {
    var DONE: char;
}

type java.awt.font.TextJustifier {
    var MAX_PRIORITY: int;
}

type java.awt.font.FontRenderContext {
}

type java.awt.font.NumericShaper {
    var EUROPEAN: int;
    var ARABIC: int;
    var EASTERN_ARABIC: int;
    var DEVANAGARI: int;
    var BENGALI: int;
    var GURMUKHI: int;
    var GUJARATI: int;
    var ORIYA: int;
    var TAMIL: int;
    var TELUGU: int;
    var KANNADA: int;
    var MALAYALAM: int;
    var THAI: int;
    var LAO: int;
    var TIBETAN: int;
    var MYANMAR: int;
    var ETHIOPIC: int;
    var KHMER: int;
    var MONGOLIAN: int;
    var ALL_RANGES: int;
}

type java.awt.font.LineMetrics {
}

type java.awt.font.TransformAttribute {
    var IDENTITY: java.awt.font.TransformAttribute;
}

type java.awt.font.TextHitInfo {
}

type java.awt.font.JavaAWTFontAccessImpl {
}

type java.awt.font.GraphicAttribute {
    var TOP_ALIGNMENT: int;
    var BOTTOM_ALIGNMENT: int;
    var ROMAN_BASELINE: int;
    var CENTER_BASELINE: int;
    var HANGING_BASELINE: int;
}

type java.awt.font.GlyphMetrics {
    var STANDARD: byte;
    var LIGATURE: byte;
    var COMBINING: byte;
    var COMPONENT: byte;
    var WHITESPACE: byte;
}

type java.awt.font.GlyphVector {
    var FLAG_HAS_TRANSFORMS: int;
    var FLAG_HAS_POSITION_ADJUSTMENTS: int;
    var FLAG_RUN_RTL: int;
    var FLAG_COMPLEX_GLYPHS: int;
    var FLAG_MASK: int;
}

type java.awt.font.TextLayout {
}

type java.awt.Scrollbar {
    var HORIZONTAL: int;
    var VERTICAL: int;
    var NO_ORIENTATION: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.MultipleGradientPaint {
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type java.awt.MouseInfo {
}

type java.awt.SystemColor {
    var DESKTOP: int;
    var ACTIVE_CAPTION: int;
    var ACTIVE_CAPTION_TEXT: int;
    var ACTIVE_CAPTION_BORDER: int;
    var INACTIVE_CAPTION: int;
    var INACTIVE_CAPTION_TEXT: int;
    var INACTIVE_CAPTION_BORDER: int;
    var WINDOW: int;
    var WINDOW_BORDER: int;
    var WINDOW_TEXT: int;
    var MENU: int;
    var MENU_TEXT: int;
    var TEXT: int;
    var TEXT_TEXT: int;
    var TEXT_HIGHLIGHT: int;
    var TEXT_HIGHLIGHT_TEXT: int;
    var TEXT_INACTIVE_TEXT: int;
    var CONTROL: int;
    var CONTROL_TEXT: int;
    var CONTROL_HIGHLIGHT: int;
    var CONTROL_LT_HIGHLIGHT: int;
    var CONTROL_SHADOW: int;
    var CONTROL_DK_SHADOW: int;
    var SCROLLBAR: int;
    var INFO: int;
    var INFO_TEXT: int;
    var NUM_COLORS: int;
    var desktop: java.awt.SystemColor;
    var activeCaption: java.awt.SystemColor;
    var activeCaptionText: java.awt.SystemColor;
    var activeCaptionBorder: java.awt.SystemColor;
    var inactiveCaption: java.awt.SystemColor;
    var inactiveCaptionText: java.awt.SystemColor;
    var inactiveCaptionBorder: java.awt.SystemColor;
    var window: java.awt.SystemColor;
    var windowBorder: java.awt.SystemColor;
    var windowText: java.awt.SystemColor;
    var menu: java.awt.SystemColor;
    var menuText: java.awt.SystemColor;
    var text: java.awt.SystemColor;
    var textText: java.awt.SystemColor;
    var textHighlight: java.awt.SystemColor;
    var textHighlightText: java.awt.SystemColor;
    var textInactiveText: java.awt.SystemColor;
    var control: java.awt.SystemColor;
    var controlText: java.awt.SystemColor;
    var controlHighlight: java.awt.SystemColor;
    var controlLtHighlight: java.awt.SystemColor;
    var controlShadow: java.awt.SystemColor;
    var controlDkShadow: java.awt.SystemColor;
    var scrollbar: java.awt.SystemColor;
    var info: java.awt.SystemColor;
    var infoText: java.awt.SystemColor;
    var white: java.awt.Color;
    var WHITE: java.awt.Color;
    var lightGray: java.awt.Color;
    var LIGHT_GRAY: java.awt.Color;
    var gray: java.awt.Color;
    var GRAY: java.awt.Color;
    var darkGray: java.awt.Color;
    var DARK_GRAY: java.awt.Color;
    var black: java.awt.Color;
    var BLACK: java.awt.Color;
    var red: java.awt.Color;
    var RED: java.awt.Color;
    var pink: java.awt.Color;
    var PINK: java.awt.Color;
    var orange: java.awt.Color;
    var ORANGE: java.awt.Color;
    var yellow: java.awt.Color;
    var YELLOW: java.awt.Color;
    var green: java.awt.Color;
    var GREEN: java.awt.Color;
    var magenta: java.awt.Color;
    var MAGENTA: java.awt.Color;
    var cyan: java.awt.Color;
    var CYAN: java.awt.Color;
    var blue: java.awt.Color;
    var BLUE: java.awt.Color;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type java.awt.FontMetrics {
}

type java.awt.Cursor {
    var DEFAULT_CURSOR: int;
    var CROSSHAIR_CURSOR: int;
    var TEXT_CURSOR: int;
    var WAIT_CURSOR: int;
    var SW_RESIZE_CURSOR: int;
    var SE_RESIZE_CURSOR: int;
    var NW_RESIZE_CURSOR: int;
    var NE_RESIZE_CURSOR: int;
    var N_RESIZE_CURSOR: int;
    var S_RESIZE_CURSOR: int;
    var W_RESIZE_CURSOR: int;
    var E_RESIZE_CURSOR: int;
    var HAND_CURSOR: int;
    var MOVE_CURSOR: int;
    var CUSTOM_CURSOR: int;
}

type java.awt.ComponentOrientation {
    var LEFT_TO_RIGHT: java.awt.ComponentOrientation;
    var RIGHT_TO_LEFT: java.awt.ComponentOrientation;
    var UNKNOWN: java.awt.ComponentOrientation;
}

type java.awt.Transparency {
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type java.awt.AWTKeyStroke {
}

type java.awt.SentEvent {
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.Rectangle {
    var x: int;
    var y: int;
    var width: int;
    var height: int;
    var OUT_LEFT: int;
    var OUT_TOP: int;
    var OUT_RIGHT: int;
    var OUT_BOTTOM: int;
}

type java.awt.Stroke {
}

type java.awt.Choice {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.event.KeyListener {
}

type java.awt.event.FocusEvent {
    var FOCUS_FIRST: int;
    var FOCUS_LAST: int;
    var FOCUS_GAINED: int;
    var FOCUS_LOST: int;
    var COMPONENT_FIRST: int;
    var COMPONENT_LAST: int;
    var COMPONENT_MOVED: int;
    var COMPONENT_RESIZED: int;
    var COMPONENT_SHOWN: int;
    var COMPONENT_HIDDEN: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.event.TextListener {
}

type java.awt.event.MouseAdapter {
}

type java.awt.event.AdjustmentListener {
}

type java.awt.event.MouseMotionAdapter {
}

type java.awt.event.WindowFocusListener {
}

type java.awt.event.ContainerAdapter {
}

type java.awt.event.WindowListener {
}

type java.awt.event.HierarchyEvent {
    var HIERARCHY_FIRST: int;
    var HIERARCHY_CHANGED: int;
    var ANCESTOR_MOVED: int;
    var ANCESTOR_RESIZED: int;
    var HIERARCHY_LAST: int;
    var PARENT_CHANGED: int;
    var DISPLAYABILITY_CHANGED: int;
    var SHOWING_CHANGED: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.event.HierarchyBoundsListener {
}

type java.awt.event.ContainerEvent {
    var CONTAINER_FIRST: int;
    var CONTAINER_LAST: int;
    var COMPONENT_ADDED: int;
    var COMPONENT_REMOVED: int;
    var COMPONENT_FIRST: int;
    var COMPONENT_LAST: int;
    var COMPONENT_MOVED: int;
    var COMPONENT_RESIZED: int;
    var COMPONENT_SHOWN: int;
    var COMPONENT_HIDDEN: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.event.NativeLibLoader {
}

type java.awt.event.ComponentEvent {
    var COMPONENT_FIRST: int;
    var COMPONENT_LAST: int;
    var COMPONENT_MOVED: int;
    var COMPONENT_RESIZED: int;
    var COMPONENT_SHOWN: int;
    var COMPONENT_HIDDEN: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.event.HierarchyListener {
}

type java.awt.event.KeyAdapter {
}

type java.awt.event.WindowStateListener {
}

type java.awt.event.InputMethodListener {
}

type java.awt.event.ContainerListener {
}

type java.awt.event.MouseWheelEvent {
    var WHEEL_UNIT_SCROLL: int;
    var WHEEL_BLOCK_SCROLL: int;
    var MOUSE_FIRST: int;
    var MOUSE_LAST: int;
    var MOUSE_CLICKED: int;
    var MOUSE_PRESSED: int;
    var MOUSE_RELEASED: int;
    var MOUSE_MOVED: int;
    var MOUSE_ENTERED: int;
    var MOUSE_EXITED: int;
    var MOUSE_DRAGGED: int;
    var MOUSE_WHEEL: int;
    var NOBUTTON: int;
    var BUTTON1: int;
    var BUTTON2: int;
    var BUTTON3: int;
    var SHIFT_MASK: int;
    var CTRL_MASK: int;
    var META_MASK: int;
    var ALT_MASK: int;
    var ALT_GRAPH_MASK: int;
    var BUTTON1_MASK: int;
    var BUTTON2_MASK: int;
    var BUTTON3_MASK: int;
    var SHIFT_DOWN_MASK: int;
    var CTRL_DOWN_MASK: int;
    var META_DOWN_MASK: int;
    var ALT_DOWN_MASK: int;
    var BUTTON1_DOWN_MASK: int;
    var BUTTON2_DOWN_MASK: int;
    var BUTTON3_DOWN_MASK: int;
    var ALT_GRAPH_DOWN_MASK: int;
    var COMPONENT_FIRST: int;
    var COMPONENT_LAST: int;
    var COMPONENT_MOVED: int;
    var COMPONENT_RESIZED: int;
    var COMPONENT_SHOWN: int;
    var COMPONENT_HIDDEN: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.event.ActionListener {
}

type java.awt.event.MouseWheelListener {
}

type java.awt.event.ItemEvent {
    var ITEM_FIRST: int;
    var ITEM_LAST: int;
    var ITEM_STATE_CHANGED: int;
    var SELECTED: int;
    var DESELECTED: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.event.PaintEvent {
    var PAINT_FIRST: int;
    var PAINT_LAST: int;
    var PAINT: int;
    var UPDATE: int;
    var COMPONENT_FIRST: int;
    var COMPONENT_LAST: int;
    var COMPONENT_MOVED: int;
    var COMPONENT_RESIZED: int;
    var COMPONENT_SHOWN: int;
    var COMPONENT_HIDDEN: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.event.HierarchyBoundsAdapter {
}

type java.awt.event.ItemListener {
}

type java.awt.event.AWTEventListenerProxy {
}

type java.awt.event.FocusListener {
}

type java.awt.event.AWTEventListener {
}

type java.awt.event.MouseEvent {
    var MOUSE_FIRST: int;
    var MOUSE_LAST: int;
    var MOUSE_CLICKED: int;
    var MOUSE_PRESSED: int;
    var MOUSE_RELEASED: int;
    var MOUSE_MOVED: int;
    var MOUSE_ENTERED: int;
    var MOUSE_EXITED: int;
    var MOUSE_DRAGGED: int;
    var MOUSE_WHEEL: int;
    var NOBUTTON: int;
    var BUTTON1: int;
    var BUTTON2: int;
    var BUTTON3: int;
    var SHIFT_MASK: int;
    var CTRL_MASK: int;
    var META_MASK: int;
    var ALT_MASK: int;
    var ALT_GRAPH_MASK: int;
    var BUTTON1_MASK: int;
    var BUTTON2_MASK: int;
    var BUTTON3_MASK: int;
    var SHIFT_DOWN_MASK: int;
    var CTRL_DOWN_MASK: int;
    var META_DOWN_MASK: int;
    var ALT_DOWN_MASK: int;
    var BUTTON1_DOWN_MASK: int;
    var BUTTON2_DOWN_MASK: int;
    var BUTTON3_DOWN_MASK: int;
    var ALT_GRAPH_DOWN_MASK: int;
    var COMPONENT_FIRST: int;
    var COMPONENT_LAST: int;
    var COMPONENT_MOVED: int;
    var COMPONENT_RESIZED: int;
    var COMPONENT_SHOWN: int;
    var COMPONENT_HIDDEN: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.event.MouseListener {
}

type java.awt.event.MouseMotionListener {
}

type java.awt.event.ComponentAdapter {
}

type java.awt.event.ActionEvent {
    var SHIFT_MASK: int;
    var CTRL_MASK: int;
    var META_MASK: int;
    var ALT_MASK: int;
    var ACTION_FIRST: int;
    var ACTION_LAST: int;
    var ACTION_PERFORMED: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.event.ComponentListener {
}

type java.awt.event.TextEvent {
    var TEXT_FIRST: int;
    var TEXT_LAST: int;
    var TEXT_VALUE_CHANGED: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.event.InvocationEvent {
    var INVOCATION_FIRST: int;
    var INVOCATION_DEFAULT: int;
    var INVOCATION_LAST: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.event.WindowAdapter {
}

type java.awt.event.KeyEvent {
    var KEY_FIRST: int;
    var KEY_LAST: int;
    var KEY_TYPED: int;
    var KEY_PRESSED: int;
    var KEY_RELEASED: int;
    var VK_ENTER: int;
    var VK_BACK_SPACE: int;
    var VK_TAB: int;
    var VK_CANCEL: int;
    var VK_CLEAR: int;
    var VK_SHIFT: int;
    var VK_CONTROL: int;
    var VK_ALT: int;
    var VK_PAUSE: int;
    var VK_CAPS_LOCK: int;
    var VK_ESCAPE: int;
    var VK_SPACE: int;
    var VK_PAGE_UP: int;
    var VK_PAGE_DOWN: int;
    var VK_END: int;
    var VK_HOME: int;
    var VK_LEFT: int;
    var VK_UP: int;
    var VK_RIGHT: int;
    var VK_DOWN: int;
    var VK_COMMA: int;
    var VK_MINUS: int;
    var VK_PERIOD: int;
    var VK_SLASH: int;
    var VK_0: int;
    var VK_1: int;
    var VK_2: int;
    var VK_3: int;
    var VK_4: int;
    var VK_5: int;
    var VK_6: int;
    var VK_7: int;
    var VK_8: int;
    var VK_9: int;
    var VK_SEMICOLON: int;
    var VK_EQUALS: int;
    var VK_A: int;
    var VK_B: int;
    var VK_C: int;
    var VK_D: int;
    var VK_E: int;
    var VK_F: int;
    var VK_G: int;
    var VK_H: int;
    var VK_I: int;
    var VK_J: int;
    var VK_K: int;
    var VK_L: int;
    var VK_M: int;
    var VK_N: int;
    var VK_O: int;
    var VK_P: int;
    var VK_Q: int;
    var VK_R: int;
    var VK_S: int;
    var VK_T: int;
    var VK_U: int;
    var VK_V: int;
    var VK_W: int;
    var VK_X: int;
    var VK_Y: int;
    var VK_Z: int;
    var VK_OPEN_BRACKET: int;
    var VK_BACK_SLASH: int;
    var VK_CLOSE_BRACKET: int;
    var VK_NUMPAD0: int;
    var VK_NUMPAD1: int;
    var VK_NUMPAD2: int;
    var VK_NUMPAD3: int;
    var VK_NUMPAD4: int;
    var VK_NUMPAD5: int;
    var VK_NUMPAD6: int;
    var VK_NUMPAD7: int;
    var VK_NUMPAD8: int;
    var VK_NUMPAD9: int;
    var VK_MULTIPLY: int;
    var VK_ADD: int;
    var VK_SEPARATER: int;
    var VK_SEPARATOR: int;
    var VK_SUBTRACT: int;
    var VK_DECIMAL: int;
    var VK_DIVIDE: int;
    var VK_DELETE: int;
    var VK_NUM_LOCK: int;
    var VK_SCROLL_LOCK: int;
    var VK_F1: int;
    var VK_F2: int;
    var VK_F3: int;
    var VK_F4: int;
    var VK_F5: int;
    var VK_F6: int;
    var VK_F7: int;
    var VK_F8: int;
    var VK_F9: int;
    var VK_F10: int;
    var VK_F11: int;
    var VK_F12: int;
    var VK_F13: int;
    var VK_F14: int;
    var VK_F15: int;
    var VK_F16: int;
    var VK_F17: int;
    var VK_F18: int;
    var VK_F19: int;
    var VK_F20: int;
    var VK_F21: int;
    var VK_F22: int;
    var VK_F23: int;
    var VK_F24: int;
    var VK_PRINTSCREEN: int;
    var VK_INSERT: int;
    var VK_HELP: int;
    var VK_META: int;
    var VK_BACK_QUOTE: int;
    var VK_QUOTE: int;
    var VK_KP_UP: int;
    var VK_KP_DOWN: int;
    var VK_KP_LEFT: int;
    var VK_KP_RIGHT: int;
    var VK_DEAD_GRAVE: int;
    var VK_DEAD_ACUTE: int;
    var VK_DEAD_CIRCUMFLEX: int;
    var VK_DEAD_TILDE: int;
    var VK_DEAD_MACRON: int;
    var VK_DEAD_BREVE: int;
    var VK_DEAD_ABOVEDOT: int;
    var VK_DEAD_DIAERESIS: int;
    var VK_DEAD_ABOVERING: int;
    var VK_DEAD_DOUBLEACUTE: int;
    var VK_DEAD_CARON: int;
    var VK_DEAD_CEDILLA: int;
    var VK_DEAD_OGONEK: int;
    var VK_DEAD_IOTA: int;
    var VK_DEAD_VOICED_SOUND: int;
    var VK_DEAD_SEMIVOICED_SOUND: int;
    var VK_AMPERSAND: int;
    var VK_ASTERISK: int;
    var VK_QUOTEDBL: int;
    var VK_LESS: int;
    var VK_GREATER: int;
    var VK_BRACELEFT: int;
    var VK_BRACERIGHT: int;
    var VK_AT: int;
    var VK_COLON: int;
    var VK_CIRCUMFLEX: int;
    var VK_DOLLAR: int;
    var VK_EURO_SIGN: int;
    var VK_EXCLAMATION_MARK: int;
    var VK_INVERTED_EXCLAMATION_MARK: int;
    var VK_LEFT_PARENTHESIS: int;
    var VK_NUMBER_SIGN: int;
    var VK_PLUS: int;
    var VK_RIGHT_PARENTHESIS: int;
    var VK_UNDERSCORE: int;
    var VK_WINDOWS: int;
    var VK_CONTEXT_MENU: int;
    var VK_FINAL: int;
    var VK_CONVERT: int;
    var VK_NONCONVERT: int;
    var VK_ACCEPT: int;
    var VK_MODECHANGE: int;
    var VK_KANA: int;
    var VK_KANJI: int;
    var VK_ALPHANUMERIC: int;
    var VK_KATAKANA: int;
    var VK_HIRAGANA: int;
    var VK_FULL_WIDTH: int;
    var VK_HALF_WIDTH: int;
    var VK_ROMAN_CHARACTERS: int;
    var VK_ALL_CANDIDATES: int;
    var VK_PREVIOUS_CANDIDATE: int;
    var VK_CODE_INPUT: int;
    var VK_JAPANESE_KATAKANA: int;
    var VK_JAPANESE_HIRAGANA: int;
    var VK_JAPANESE_ROMAN: int;
    var VK_KANA_LOCK: int;
    var VK_INPUT_METHOD_ON_OFF: int;
    var VK_CUT: int;
    var VK_COPY: int;
    var VK_PASTE: int;
    var VK_UNDO: int;
    var VK_AGAIN: int;
    var VK_FIND: int;
    var VK_PROPS: int;
    var VK_STOP: int;
    var VK_COMPOSE: int;
    var VK_ALT_GRAPH: int;
    var VK_BEGIN: int;
    var VK_UNDEFINED: int;
    var CHAR_UNDEFINED: char;
    var KEY_LOCATION_UNKNOWN: int;
    var KEY_LOCATION_STANDARD: int;
    var KEY_LOCATION_LEFT: int;
    var KEY_LOCATION_RIGHT: int;
    var KEY_LOCATION_NUMPAD: int;
    var SHIFT_MASK: int;
    var CTRL_MASK: int;
    var META_MASK: int;
    var ALT_MASK: int;
    var ALT_GRAPH_MASK: int;
    var BUTTON1_MASK: int;
    var BUTTON2_MASK: int;
    var BUTTON3_MASK: int;
    var SHIFT_DOWN_MASK: int;
    var CTRL_DOWN_MASK: int;
    var META_DOWN_MASK: int;
    var ALT_DOWN_MASK: int;
    var BUTTON1_DOWN_MASK: int;
    var BUTTON2_DOWN_MASK: int;
    var BUTTON3_DOWN_MASK: int;
    var ALT_GRAPH_DOWN_MASK: int;
    var COMPONENT_FIRST: int;
    var COMPONENT_LAST: int;
    var COMPONENT_MOVED: int;
    var COMPONENT_RESIZED: int;
    var COMPONENT_SHOWN: int;
    var COMPONENT_HIDDEN: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.event.AdjustmentEvent {
    var ADJUSTMENT_FIRST: int;
    var ADJUSTMENT_LAST: int;
    var ADJUSTMENT_VALUE_CHANGED: int;
    var UNIT_INCREMENT: int;
    var UNIT_DECREMENT: int;
    var BLOCK_DECREMENT: int;
    var BLOCK_INCREMENT: int;
    var TRACK: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.event.InputEvent {
    var SHIFT_MASK: int;
    var CTRL_MASK: int;
    var META_MASK: int;
    var ALT_MASK: int;
    var ALT_GRAPH_MASK: int;
    var BUTTON1_MASK: int;
    var BUTTON2_MASK: int;
    var BUTTON3_MASK: int;
    var SHIFT_DOWN_MASK: int;
    var CTRL_DOWN_MASK: int;
    var META_DOWN_MASK: int;
    var ALT_DOWN_MASK: int;
    var BUTTON1_DOWN_MASK: int;
    var BUTTON2_DOWN_MASK: int;
    var BUTTON3_DOWN_MASK: int;
    var ALT_GRAPH_DOWN_MASK: int;
    var COMPONENT_FIRST: int;
    var COMPONENT_LAST: int;
    var COMPONENT_MOVED: int;
    var COMPONENT_RESIZED: int;
    var COMPONENT_SHOWN: int;
    var COMPONENT_HIDDEN: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.event.WindowEvent {
    var WINDOW_FIRST: int;
    var WINDOW_OPENED: int;
    var WINDOW_CLOSING: int;
    var WINDOW_CLOSED: int;
    var WINDOW_ICONIFIED: int;
    var WINDOW_DEICONIFIED: int;
    var WINDOW_ACTIVATED: int;
    var WINDOW_DEACTIVATED: int;
    var WINDOW_GAINED_FOCUS: int;
    var WINDOW_LOST_FOCUS: int;
    var WINDOW_STATE_CHANGED: int;
    var WINDOW_LAST: int;
    var COMPONENT_FIRST: int;
    var COMPONENT_LAST: int;
    var COMPONENT_MOVED: int;
    var COMPONENT_RESIZED: int;
    var COMPONENT_SHOWN: int;
    var COMPONENT_HIDDEN: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.event.FocusAdapter {
}

type java.awt.event.InputMethodEvent {
    var INPUT_METHOD_FIRST: int;
    var INPUT_METHOD_TEXT_CHANGED: int;
    var CARET_POSITION_CHANGED: int;
    var INPUT_METHOD_LAST: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type java.awt.ImageMediaEntry {
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.Graphics2D {
}

type java.awt.RadialGradientPaintContext {
}

type java.awt.EventDispatchThread {
    var MIN_PRIORITY: int;
    var NORM_PRIORITY: int;
    var MAX_PRIORITY: int;
}

type java.awt.GradientPaintContext {
}

type java.awt.LightweightDispatcher {
}

type java.awt.Color {
    var white: java.awt.Color;
    var WHITE: java.awt.Color;
    var lightGray: java.awt.Color;
    var LIGHT_GRAY: java.awt.Color;
    var gray: java.awt.Color;
    var GRAY: java.awt.Color;
    var darkGray: java.awt.Color;
    var DARK_GRAY: java.awt.Color;
    var black: java.awt.Color;
    var BLACK: java.awt.Color;
    var red: java.awt.Color;
    var RED: java.awt.Color;
    var pink: java.awt.Color;
    var PINK: java.awt.Color;
    var orange: java.awt.Color;
    var ORANGE: java.awt.Color;
    var yellow: java.awt.Color;
    var YELLOW: java.awt.Color;
    var green: java.awt.Color;
    var GREEN: java.awt.Color;
    var magenta: java.awt.Color;
    var MAGENTA: java.awt.Color;
    var cyan: java.awt.Color;
    var CYAN: java.awt.Color;
    var blue: java.awt.Color;
    var BLUE: java.awt.Color;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type java.awt.Dialog {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.BufferCapabilities {
}

type java.awt.Button {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type java.awt.Robot {
}

type javax.swing.Spring {
    var UNSET: int;
}

type javax.swing.GroupLayout {
    var DEFAULT_SIZE: int;
    var PREFERRED_SIZE: int;
}

type javax.swing.JMenu {
    var MODEL_CHANGED_PROPERTY: java.lang.String;
    var TEXT_CHANGED_PROPERTY: java.lang.String;
    var MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var MARGIN_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var BORDER_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var FOCUS_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var CONTENT_AREA_FILLED_CHANGED_PROPERTY: java.lang.String;
    var ICON_CHANGED_PROPERTY: java.lang.String;
    var PRESSED_ICON_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.GrayFilter {
    var RANDOMPIXELORDER: int;
    var TOPDOWNLEFTRIGHT: int;
    var COMPLETESCANLINES: int;
    var SINGLEPASS: int;
    var SINGLEFRAME: int;
    var IMAGEERROR: int;
    var SINGLEFRAMEDONE: int;
    var STATICIMAGEDONE: int;
    var IMAGEABORTED: int;
}

type javax.swing.border.BevelBorder {
    var RAISED: int;
    var LOWERED: int;
}

type javax.swing.border.StrokeBorder {
}

type javax.swing.border.EmptyBorder {
}

type javax.swing.border.CompoundBorder {
}

type javax.swing.border.MatteBorder {
}

type javax.swing.border.EtchedBorder {
    var RAISED: int;
    var LOWERED: int;
}

type javax.swing.border.LineBorder {
}

type javax.swing.border.Border {
}

type javax.swing.border.TitledBorder {
    var DEFAULT_POSITION: int;
    var ABOVE_TOP: int;
    var TOP: int;
    var BELOW_TOP: int;
    var ABOVE_BOTTOM: int;
    var BOTTOM: int;
    var BELOW_BOTTOM: int;
    var DEFAULT_JUSTIFICATION: int;
    var LEFT: int;
    var CENTER: int;
    var RIGHT: int;
    var LEADING: int;
    var TRAILING: int;
}

type javax.swing.border.SoftBevelBorder {
    var RAISED: int;
    var LOWERED: int;
}

type javax.swing.border.AbstractBorder {
}

type javax.swing.LayoutComparator {
}

type javax.swing.tree.AbstractLayoutCache {
}

type javax.swing.tree.DefaultTreeCellRenderer {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.tree.VariableHeightLayoutCache {
}

type javax.swing.tree.DefaultTreeCellEditor {
}

type javax.swing.tree.PathPlaceHolder {
}

type javax.swing.tree.MutableTreeNode {
}

type javax.swing.tree.RowMapper {
}

type javax.swing.tree.TreeCellEditor {
}

type javax.swing.tree.FixedHeightLayoutCache {
}

type javax.swing.tree.TreeSelectionModel {
    var SINGLE_TREE_SELECTION: int;
    var CONTIGUOUS_TREE_SELECTION: int;
    var DISCONTIGUOUS_TREE_SELECTION: int;
}

type javax.swing.tree.TreeNode {
}

type javax.swing.tree.TreePath {
}

type javax.swing.tree.TreeModel {
}

type javax.swing.tree.DefaultMutableTreeNode {
    var EMPTY_ENUMERATION: java.util.Enumeration;
}

type javax.swing.tree.DefaultTreeSelectionModel {
    var SELECTION_MODE_PROPERTY: java.lang.String;
    var SINGLE_TREE_SELECTION: int;
    var CONTIGUOUS_TREE_SELECTION: int;
    var DISCONTIGUOUS_TREE_SELECTION: int;
}

type javax.swing.tree.TreeCellRenderer {
}

type javax.swing.tree.DefaultTreeModel {
}

type javax.swing.tree.ExpandVetoException {
}

type javax.swing.JPasswordField {
    var notifyAction: java.lang.String;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var FOCUS_ACCELERATOR_KEY: java.lang.String;
    var DEFAULT_KEYMAP: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JScrollPane {
    var VIEWPORT: java.lang.String;
    var VERTICAL_SCROLLBAR: java.lang.String;
    var HORIZONTAL_SCROLLBAR: java.lang.String;
    var ROW_HEADER: java.lang.String;
    var COLUMN_HEADER: java.lang.String;
    var LOWER_LEFT_CORNER: java.lang.String;
    var LOWER_RIGHT_CORNER: java.lang.String;
    var UPPER_LEFT_CORNER: java.lang.String;
    var UPPER_RIGHT_CORNER: java.lang.String;
    var LOWER_LEADING_CORNER: java.lang.String;
    var LOWER_TRAILING_CORNER: java.lang.String;
    var UPPER_LEADING_CORNER: java.lang.String;
    var UPPER_TRAILING_CORNER: java.lang.String;
    var VERTICAL_SCROLLBAR_POLICY: java.lang.String;
    var HORIZONTAL_SCROLLBAR_POLICY: java.lang.String;
    var VERTICAL_SCROLLBAR_AS_NEEDED: int;
    var VERTICAL_SCROLLBAR_NEVER: int;
    var VERTICAL_SCROLLBAR_ALWAYS: int;
    var HORIZONTAL_SCROLLBAR_AS_NEEDED: int;
    var HORIZONTAL_SCROLLBAR_NEVER: int;
    var HORIZONTAL_SCROLLBAR_ALWAYS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.ListModel {
}

type javax.swing.ProgressMonitorInputStream {
}

type javax.swing.GraphicsWrapper {
}

type javax.swing.RowFilter {
}

type javax.swing.filechooser.FileNameExtensionFilter {
}

type javax.swing.filechooser.FileView {
}

type javax.swing.filechooser.FileSystemView {
}

type javax.swing.filechooser.FileFilter {
}

type javax.swing.filechooser.UnixFileSystemView {
}

type javax.swing.filechooser.GenericFileSystemView {
}

type javax.swing.filechooser.WindowsFileSystemView {
}

type javax.swing.JWindow {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.Scrollable {
}

type javax.swing.SwingContainerOrderFocusTraversalPolicy {
}

type javax.swing.Icon {
}

type javax.swing.JFrame {
    var DO_NOTHING_ON_CLOSE: int;
    var HIDE_ON_CLOSE: int;
    var DISPOSE_ON_CLOSE: int;
    var EXIT_ON_CLOSE: int;
    var DEFAULT_CURSOR: int;
    var CROSSHAIR_CURSOR: int;
    var TEXT_CURSOR: int;
    var WAIT_CURSOR: int;
    var SW_RESIZE_CURSOR: int;
    var SE_RESIZE_CURSOR: int;
    var NW_RESIZE_CURSOR: int;
    var NE_RESIZE_CURSOR: int;
    var N_RESIZE_CURSOR: int;
    var S_RESIZE_CURSOR: int;
    var W_RESIZE_CURSOR: int;
    var E_RESIZE_CURSOR: int;
    var HAND_CURSOR: int;
    var MOVE_CURSOR: int;
    var NORMAL: int;
    var ICONIFIED: int;
    var MAXIMIZED_HORIZ: int;
    var MAXIMIZED_VERT: int;
    var MAXIMIZED_BOTH: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.ScrollPaneConstants {
    var VIEWPORT: java.lang.String;
    var VERTICAL_SCROLLBAR: java.lang.String;
    var HORIZONTAL_SCROLLBAR: java.lang.String;
    var ROW_HEADER: java.lang.String;
    var COLUMN_HEADER: java.lang.String;
    var LOWER_LEFT_CORNER: java.lang.String;
    var LOWER_RIGHT_CORNER: java.lang.String;
    var UPPER_LEFT_CORNER: java.lang.String;
    var UPPER_RIGHT_CORNER: java.lang.String;
    var LOWER_LEADING_CORNER: java.lang.String;
    var LOWER_TRAILING_CORNER: java.lang.String;
    var UPPER_LEADING_CORNER: java.lang.String;
    var UPPER_TRAILING_CORNER: java.lang.String;
    var VERTICAL_SCROLLBAR_POLICY: java.lang.String;
    var HORIZONTAL_SCROLLBAR_POLICY: java.lang.String;
    var VERTICAL_SCROLLBAR_AS_NEEDED: int;
    var VERTICAL_SCROLLBAR_NEVER: int;
    var VERTICAL_SCROLLBAR_ALWAYS: int;
    var HORIZONTAL_SCROLLBAR_AS_NEEDED: int;
    var HORIZONTAL_SCROLLBAR_NEVER: int;
    var HORIZONTAL_SCROLLBAR_ALWAYS: int;
}

type javax.swing.BorderFactory {
}

type javax.swing.SwingUtilities {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.JPopupMenu {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.DebugGraphics {
    var LOG_OPTION: int;
    var FLASH_OPTION: int;
    var BUFFERED_OPTION: int;
    var NONE_OPTION: int;
}

type javax.swing.DefaultListModel {
}

type javax.swing.JFileChooser {
    var OPEN_DIALOG: int;
    var SAVE_DIALOG: int;
    var CUSTOM_DIALOG: int;
    var CANCEL_OPTION: int;
    var APPROVE_OPTION: int;
    var ERROR_OPTION: int;
    var FILES_ONLY: int;
    var DIRECTORIES_ONLY: int;
    var FILES_AND_DIRECTORIES: int;
    var CANCEL_SELECTION: java.lang.String;
    var APPROVE_SELECTION: java.lang.String;
    var APPROVE_BUTTON_TEXT_CHANGED_PROPERTY: java.lang.String;
    var APPROVE_BUTTON_TOOL_TIP_TEXT_CHANGED_PROPERTY: java.lang.String;
    var APPROVE_BUTTON_MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var CONTROL_BUTTONS_ARE_SHOWN_CHANGED_PROPERTY: java.lang.String;
    var DIRECTORY_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_FILE_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_FILES_CHANGED_PROPERTY: java.lang.String;
    var MULTI_SELECTION_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var FILE_SYSTEM_VIEW_CHANGED_PROPERTY: java.lang.String;
    var FILE_VIEW_CHANGED_PROPERTY: java.lang.String;
    var FILE_HIDING_CHANGED_PROPERTY: java.lang.String;
    var FILE_FILTER_CHANGED_PROPERTY: java.lang.String;
    var FILE_SELECTION_MODE_CHANGED_PROPERTY: java.lang.String;
    var ACCESSORY_CHANGED_PROPERTY: java.lang.String;
    var ACCEPT_ALL_FILE_FILTER_USED_CHANGED_PROPERTY: java.lang.String;
    var DIALOG_TITLE_CHANGED_PROPERTY: java.lang.String;
    var DIALOG_TYPE_CHANGED_PROPERTY: java.lang.String;
    var CHOOSABLE_FILE_FILTER_CHANGED_PROPERTY: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.FocusManager {
    var FOCUS_MANAGER_CLASS_PROPERTY: java.lang.String;
    var FORWARD_TRAVERSAL_KEYS: int;
    var BACKWARD_TRAVERSAL_KEYS: int;
    var UP_CYCLE_TRAVERSAL_KEYS: int;
    var DOWN_CYCLE_TRAVERSAL_KEYS: int;
}

type javax.swing.SpinnerNumberModel {
}

type javax.swing.SwingConstants {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.ListCellRenderer {
}

type javax.swing.KeyboardManager {
}

type javax.swing.JEditorPane {
    var W3C_LENGTH_UNITS: java.lang.String;
    var HONOR_DISPLAY_PROPERTIES: java.lang.String;
    var FOCUS_ACCELERATOR_KEY: java.lang.String;
    var DEFAULT_KEYMAP: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.RootPaneContainer {
}

type javax.swing.UnsupportedLookAndFeelException {
}

type javax.swing.JRadioButton {
    var MODEL_CHANGED_PROPERTY: java.lang.String;
    var TEXT_CHANGED_PROPERTY: java.lang.String;
    var MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var MARGIN_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var BORDER_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var FOCUS_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var CONTENT_AREA_FILLED_CHANGED_PROPERTY: java.lang.String;
    var ICON_CHANGED_PROPERTY: java.lang.String;
    var PRESSED_ICON_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JCheckBox {
    var BORDER_PAINTED_FLAT_CHANGED_PROPERTY: java.lang.String;
    var MODEL_CHANGED_PROPERTY: java.lang.String;
    var TEXT_CHANGED_PROPERTY: java.lang.String;
    var MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var MARGIN_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var BORDER_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var FOCUS_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var CONTENT_AREA_FILLED_CHANGED_PROPERTY: java.lang.String;
    var ICON_CHANGED_PROPERTY: java.lang.String;
    var PRESSED_ICON_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JOptionPane {
    var UNINITIALIZED_VALUE: java.lang.Object;
    var DEFAULT_OPTION: int;
    var YES_NO_OPTION: int;
    var YES_NO_CANCEL_OPTION: int;
    var OK_CANCEL_OPTION: int;
    var YES_OPTION: int;
    var NO_OPTION: int;
    var CANCEL_OPTION: int;
    var OK_OPTION: int;
    var CLOSED_OPTION: int;
    var ERROR_MESSAGE: int;
    var INFORMATION_MESSAGE: int;
    var WARNING_MESSAGE: int;
    var QUESTION_MESSAGE: int;
    var PLAIN_MESSAGE: int;
    var ICON_PROPERTY: java.lang.String;
    var MESSAGE_PROPERTY: java.lang.String;
    var VALUE_PROPERTY: java.lang.String;
    var OPTIONS_PROPERTY: java.lang.String;
    var INITIAL_VALUE_PROPERTY: java.lang.String;
    var MESSAGE_TYPE_PROPERTY: java.lang.String;
    var OPTION_TYPE_PROPERTY: java.lang.String;
    var SELECTION_VALUES_PROPERTY: java.lang.String;
    var INITIAL_SELECTION_VALUE_PROPERTY: java.lang.String;
    var INPUT_VALUE_PROPERTY: java.lang.String;
    var WANTS_INPUT_PROPERTY: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JSlider {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.DebugGraphicsObserver {
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JMenuItem {
    var MODEL_CHANGED_PROPERTY: java.lang.String;
    var TEXT_CHANGED_PROPERTY: java.lang.String;
    var MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var MARGIN_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var BORDER_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var FOCUS_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var CONTENT_AREA_FILLED_CHANGED_PROPERTY: java.lang.String;
    var ICON_CHANGED_PROPERTY: java.lang.String;
    var PRESSED_ICON_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.DebugGraphicsInfo {
}

type javax.swing.JList {
    var VERTICAL: int;
    var VERTICAL_WRAP: int;
    var HORIZONTAL_WRAP: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JCheckBoxMenuItem {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var MODEL_CHANGED_PROPERTY: java.lang.String;
    var TEXT_CHANGED_PROPERTY: java.lang.String;
    var MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var MARGIN_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var BORDER_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var FOCUS_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var CONTENT_AREA_FILLED_CHANGED_PROPERTY: java.lang.String;
    var ICON_CHANGED_PROPERTY: java.lang.String;
    var PRESSED_ICON_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JTextPane {
    var W3C_LENGTH_UNITS: java.lang.String;
    var HONOR_DISPLAY_PROPERTIES: java.lang.String;
    var FOCUS_ACCELERATOR_KEY: java.lang.String;
    var DEFAULT_KEYMAP: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.AbstractCellEditor {
}

type javax.swing.Autoscroller {
}

type javax.swing.CellRendererPane {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JSplitPane {
    var VERTICAL_SPLIT: int;
    var HORIZONTAL_SPLIT: int;
    var LEFT: java.lang.String;
    var RIGHT: java.lang.String;
    var TOP: java.lang.String;
    var BOTTOM: java.lang.String;
    var DIVIDER: java.lang.String;
    var ORIENTATION_PROPERTY: java.lang.String;
    var CONTINUOUS_LAYOUT_PROPERTY: java.lang.String;
    var DIVIDER_SIZE_PROPERTY: java.lang.String;
    var ONE_TOUCH_EXPANDABLE_PROPERTY: java.lang.String;
    var LAST_DIVIDER_LOCATION_PROPERTY: java.lang.String;
    var DIVIDER_LOCATION_PROPERTY: java.lang.String;
    var RESIZE_WEIGHT_PROPERTY: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JDesktopPane {
    var LIVE_DRAG_MODE: int;
    var OUTLINE_DRAG_MODE: int;
    var DEFAULT_LAYER: java.lang.Integer;
    var PALETTE_LAYER: java.lang.Integer;
    var MODAL_LAYER: java.lang.Integer;
    var POPUP_LAYER: java.lang.Integer;
    var DRAG_LAYER: java.lang.Integer;
    var FRAME_CONTENT_LAYER: java.lang.Integer;
    var LAYER_PROPERTY: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.DefaultCellEditor {
}

type javax.swing.SpinnerDateModel {
}

type javax.swing.plaf.TextUI {
}

type javax.swing.plaf.PanelUI {
}

type javax.swing.plaf.OptionPaneUI {
}

type javax.swing.plaf.FontUIResource {
    var DIALOG: java.lang.String;
    var DIALOG_INPUT: java.lang.String;
    var SANS_SERIF: java.lang.String;
    var SERIF: java.lang.String;
    var MONOSPACED: java.lang.String;
    var PLAIN: int;
    var BOLD: int;
    var ITALIC: int;
    var ROMAN_BASELINE: int;
    var CENTER_BASELINE: int;
    var HANGING_BASELINE: int;
    var TRUETYPE_FONT: int;
    var TYPE1_FONT: int;
    var LAYOUT_LEFT_TO_RIGHT: int;
    var LAYOUT_RIGHT_TO_LEFT: int;
    var LAYOUT_NO_START_CONTEXT: int;
    var LAYOUT_NO_LIMIT_CONTEXT: int;
}

type javax.swing.plaf.InsetsUIResource {
    var top: int;
    var left: int;
    var bottom: int;
    var right: int;
}

type javax.swing.plaf.TableHeaderUI {
}

type javax.swing.plaf.LabelUI {
}

type javax.swing.plaf.ButtonUI {
}

type javax.swing.plaf.ColorUIResource {
    var white: java.awt.Color;
    var WHITE: java.awt.Color;
    var lightGray: java.awt.Color;
    var LIGHT_GRAY: java.awt.Color;
    var gray: java.awt.Color;
    var GRAY: java.awt.Color;
    var darkGray: java.awt.Color;
    var DARK_GRAY: java.awt.Color;
    var black: java.awt.Color;
    var BLACK: java.awt.Color;
    var red: java.awt.Color;
    var RED: java.awt.Color;
    var pink: java.awt.Color;
    var PINK: java.awt.Color;
    var orange: java.awt.Color;
    var ORANGE: java.awt.Color;
    var yellow: java.awt.Color;
    var YELLOW: java.awt.Color;
    var green: java.awt.Color;
    var GREEN: java.awt.Color;
    var magenta: java.awt.Color;
    var MAGENTA: java.awt.Color;
    var cyan: java.awt.Color;
    var CYAN: java.awt.Color;
    var blue: java.awt.Color;
    var BLUE: java.awt.Color;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type javax.swing.plaf.DesktopIconUI {
}

type javax.swing.plaf.InternalFrameUI {
}

type javax.swing.plaf.metal.MetalBumps {
}

type javax.swing.plaf.metal.MetalScrollPaneUI {
    var VIEWPORT: java.lang.String;
    var VERTICAL_SCROLLBAR: java.lang.String;
    var HORIZONTAL_SCROLLBAR: java.lang.String;
    var ROW_HEADER: java.lang.String;
    var COLUMN_HEADER: java.lang.String;
    var LOWER_LEFT_CORNER: java.lang.String;
    var LOWER_RIGHT_CORNER: java.lang.String;
    var UPPER_LEFT_CORNER: java.lang.String;
    var UPPER_RIGHT_CORNER: java.lang.String;
    var LOWER_LEADING_CORNER: java.lang.String;
    var LOWER_TRAILING_CORNER: java.lang.String;
    var UPPER_LEADING_CORNER: java.lang.String;
    var UPPER_TRAILING_CORNER: java.lang.String;
    var VERTICAL_SCROLLBAR_POLICY: java.lang.String;
    var HORIZONTAL_SCROLLBAR_POLICY: java.lang.String;
    var VERTICAL_SCROLLBAR_AS_NEEDED: int;
    var VERTICAL_SCROLLBAR_NEVER: int;
    var VERTICAL_SCROLLBAR_ALWAYS: int;
    var HORIZONTAL_SCROLLBAR_AS_NEEDED: int;
    var HORIZONTAL_SCROLLBAR_NEVER: int;
    var HORIZONTAL_SCROLLBAR_ALWAYS: int;
}

type javax.swing.plaf.metal.MetalTreeUI {
}

type javax.swing.plaf.metal.MetalToggleButtonUI {
}

type javax.swing.plaf.metal.MetalSliderUI {
    var POSITIVE_SCROLL: int;
    var NEGATIVE_SCROLL: int;
    var MIN_SCROLL: int;
    var MAX_SCROLL: int;
}

type javax.swing.plaf.metal.MetalInternalFrameTitlePane {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.plaf.metal.MetalScrollBarUI {
    var FREE_STANDING_PROP: java.lang.String;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.plaf.metal.MetalUtils {
}

type javax.swing.plaf.metal.MetalCheckBoxIcon {
}

type javax.swing.plaf.metal.MetalLookAndFeel {
}

type javax.swing.plaf.metal.MetalTheme {
}

type javax.swing.plaf.metal.MetalComboBoxIcon {
}

type javax.swing.plaf.metal.MetalCheckBoxUI {
}

type javax.swing.plaf.metal.MetalComboBoxButton {
    var MODEL_CHANGED_PROPERTY: java.lang.String;
    var TEXT_CHANGED_PROPERTY: java.lang.String;
    var MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var MARGIN_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var BORDER_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var FOCUS_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var CONTENT_AREA_FILLED_CHANGED_PROPERTY: java.lang.String;
    var ICON_CHANGED_PROPERTY: java.lang.String;
    var PRESSED_ICON_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.plaf.metal.MetalToolBarUI {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.plaf.metal.MetalToolTipUI {
    var padSpaceBetweenStrings: int;
}

type javax.swing.plaf.metal.MetalMenuBarUI {
}

type javax.swing.plaf.metal.MetalProgressBarUI {
}

type javax.swing.plaf.metal.MetalComboBoxEditor {
}

type javax.swing.plaf.metal.OceanTheme {
}

type javax.swing.plaf.metal.MetalFileChooserUI {
}

type javax.swing.plaf.metal.MetalSplitPaneUI {
}

type javax.swing.plaf.metal.MetalScrollButton {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var MODEL_CHANGED_PROPERTY: java.lang.String;
    var TEXT_CHANGED_PROPERTY: java.lang.String;
    var MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var MARGIN_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var BORDER_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var FOCUS_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var CONTENT_AREA_FILLED_CHANGED_PROPERTY: java.lang.String;
    var ICON_CHANGED_PROPERTY: java.lang.String;
    var PRESSED_ICON_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.plaf.metal.DefaultMetalTheme {
}

type javax.swing.plaf.metal.MetalHighContrastTheme {
}

type javax.swing.plaf.metal.MetalInternalFrameUI {
}

type javax.swing.plaf.metal.MetalLabelUI {
}

type javax.swing.plaf.metal.MetalTitlePane {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.plaf.metal.MetalFontDesktopProperty {
}

type javax.swing.plaf.metal.MetalTextFieldUI {
}

type javax.swing.plaf.metal.BumpBuffer {
}

type javax.swing.plaf.metal.MetalTabbedPaneUI {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.plaf.metal.MetalSplitPaneDivider {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.plaf.metal.MetalBorders {
}

type javax.swing.plaf.metal.MetalPopupMenuSeparatorUI {
}

type javax.swing.plaf.metal.MetalComboBoxUI {
}

type javax.swing.plaf.metal.MetalIconFactory {
    var DARK: boolean;
    var LIGHT: boolean;
}

type javax.swing.plaf.metal.MetalRadioButtonUI {
}

type javax.swing.plaf.metal.MetalRootPaneUI {
}

type javax.swing.plaf.metal.MetalSeparatorUI {
}

type javax.swing.plaf.metal.MetalDesktopIconUI {
}

type javax.swing.plaf.metal.MetalButtonUI {
}

type javax.swing.plaf.UIResource {
}

type javax.swing.plaf.multi.MultiScrollBarUI {
}

type javax.swing.plaf.multi.MultiLabelUI {
}

type javax.swing.plaf.multi.MultiColorChooserUI {
}

type javax.swing.plaf.multi.MultiPanelUI {
}

type javax.swing.plaf.multi.MultiTabbedPaneUI {
}

type javax.swing.plaf.multi.MultiButtonUI {
}

type javax.swing.plaf.multi.MultiLookAndFeel {
}

type javax.swing.plaf.multi.MultiPopupMenuUI {
}

type javax.swing.plaf.multi.MultiFileChooserUI {
}

type javax.swing.plaf.multi.MultiDesktopPaneUI {
}

type javax.swing.plaf.multi.MultiTableUI {
}

type javax.swing.plaf.multi.MultiProgressBarUI {
}

type javax.swing.plaf.multi.MultiToolBarUI {
}

type javax.swing.plaf.multi.MultiToolTipUI {
}

type javax.swing.plaf.multi.MultiMenuBarUI {
}

type javax.swing.plaf.multi.MultiTextUI {
}

type javax.swing.plaf.multi.MultiComboBoxUI {
}

type javax.swing.plaf.multi.MultiSplitPaneUI {
}

type javax.swing.plaf.multi.MultiOptionPaneUI {
}

type javax.swing.plaf.multi.MultiRootPaneUI {
}

type javax.swing.plaf.multi.MultiInternalFrameUI {
}

type javax.swing.plaf.multi.MultiMenuItemUI {
}

type javax.swing.plaf.multi.MultiViewportUI {
}

type javax.swing.plaf.multi.MultiTreeUI {
}

type javax.swing.plaf.multi.MultiDesktopIconUI {
}

type javax.swing.plaf.multi.MultiUIDefaults {
}

type javax.swing.plaf.multi.MultiSliderUI {
}

type javax.swing.plaf.multi.MultiTableHeaderUI {
}

type javax.swing.plaf.multi.MultiSeparatorUI {
}

type javax.swing.plaf.multi.MultiListUI {
}

type javax.swing.plaf.multi.MultiSpinnerUI {
}

type javax.swing.plaf.multi.MultiScrollPaneUI {
}

type javax.swing.plaf.ScrollBarUI {
}

type javax.swing.plaf.PopupMenuUI {
}

type javax.swing.plaf.ScrollPaneUI {
}

type javax.swing.plaf.basic.BasicToggleButtonUI {
}

type javax.swing.plaf.basic.BasicSliderUI {
    var POSITIVE_SCROLL: int;
    var NEGATIVE_SCROLL: int;
    var MIN_SCROLL: int;
    var MAX_SCROLL: int;
}

type javax.swing.plaf.basic.BasicInternalFrameUI {
}

type javax.swing.plaf.basic.BasicGraphicsUtils {
}

type javax.swing.plaf.basic.BasicEditorPaneUI {
}

type javax.swing.plaf.basic.BasicCheckBoxUI {
}

type javax.swing.plaf.basic.BasicSplitPaneDivider {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.plaf.basic.BasicPanelUI {
}

type javax.swing.plaf.basic.BasicRadioButtonMenuItemUI {
}

type javax.swing.plaf.basic.CenterLayout {
}

type javax.swing.plaf.basic.BasicHTML {
    var propertyKey: java.lang.String;
    var documentBaseKey: java.lang.String;
}

type javax.swing.plaf.basic.BasicOptionPaneUI {
    var MinimumWidth: int;
    var MinimumHeight: int;
}

type javax.swing.plaf.basic.BasicLabelUI {
}

type javax.swing.plaf.basic.DragRecognitionSupport {
}

type javax.swing.plaf.basic.BasicBorders {
}

type javax.swing.plaf.basic.BasicScrollBarUI {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.plaf.basic.BasicScrollPaneUI {
    var VIEWPORT: java.lang.String;
    var VERTICAL_SCROLLBAR: java.lang.String;
    var HORIZONTAL_SCROLLBAR: java.lang.String;
    var ROW_HEADER: java.lang.String;
    var COLUMN_HEADER: java.lang.String;
    var LOWER_LEFT_CORNER: java.lang.String;
    var LOWER_RIGHT_CORNER: java.lang.String;
    var UPPER_LEFT_CORNER: java.lang.String;
    var UPPER_RIGHT_CORNER: java.lang.String;
    var LOWER_LEADING_CORNER: java.lang.String;
    var LOWER_TRAILING_CORNER: java.lang.String;
    var UPPER_LEADING_CORNER: java.lang.String;
    var UPPER_TRAILING_CORNER: java.lang.String;
    var VERTICAL_SCROLLBAR_POLICY: java.lang.String;
    var HORIZONTAL_SCROLLBAR_POLICY: java.lang.String;
    var VERTICAL_SCROLLBAR_AS_NEEDED: int;
    var VERTICAL_SCROLLBAR_NEVER: int;
    var VERTICAL_SCROLLBAR_ALWAYS: int;
    var HORIZONTAL_SCROLLBAR_AS_NEEDED: int;
    var HORIZONTAL_SCROLLBAR_NEVER: int;
    var HORIZONTAL_SCROLLBAR_ALWAYS: int;
}

type javax.swing.plaf.basic.BasicComboBoxRenderer {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.plaf.basic.BasicDesktopPaneUI {
}

type javax.swing.plaf.basic.BasicToolBarUI {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.plaf.basic.BasicMenuBarUI {
}

type javax.swing.plaf.basic.BasicToolTipUI {
}

type javax.swing.plaf.basic.BasicProgressBarUI {
}

type javax.swing.plaf.basic.BasicToolBarSeparatorUI {
}

type javax.swing.plaf.basic.BasicFileChooserUI {
}

type javax.swing.plaf.basic.BasicComboBoxEditor {
}

type javax.swing.plaf.basic.BasicTextPaneUI {
}

type javax.swing.plaf.basic.BasicPopupMenuSeparatorUI {
}

type javax.swing.plaf.basic.BasicTextUI {
}

type javax.swing.plaf.basic.BasicInternalFrameTitlePane {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.plaf.basic.BasicColorChooserUI {
}

type javax.swing.plaf.basic.BasicPopupMenuUI {
}

type javax.swing.plaf.basic.BasicTableUI {
}

type javax.swing.plaf.basic.BasicLookAndFeel {
}

type javax.swing.plaf.basic.BasicButtonListener {
}

type javax.swing.plaf.basic.BasicPasswordFieldUI {
}

type javax.swing.plaf.basic.BasicCheckBoxMenuItemUI {
}

type javax.swing.plaf.basic.BasicComboBoxUI {
}

type javax.swing.plaf.basic.BasicTransferable {
}

type javax.swing.plaf.basic.LazyActionMap {
}

type javax.swing.plaf.basic.BasicTabbedPaneUI {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.plaf.basic.BasicMenuItemUI {
}

type javax.swing.plaf.basic.BasicViewportUI {
}

type javax.swing.plaf.basic.BasicTreeUI {
}

type javax.swing.plaf.basic.BasicSeparatorUI {
}

type javax.swing.plaf.basic.BasicMenuUI {
}

type javax.swing.plaf.basic.BasicRootPaneUI {
}

type javax.swing.plaf.basic.BasicIconFactory {
}

type javax.swing.plaf.basic.BasicComboPopup {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.plaf.basic.BasicTextAreaUI {
}

type javax.swing.plaf.basic.BasicRadioButtonUI {
}

type javax.swing.plaf.basic.DefaultMenuLayout {
    var X_AXIS: int;
    var Y_AXIS: int;
    var LINE_AXIS: int;
    var PAGE_AXIS: int;
}

type javax.swing.plaf.basic.BasicDesktopIconUI {
}

type javax.swing.plaf.basic.BasicFormattedTextFieldUI {
}

type javax.swing.plaf.basic.BasicSplitPaneUI {
}

type javax.swing.plaf.basic.BasicArrowButton {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var MODEL_CHANGED_PROPERTY: java.lang.String;
    var TEXT_CHANGED_PROPERTY: java.lang.String;
    var MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var MARGIN_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var BORDER_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var FOCUS_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var CONTENT_AREA_FILLED_CHANGED_PROPERTY: java.lang.String;
    var ICON_CHANGED_PROPERTY: java.lang.String;
    var PRESSED_ICON_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.plaf.basic.ComboPopup {
}

type javax.swing.plaf.basic.BasicDirectoryModel {
}

type javax.swing.plaf.basic.BasicTextFieldUI {
}

type javax.swing.plaf.basic.BasicButtonUI {
}

type javax.swing.plaf.basic.BasicListUI {
}

type javax.swing.plaf.basic.BasicSpinnerUI {
}

type javax.swing.plaf.basic.BasicTableHeaderUI {
}

type javax.swing.plaf.IconUIResource {
}

type javax.swing.plaf.TableUI {
}

type javax.swing.plaf.SpinnerUI {
}

type javax.swing.plaf.LayerUI {
}

type javax.swing.plaf.MenuItemUI {
}

type javax.swing.plaf.ViewportUI {
}

type javax.swing.plaf.ColorChooserUI {
}

type javax.swing.plaf.synth.SynthRootPaneUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthTabbedPaneUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.plaf.synth.SynthTreeUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthSliderUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
    var POSITIVE_SCROLL: int;
    var NEGATIVE_SCROLL: int;
    var MIN_SCROLL: int;
    var MAX_SCROLL: int;
}

type javax.swing.plaf.synth.SynthToggleButtonUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthSpinnerUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthMenuItemUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthContext {
}

type javax.swing.plaf.synth.SynthViewportUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthParser {
}

type javax.swing.plaf.synth.SynthMenuUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthBorder {
}

type javax.swing.plaf.synth.SynthDefaultLookup {
}

type javax.swing.plaf.synth.SynthFormattedTextFieldUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthComboBoxUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.ColorType {
    var FOREGROUND: javax.swing.plaf.synth.ColorType;
    var BACKGROUND: javax.swing.plaf.synth.ColorType;
    var TEXT_FOREGROUND: javax.swing.plaf.synth.ColorType;
    var TEXT_BACKGROUND: javax.swing.plaf.synth.ColorType;
    var FOCUS: javax.swing.plaf.synth.ColorType;
    var MAX_COUNT: int;
}

type javax.swing.plaf.synth.SynthSplitPaneDivider {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.plaf.synth.SynthSeparatorUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthInternalFrameUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthArrowButton {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var MODEL_CHANGED_PROPERTY: java.lang.String;
    var TEXT_CHANGED_PROPERTY: java.lang.String;
    var MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var MARGIN_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var BORDER_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var FOCUS_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var CONTENT_AREA_FILLED_CHANGED_PROPERTY: java.lang.String;
    var ICON_CHANGED_PROPERTY: java.lang.String;
    var PRESSED_ICON_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.plaf.synth.SynthSplitPaneUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthPasswordFieldUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthPainter {
}

type javax.swing.plaf.synth.SynthTableHeaderUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthListUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthCheckBoxMenuItemUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthRadioButtonUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthIcon {
}

type javax.swing.plaf.synth.SynthColorChooserUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthComboPopup {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.plaf.synth.SynthTextAreaUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthConstants {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthTextFieldUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthDesktopIconUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthRadioButtonMenuItemUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthStyle {
}

type javax.swing.plaf.synth.SynthEditorPaneUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.Region {
    var ARROW_BUTTON: javax.swing.plaf.synth.Region;
    var BUTTON: javax.swing.plaf.synth.Region;
    var CHECK_BOX: javax.swing.plaf.synth.Region;
    var CHECK_BOX_MENU_ITEM: javax.swing.plaf.synth.Region;
    var COLOR_CHOOSER: javax.swing.plaf.synth.Region;
    var COMBO_BOX: javax.swing.plaf.synth.Region;
    var DESKTOP_PANE: javax.swing.plaf.synth.Region;
    var DESKTOP_ICON: javax.swing.plaf.synth.Region;
    var EDITOR_PANE: javax.swing.plaf.synth.Region;
    var FILE_CHOOSER: javax.swing.plaf.synth.Region;
    var FORMATTED_TEXT_FIELD: javax.swing.plaf.synth.Region;
    var INTERNAL_FRAME: javax.swing.plaf.synth.Region;
    var INTERNAL_FRAME_TITLE_PANE: javax.swing.plaf.synth.Region;
    var LABEL: javax.swing.plaf.synth.Region;
    var LIST: javax.swing.plaf.synth.Region;
    var MENU: javax.swing.plaf.synth.Region;
    var MENU_BAR: javax.swing.plaf.synth.Region;
    var MENU_ITEM: javax.swing.plaf.synth.Region;
    var MENU_ITEM_ACCELERATOR: javax.swing.plaf.synth.Region;
    var OPTION_PANE: javax.swing.plaf.synth.Region;
    var PANEL: javax.swing.plaf.synth.Region;
    var PASSWORD_FIELD: javax.swing.plaf.synth.Region;
    var POPUP_MENU: javax.swing.plaf.synth.Region;
    var POPUP_MENU_SEPARATOR: javax.swing.plaf.synth.Region;
    var PROGRESS_BAR: javax.swing.plaf.synth.Region;
    var RADIO_BUTTON: javax.swing.plaf.synth.Region;
    var RADIO_BUTTON_MENU_ITEM: javax.swing.plaf.synth.Region;
    var ROOT_PANE: javax.swing.plaf.synth.Region;
    var SCROLL_BAR: javax.swing.plaf.synth.Region;
    var SCROLL_BAR_TRACK: javax.swing.plaf.synth.Region;
    var SCROLL_BAR_THUMB: javax.swing.plaf.synth.Region;
    var SCROLL_PANE: javax.swing.plaf.synth.Region;
    var SEPARATOR: javax.swing.plaf.synth.Region;
    var SLIDER: javax.swing.plaf.synth.Region;
    var SLIDER_TRACK: javax.swing.plaf.synth.Region;
    var SLIDER_THUMB: javax.swing.plaf.synth.Region;
    var SPINNER: javax.swing.plaf.synth.Region;
    var SPLIT_PANE: javax.swing.plaf.synth.Region;
    var SPLIT_PANE_DIVIDER: javax.swing.plaf.synth.Region;
    var TABBED_PANE: javax.swing.plaf.synth.Region;
    var TABBED_PANE_TAB: javax.swing.plaf.synth.Region;
    var TABBED_PANE_TAB_AREA: javax.swing.plaf.synth.Region;
    var TABBED_PANE_CONTENT: javax.swing.plaf.synth.Region;
    var TABLE: javax.swing.plaf.synth.Region;
    var TABLE_HEADER: javax.swing.plaf.synth.Region;
    var TEXT_AREA: javax.swing.plaf.synth.Region;
    var TEXT_FIELD: javax.swing.plaf.synth.Region;
    var TEXT_PANE: javax.swing.plaf.synth.Region;
    var TOGGLE_BUTTON: javax.swing.plaf.synth.Region;
    var TOOL_BAR: javax.swing.plaf.synth.Region;
    var TOOL_BAR_CONTENT: javax.swing.plaf.synth.Region;
    var TOOL_BAR_DRAG_WINDOW: javax.swing.plaf.synth.Region;
    var TOOL_TIP: javax.swing.plaf.synth.Region;
    var TOOL_BAR_SEPARATOR: javax.swing.plaf.synth.Region;
    var TREE: javax.swing.plaf.synth.Region;
    var TREE_CELL: javax.swing.plaf.synth.Region;
    var VIEWPORT: javax.swing.plaf.synth.Region;
}

type javax.swing.plaf.synth.SynthStyleFactory {
}

type javax.swing.plaf.synth.SynthPanelUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthInternalFrameTitlePane {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.plaf.synth.SynthUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthCheckBoxUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthGraphicsUtils {
}

type javax.swing.plaf.synth.SynthLabelUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthToolBarUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.plaf.synth.SynthOptionPaneUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
    var MinimumWidth: int;
    var MinimumHeight: int;
}

type javax.swing.plaf.synth.SynthToolTipUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthMenuBarUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthMenuItemLayoutHelper {
    var MAX_ACC_OR_ARROW_WIDTH: sun.swing.StringUIClientPropertyKey;
    var MAX_ARROW_WIDTH: sun.swing.StringUIClientPropertyKey;
    var MAX_CHECK_WIDTH: sun.swing.StringUIClientPropertyKey;
    var MAX_ICON_WIDTH: sun.swing.StringUIClientPropertyKey;
    var MAX_TEXT_WIDTH: sun.swing.StringUIClientPropertyKey;
    var MAX_ACC_WIDTH: sun.swing.StringUIClientPropertyKey;
    var MAX_LABEL_WIDTH: sun.swing.StringUIClientPropertyKey;
}

type javax.swing.plaf.synth.ParsedSynthStyle {
}

type javax.swing.plaf.synth.SynthScrollBarUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.plaf.synth.SynthTextPaneUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthScrollPaneUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
    var VIEWPORT: java.lang.String;
    var VERTICAL_SCROLLBAR: java.lang.String;
    var HORIZONTAL_SCROLLBAR: java.lang.String;
    var ROW_HEADER: java.lang.String;
    var COLUMN_HEADER: java.lang.String;
    var LOWER_LEFT_CORNER: java.lang.String;
    var LOWER_RIGHT_CORNER: java.lang.String;
    var UPPER_LEFT_CORNER: java.lang.String;
    var UPPER_RIGHT_CORNER: java.lang.String;
    var LOWER_LEADING_CORNER: java.lang.String;
    var LOWER_TRAILING_CORNER: java.lang.String;
    var UPPER_LEADING_CORNER: java.lang.String;
    var UPPER_TRAILING_CORNER: java.lang.String;
    var VERTICAL_SCROLLBAR_POLICY: java.lang.String;
    var HORIZONTAL_SCROLLBAR_POLICY: java.lang.String;
    var VERTICAL_SCROLLBAR_AS_NEEDED: int;
    var VERTICAL_SCROLLBAR_NEVER: int;
    var VERTICAL_SCROLLBAR_ALWAYS: int;
    var HORIZONTAL_SCROLLBAR_AS_NEEDED: int;
    var HORIZONTAL_SCROLLBAR_NEVER: int;
    var HORIZONTAL_SCROLLBAR_ALWAYS: int;
}

type javax.swing.plaf.synth.DefaultSynthStyleFactory {
    var NAME: int;
    var REGION: int;
}

type javax.swing.plaf.synth.SynthMenuLayout {
    var X_AXIS: int;
    var Y_AXIS: int;
    var LINE_AXIS: int;
    var PAGE_AXIS: int;
}

type javax.swing.plaf.synth.SynthPopupMenuUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthButtonUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthLookAndFeel {
}

type javax.swing.plaf.synth.ImagePainter {
}

type javax.swing.plaf.synth.SynthDesktopPaneUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthProgressBarUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.synth.SynthTableUI {
    var ENABLED: int;
    var MOUSE_OVER: int;
    var PRESSED: int;
    var DISABLED: int;
    var FOCUSED: int;
    var SELECTED: int;
    var DEFAULT: int;
}

type javax.swing.plaf.nimbus.ComboBoxArrowButtonEditableState {
}

type javax.swing.plaf.nimbus.SplitPaneDividerVerticalState {
}

type javax.swing.plaf.nimbus.ComboBoxArrowButtonPainter {
}

type javax.swing.plaf.nimbus.MenuItemPainter {
}

type javax.swing.plaf.nimbus.NimbusDefaults {
}

type javax.swing.plaf.nimbus.InternalFrameTitlePaneMenuButtonPainter {
}

type javax.swing.plaf.nimbus.ToolBarNorthState {
}

type javax.swing.plaf.nimbus.MenuPainter {
}

type javax.swing.plaf.nimbus.ComboBoxTextFieldPainter {
}

type javax.swing.plaf.nimbus.ToolTipPainter {
}

type javax.swing.plaf.nimbus.InternalFrameTitlePaneWindowFocusedState {
}

type javax.swing.plaf.nimbus.ImageCache {
}

type javax.swing.plaf.nimbus.TreePainter {
}

type javax.swing.plaf.nimbus.InternalFrameTitlePaneIconifyButtonPainter {
}

type javax.swing.plaf.nimbus.MenuBarMenuPainter {
}

type javax.swing.plaf.nimbus.DerivedColor {
    var white: java.awt.Color;
    var WHITE: java.awt.Color;
    var lightGray: java.awt.Color;
    var LIGHT_GRAY: java.awt.Color;
    var gray: java.awt.Color;
    var GRAY: java.awt.Color;
    var darkGray: java.awt.Color;
    var DARK_GRAY: java.awt.Color;
    var black: java.awt.Color;
    var BLACK: java.awt.Color;
    var red: java.awt.Color;
    var RED: java.awt.Color;
    var pink: java.awt.Color;
    var PINK: java.awt.Color;
    var orange: java.awt.Color;
    var ORANGE: java.awt.Color;
    var yellow: java.awt.Color;
    var YELLOW: java.awt.Color;
    var green: java.awt.Color;
    var GREEN: java.awt.Color;
    var magenta: java.awt.Color;
    var MAGENTA: java.awt.Color;
    var cyan: java.awt.Color;
    var CYAN: java.awt.Color;
    var blue: java.awt.Color;
    var BLUE: java.awt.Color;
    var OPAQUE: int;
    var BITMASK: int;
    var TRANSLUCENT: int;
}

type javax.swing.plaf.nimbus.ToolBarButtonPainter {
}

type javax.swing.plaf.nimbus.InternalFrameTitlePaneIconifyButtonWindowNotFocusedState {
}

type javax.swing.plaf.nimbus.CheckBoxPainter {
}

type javax.swing.plaf.nimbus.InternalFrameTitlePaneCloseButtonWindowNotFocusedState {
}

type javax.swing.plaf.nimbus.InternalFrameTitlePaneMaximizeButtonPainter {
}

type javax.swing.plaf.nimbus.DropShadowEffect {
}

type javax.swing.plaf.nimbus.ToolBarWestState {
}

type javax.swing.plaf.nimbus.PopupMenuPainter {
}

type javax.swing.plaf.nimbus.SpinnerPreviousButtonPainter {
}

type javax.swing.plaf.nimbus.ButtonPainter {
}

type javax.swing.plaf.nimbus.TextFieldPainter {
}

type javax.swing.plaf.nimbus.PasswordFieldPainter {
}

type javax.swing.plaf.nimbus.InnerShadowEffect {
}

type javax.swing.plaf.nimbus.TableScrollPaneCorner {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.plaf.nimbus.LoweredBorder {
}

type javax.swing.plaf.nimbus.EditorPanePainter {
}

type javax.swing.plaf.nimbus.TabbedPaneTabAreaPainter {
}

type javax.swing.plaf.nimbus.ImageScalingHelper {
}

type javax.swing.plaf.nimbus.RadioButtonMenuItemPainter {
}

type javax.swing.plaf.nimbus.ToolBarToggleButtonPainter {
}

type javax.swing.plaf.nimbus.SeparatorPainter {
}

type javax.swing.plaf.nimbus.ProgressBarPainter {
}

type javax.swing.plaf.nimbus.InternalFrameTitlePaneCloseButtonPainter {
}

type javax.swing.plaf.nimbus.OuterGlowEffect {
}

type javax.swing.plaf.nimbus.ToolBarSeparatorPainter {
}

type javax.swing.plaf.nimbus.SpinnerPanelSpinnerFormattedTextFieldPainter {
}

type javax.swing.plaf.nimbus.SpinnerNextButtonPainter {
}

type javax.swing.plaf.nimbus.NimbusStyle {
    var LARGE_KEY: java.lang.String;
    var SMALL_KEY: java.lang.String;
    var MINI_KEY: java.lang.String;
    var LARGE_SCALE: double;
    var SMALL_SCALE: double;
    var MINI_SCALE: double;
}

type javax.swing.plaf.nimbus.OptionPaneMessageAreaOptionPaneLabelPainter {
}

type javax.swing.plaf.nimbus.EffectUtils {
}

type javax.swing.plaf.nimbus.Effect {
}

type javax.swing.plaf.nimbus.TabbedPaneTabPainter {
}

type javax.swing.plaf.nimbus.OptionPanePainter {
}

type javax.swing.plaf.nimbus.ProgressBarIndeterminateState {
}

type javax.swing.plaf.nimbus.FormattedTextFieldPainter {
}

type javax.swing.plaf.nimbus.RadioButtonPainter {
}

type javax.swing.plaf.nimbus.NimbusLookAndFeel {
}

type javax.swing.plaf.nimbus.InternalFrameTitlePaneMenuButtonWindowNotFocusedState {
}

type javax.swing.plaf.nimbus.InternalFramePainter {
}

type javax.swing.plaf.nimbus.State {
}

type javax.swing.plaf.nimbus.AbstractRegionPainter {
}

type javax.swing.plaf.nimbus.MenuBarPainter {
}

type javax.swing.plaf.nimbus.ComboBoxPainter {
}

type javax.swing.plaf.nimbus.TableEditorPainter {
}

type javax.swing.plaf.nimbus.TableHeaderRendererPainter {
}

type javax.swing.plaf.nimbus.ScrollPanePainter {
}

type javax.swing.plaf.nimbus.TextAreaPainter {
}

type javax.swing.plaf.nimbus.SliderThumbPainter {
}

type javax.swing.plaf.nimbus.ArrowButtonPainter {
}

type javax.swing.plaf.nimbus.NimbusIcon {
}

type javax.swing.plaf.nimbus.ToggleButtonPainter {
}

type javax.swing.plaf.nimbus.SynthPainterImpl {
}

type javax.swing.plaf.nimbus.SplitPaneVerticalState {
}

type javax.swing.plaf.nimbus.TextAreaNotInScrollPaneState {
}

type javax.swing.plaf.nimbus.DesktopPanePainter {
}

type javax.swing.plaf.nimbus.ProgressBarFinishedState {
}

type javax.swing.plaf.nimbus.SliderArrowShapeState {
}

type javax.swing.plaf.nimbus.TextPanePainter {
}

type javax.swing.plaf.nimbus.TableHeaderRendererSortedState {
}

type javax.swing.plaf.nimbus.InternalFrameTitlePaneMaximizeButtonWindowMaximizedState {
}

type javax.swing.plaf.nimbus.InternalFrameWindowFocusedState {
}

type javax.swing.plaf.nimbus.SliderTrackPainter {
}

type javax.swing.plaf.nimbus.InnerGlowEffect {
}

type javax.swing.plaf.nimbus.SliderThumbArrowShapeState {
}

type javax.swing.plaf.nimbus.ShadowEffect {
}

type javax.swing.plaf.nimbus.ComboBoxEditableState {
}

type javax.swing.plaf.nimbus.FileChooserPainter {
}

type javax.swing.plaf.nimbus.ToolBarEastState {
}

type javax.swing.plaf.nimbus.ToolBarSouthState {
}

type javax.swing.plaf.nimbus.SliderTrackArrowShapeState {
}

type javax.swing.plaf.nimbus.TreeCellPainter {
}

type javax.swing.plaf.nimbus.PopupMenuSeparatorPainter {
}

type javax.swing.plaf.nimbus.SplitPaneDividerPainter {
}

type javax.swing.plaf.nimbus.ToolBarPainter {
}

type javax.swing.plaf.nimbus.ScrollBarThumbPainter {
}

type javax.swing.plaf.nimbus.DesktopIconPainter {
}

type javax.swing.plaf.nimbus.CheckBoxMenuItemPainter {
}

type javax.swing.plaf.nimbus.InternalFrameTitlePaneMaximizeButtonWindowNotFocusedState {
}

type javax.swing.plaf.nimbus.TreeCellEditorPainter {
}

type javax.swing.plaf.nimbus.ScrollBarButtonPainter {
}

type javax.swing.plaf.nimbus.ScrollBarTrackPainter {
}

type javax.swing.plaf.nimbus.TableHeaderPainter {
}

type javax.swing.plaf.ListUI {
}

type javax.swing.plaf.ComponentInputMapUIResource {
}

type javax.swing.plaf.RootPaneUI {
}

type javax.swing.plaf.BorderUIResource {
}

type javax.swing.plaf.DesktopPaneUI {
}

type javax.swing.plaf.TabbedPaneUI {
}

type javax.swing.plaf.SeparatorUI {
}

type javax.swing.plaf.ProgressBarUI {
}

type javax.swing.plaf.ComboBoxUI {
}

type javax.swing.plaf.ComponentUI {
}

type javax.swing.plaf.FileChooserUI {
}

type javax.swing.plaf.TreeUI {
}

type javax.swing.plaf.SplitPaneUI {
}

type javax.swing.plaf.SliderUI {
}

type javax.swing.plaf.DimensionUIResource {
    var width: int;
    var height: int;
}

type javax.swing.plaf.ToolBarUI {
}

type javax.swing.plaf.MenuBarUI {
}

type javax.swing.plaf.ToolTipUI {
}

type javax.swing.plaf.InputMapUIResource {
}

type javax.swing.plaf.ActionMapUIResource {
}

type javax.swing.MutableComboBoxModel {
}

type javax.swing.ComboBoxModel {
}

type javax.swing.JLayer {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.LayoutStyle {
}

type javax.swing.JApplet {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.LookAndFeel {
}

type javax.swing.ProgressMonitor {
}

type javax.swing.BufferStrategyPaintManager {
}

type javax.swing.DebugGraphicsFilter {
    var RANDOMPIXELORDER: int;
    var TOPDOWNLEFTRIGHT: int;
    var COMPLETESCANLINES: int;
    var SINGLEPASS: int;
    var SINGLEFRAME: int;
    var IMAGEERROR: int;
    var SINGLEFRAMEDONE: int;
    var STATICIMAGEDONE: int;
    var IMAGEABORTED: int;
}

type javax.swing.JColorChooser {
    var SELECTION_MODEL_PROPERTY: java.lang.String;
    var PREVIEW_PANEL_PROPERTY: java.lang.String;
    var CHOOSER_PANELS_PROPERTY: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JButton {
    var MODEL_CHANGED_PROPERTY: java.lang.String;
    var TEXT_CHANGED_PROPERTY: java.lang.String;
    var MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var MARGIN_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var BORDER_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var FOCUS_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var CONTENT_AREA_FILLED_CHANGED_PROPERTY: java.lang.String;
    var ICON_CHANGED_PROPERTY: java.lang.String;
    var PRESSED_ICON_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JDialog {
    var DO_NOTHING_ON_CLOSE: int;
    var HIDE_ON_CLOSE: int;
    var DISPOSE_ON_CLOSE: int;
    var EXIT_ON_CLOSE: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.AbstractSpinnerModel {
}

type javax.swing.CompareTabOrderComparator {
}

type javax.swing.SpringLayout {
    var NORTH: java.lang.String;
    var SOUTH: java.lang.String;
    var EAST: java.lang.String;
    var WEST: java.lang.String;
    var HORIZONTAL_CENTER: java.lang.String;
    var VERTICAL_CENTER: java.lang.String;
    var BASELINE: java.lang.String;
    var WIDTH: java.lang.String;
    var HEIGHT: java.lang.String;
}

type javax.swing.ButtonModel {
}

type javax.swing.KeyStroke {
}

type javax.swing.SwingDefaultFocusTraversalPolicy {
}

type javax.swing.undo.AbstractUndoableEdit {
}

type javax.swing.undo.CannotRedoException {
}

type javax.swing.undo.CompoundEdit {
}

type javax.swing.undo.UndoableEditSupport {
}

type javax.swing.undo.StateEditable {
    var RCSID: java.lang.String;
}

type javax.swing.undo.CannotUndoException {
}

type javax.swing.undo.UndoableEdit {
}

type javax.swing.undo.StateEdit {
}

type javax.swing.undo.UndoManager {
}

type javax.swing.ColorTracker {
}

type javax.swing.DelegatingDefaultFocusManager {
    var FOCUS_MANAGER_CLASS_PROPERTY: java.lang.String;
    var FORWARD_TRAVERSAL_KEYS: int;
    var BACKWARD_TRAVERSAL_KEYS: int;
    var UP_CYCLE_TRAVERSAL_KEYS: int;
    var DOWN_CYCLE_TRAVERSAL_KEYS: int;
}

type javax.swing.JTree {
    var CELL_RENDERER_PROPERTY: java.lang.String;
    var TREE_MODEL_PROPERTY: java.lang.String;
    var ROOT_VISIBLE_PROPERTY: java.lang.String;
    var SHOWS_ROOT_HANDLES_PROPERTY: java.lang.String;
    var ROW_HEIGHT_PROPERTY: java.lang.String;
    var CELL_EDITOR_PROPERTY: java.lang.String;
    var EDITABLE_PROPERTY: java.lang.String;
    var LARGE_MODEL_PROPERTY: java.lang.String;
    var SELECTION_MODEL_PROPERTY: java.lang.String;
    var VISIBLE_ROW_COUNT_PROPERTY: java.lang.String;
    var INVOKES_STOP_CELL_EDITING_PROPERTY: java.lang.String;
    var SCROLLS_ON_EXPAND_PROPERTY: java.lang.String;
    var TOGGLE_CLICK_COUNT_PROPERTY: java.lang.String;
    var LEAD_SELECTION_PATH_PROPERTY: java.lang.String;
    var ANCHOR_SELECTION_PATH_PROPERTY: java.lang.String;
    var EXPANDS_SELECTED_PATHS_PROPERTY: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.Timer {
}

type javax.swing.TransferHandler {
    var NONE: int;
    var COPY: int;
    var MOVE: int;
    var COPY_OR_MOVE: int;
    var LINK: int;
}

type javax.swing.JComboBox {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.LegacyLayoutFocusTraversalPolicy {
}

type javax.swing.PopupFactory {
}

type javax.swing.UIClientPropertyKey {
}

type javax.swing.JToggleButton {
    var MODEL_CHANGED_PROPERTY: java.lang.String;
    var TEXT_CHANGED_PROPERTY: java.lang.String;
    var MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var MARGIN_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var BORDER_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var FOCUS_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var CONTENT_AREA_FILLED_CHANGED_PROPERTY: java.lang.String;
    var ICON_CHANGED_PROPERTY: java.lang.String;
    var PRESSED_ICON_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JRootPane {
    var NONE: int;
    var FRAME: int;
    var PLAIN_DIALOG: int;
    var INFORMATION_DIALOG: int;
    var ERROR_DIALOG: int;
    var COLOR_CHOOSER_DIALOG: int;
    var FILE_CHOOSER_DIALOG: int;
    var QUESTION_DIALOG: int;
    var WARNING_DIALOG: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JLayeredPane {
    var DEFAULT_LAYER: java.lang.Integer;
    var PALETTE_LAYER: java.lang.Integer;
    var MODAL_LAYER: java.lang.Integer;
    var POPUP_LAYER: java.lang.Integer;
    var DRAG_LAYER: java.lang.Integer;
    var FRAME_CONTENT_LAYER: java.lang.Integer;
    var LAYER_PROPERTY: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.ColorChooserDialog {
    var DO_NOTHING_ON_CLOSE: int;
    var HIDE_ON_CLOSE: int;
    var DISPOSE_ON_CLOSE: int;
    var EXIT_ON_CLOSE: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.DefaultSingleSelectionModel {
}

type javax.swing.InputMap {
}

type javax.swing.ComboBoxEditor {
}

type javax.swing.JMenuBar {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.InputVerifier {
}

type javax.swing.JComponent {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

enum javax.swing.SortOrder {
    ASCENDING = 0;
    DESCENDING = 1;
    UNSORTED = 2;
}

type javax.swing.OverlayLayout {
}

type javax.swing.SortingFocusTraversalPolicy {
}

type javax.swing.LayoutFocusTraversalPolicy {
}

type javax.swing.Box {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JViewport {
    var BLIT_SCROLL_MODE: int;
    var BACKINGSTORE_SCROLL_MODE: int;
    var SIMPLE_SCROLL_MODE: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JToolTip {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.table.TableRowSorter {
}

type javax.swing.table.TableColumnModel {
}

type javax.swing.table.TableCellEditor {
}

type javax.swing.table.JTableHeader {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.table.DefaultTableModel {
}

type javax.swing.table.AbstractTableModel {
}

type javax.swing.table.TableStringConverter {
}

type javax.swing.table.TableCellRenderer {
}

type javax.swing.table.DefaultTableColumnModel {
}

type javax.swing.table.TableColumn {
    var COLUMN_WIDTH_PROPERTY: java.lang.String;
    var HEADER_VALUE_PROPERTY: java.lang.String;
    var HEADER_RENDERER_PROPERTY: java.lang.String;
    var CELL_RENDERER_PROPERTY: java.lang.String;
}

type javax.swing.table.TableModel {
}

type javax.swing.table.DefaultTableCellRenderer {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JTabbedPane {
    var WRAP_TAB_LAYOUT: int;
    var SCROLL_TAB_LAYOUT: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.DefaultButtonModel {
    var ARMED: int;
    var SELECTED: int;
    var PRESSED: int;
    var ENABLED: int;
    var ROLLOVER: int;
}

type javax.swing.ActionMap {
}

type javax.swing.ScrollPaneLayout {
    var VIEWPORT: java.lang.String;
    var VERTICAL_SCROLLBAR: java.lang.String;
    var HORIZONTAL_SCROLLBAR: java.lang.String;
    var ROW_HEADER: java.lang.String;
    var COLUMN_HEADER: java.lang.String;
    var LOWER_LEFT_CORNER: java.lang.String;
    var LOWER_RIGHT_CORNER: java.lang.String;
    var UPPER_LEFT_CORNER: java.lang.String;
    var UPPER_RIGHT_CORNER: java.lang.String;
    var LOWER_LEADING_CORNER: java.lang.String;
    var LOWER_TRAILING_CORNER: java.lang.String;
    var UPPER_LEADING_CORNER: java.lang.String;
    var UPPER_TRAILING_CORNER: java.lang.String;
    var VERTICAL_SCROLLBAR_POLICY: java.lang.String;
    var HORIZONTAL_SCROLLBAR_POLICY: java.lang.String;
    var VERTICAL_SCROLLBAR_AS_NEEDED: int;
    var VERTICAL_SCROLLBAR_NEVER: int;
    var VERTICAL_SCROLLBAR_ALWAYS: int;
    var HORIZONTAL_SCROLLBAR_AS_NEEDED: int;
    var HORIZONTAL_SCROLLBAR_NEVER: int;
    var HORIZONTAL_SCROLLBAR_ALWAYS: int;
}

type javax.swing.DefaultDesktopManager {
}

type javax.swing.colorchooser.SwatchPanel {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.colorchooser.ColorModelCMYK {
}

type javax.swing.colorchooser.ColorPanel {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.colorchooser.CenterLayout {
}

type javax.swing.colorchooser.ColorChooserPanel {
    var TRANSPARENCY_ENABLED_PROPERTY: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.colorchooser.RecentSwatchPanel {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.colorchooser.ColorSelectionModel {
}

type javax.swing.colorchooser.MainSwatchPanel {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.colorchooser.ColorModel {
}

type javax.swing.colorchooser.DefaultSwatchChooserPanel {
    var TRANSPARENCY_ENABLED_PROPERTY: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.colorchooser.DefaultPreviewPanel {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.colorchooser.ValueFormatter {
}

type javax.swing.colorchooser.SlidingSpinner {
}

type javax.swing.colorchooser.ColorModelHSL {
}

type javax.swing.colorchooser.DiagramComponent {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.colorchooser.AbstractColorChooserPanel {
    var TRANSPARENCY_ENABLED_PROPERTY: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.colorchooser.ColorChooserComponentFactory {
}

type javax.swing.colorchooser.DefaultColorSelectionModel {
}

type javax.swing.colorchooser.SmartGridLayout {
}

type javax.swing.colorchooser.ColorModelHSV {
}

type javax.swing.JTextField {
    var notifyAction: java.lang.String;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var FOCUS_ACCELERATOR_KEY: java.lang.String;
    var DEFAULT_KEYMAP: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.SizeSequence {
}

type javax.swing.AbstractListModel {
}

type javax.swing.MenuElement {
}

type javax.swing.JToolBar {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.TablePrintable {
    var PAGE_EXISTS: int;
    var NO_SUCH_PAGE: int;
}

type javax.swing.BoundedRangeModel {
}

type javax.swing.ActionPropertyChangeListener {
}

type javax.swing.JLabel {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JRadioButtonMenuItem {
    var MODEL_CHANGED_PROPERTY: java.lang.String;
    var TEXT_CHANGED_PROPERTY: java.lang.String;
    var MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var MARGIN_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var BORDER_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var FOCUS_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var CONTENT_AREA_FILLED_CHANGED_PROPERTY: java.lang.String;
    var ICON_CHANGED_PROPERTY: java.lang.String;
    var PRESSED_ICON_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.DefaultListSelectionModel {
    var SINGLE_SELECTION: int;
    var SINGLE_INTERVAL_SELECTION: int;
    var MULTIPLE_INTERVAL_SELECTION: int;
}

type javax.swing.AbstractAction {
    var DEFAULT: java.lang.String;
    var NAME: java.lang.String;
    var SHORT_DESCRIPTION: java.lang.String;
    var LONG_DESCRIPTION: java.lang.String;
    var SMALL_ICON: java.lang.String;
    var ACTION_COMMAND_KEY: java.lang.String;
    var ACCELERATOR_KEY: java.lang.String;
    var MNEMONIC_KEY: java.lang.String;
    var SELECTED_KEY: java.lang.String;
    var DISPLAYED_MNEMONIC_INDEX_KEY: java.lang.String;
    var LARGE_ICON_KEY: java.lang.String;
}

type javax.swing.ListSelectionModel {
    var SINGLE_SELECTION: int;
    var SINGLE_INTERVAL_SELECTION: int;
    var MULTIPLE_INTERVAL_SELECTION: int;
}

type javax.swing.BoxLayout {
    var X_AXIS: int;
    var Y_AXIS: int;
    var LINE_AXIS: int;
    var PAGE_AXIS: int;
}

enum javax.swing.ClientPropertyKey {
    JComponent_INPUT_VERIFIER = 0;
    JComponent_TRANSFER_HANDLER = 1;
    JComponent_ANCESTOR_NOTIFIER = 2;
    PopupFactory_FORCE_HEAVYWEIGHT_POPUP = 3;
}

type javax.swing.AncestorNotifier {
}

type javax.swing.Painter {
}

type javax.swing.JTable {
    var AUTO_RESIZE_OFF: int;
    var AUTO_RESIZE_NEXT_COLUMN: int;
    var AUTO_RESIZE_SUBSEQUENT_COLUMNS: int;
    var AUTO_RESIZE_LAST_COLUMN: int;
    var AUTO_RESIZE_ALL_COLUMNS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.DefaultListCellRenderer {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.MultiUIDefaults {
}

type javax.swing.RowSorter {
}

type javax.swing.AbstractButton {
    var MODEL_CHANGED_PROPERTY: java.lang.String;
    var TEXT_CHANGED_PROPERTY: java.lang.String;
    var MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var MARGIN_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var BORDER_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var FOCUS_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var CONTENT_AREA_FILLED_CHANGED_PROPERTY: java.lang.String;
    var ICON_CHANGED_PROPERTY: java.lang.String;
    var PRESSED_ICON_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.ViewportLayout {
}

type javax.swing.text.DefaultFormatterFactory {
}

type javax.swing.text.WhitespaceBasedBreakIterator {
    var DONE: int;
}

type javax.swing.text.IconView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.GlyphPainter2 {
}

type javax.swing.text.DefaultTextUI {
}

type javax.swing.text.Utilities {
}

type javax.swing.text.NavigationFilter {
}

type javax.swing.text.BoxView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.MutableAttributeSet {
    var NameAttribute: java.lang.Object;
    var ResolveAttribute: java.lang.Object;
}

type javax.swing.text.NumberFormatter {
}

type javax.swing.text.View {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.LayeredHighlighter {
}

type javax.swing.text.TextLayoutStrategy {
}

type javax.swing.text.SegmentCache {
}

type javax.swing.text.DefaultHighlighter {
}

type javax.swing.text.rtf.Constants {
}

type javax.swing.text.rtf.RTFGenerator {
    var defaultRTFColor: java.awt.Color;
    var defaultFontSize: float;
    var defaultFontFamily: java.lang.String;
}

type javax.swing.text.rtf.MockAttributeSet {
    var backing: java.util.Dictionary;
    var NameAttribute: java.lang.Object;
    var ResolveAttribute: java.lang.Object;
}

type javax.swing.text.rtf.RTFParser {
    var level: int;
}

type javax.swing.text.rtf.RTFReader {
    var level: int;
}

type javax.swing.text.rtf.AbstractFilter {
}

type javax.swing.text.rtf.RTFEditorKit {
    var EndOfLineStringProperty: java.lang.String;
    var insertContentAction: java.lang.String;
    var insertBreakAction: java.lang.String;
    var insertTabAction: java.lang.String;
    var deletePrevCharAction: java.lang.String;
    var deleteNextCharAction: java.lang.String;
    var deleteNextWordAction: java.lang.String;
    var deletePrevWordAction: java.lang.String;
    var readOnlyAction: java.lang.String;
    var writableAction: java.lang.String;
    var cutAction: java.lang.String;
    var copyAction: java.lang.String;
    var pasteAction: java.lang.String;
    var beepAction: java.lang.String;
    var pageUpAction: java.lang.String;
    var pageDownAction: java.lang.String;
    var forwardAction: java.lang.String;
    var backwardAction: java.lang.String;
    var selectionForwardAction: java.lang.String;
    var selectionBackwardAction: java.lang.String;
    var upAction: java.lang.String;
    var downAction: java.lang.String;
    var selectionUpAction: java.lang.String;
    var selectionDownAction: java.lang.String;
    var beginWordAction: java.lang.String;
    var endWordAction: java.lang.String;
    var selectionBeginWordAction: java.lang.String;
    var selectionEndWordAction: java.lang.String;
    var previousWordAction: java.lang.String;
    var nextWordAction: java.lang.String;
    var selectionPreviousWordAction: java.lang.String;
    var selectionNextWordAction: java.lang.String;
    var beginLineAction: java.lang.String;
    var endLineAction: java.lang.String;
    var selectionBeginLineAction: java.lang.String;
    var selectionEndLineAction: java.lang.String;
    var beginParagraphAction: java.lang.String;
    var endParagraphAction: java.lang.String;
    var selectionBeginParagraphAction: java.lang.String;
    var selectionEndParagraphAction: java.lang.String;
    var beginAction: java.lang.String;
    var endAction: java.lang.String;
    var selectionBeginAction: java.lang.String;
    var selectionEndAction: java.lang.String;
    var selectWordAction: java.lang.String;
    var selectLineAction: java.lang.String;
    var selectParagraphAction: java.lang.String;
    var selectAllAction: java.lang.String;
    var defaultKeyTypedAction: java.lang.String;
}

type javax.swing.text.rtf.RTFAttribute {
    var D_CHARACTER: int;
    var D_PARAGRAPH: int;
    var D_SECTION: int;
    var D_DOCUMENT: int;
    var D_META: int;
}

type javax.swing.text.rtf.RTFAttributes {
}

type javax.swing.text.Caret {
}

type javax.swing.text.AbstractDocument {
    var ParagraphElementName: java.lang.String;
    var ContentElementName: java.lang.String;
    var SectionElementName: java.lang.String;
    var BidiElementName: java.lang.String;
    var ElementNameAttribute: java.lang.String;
    var StreamDescriptionProperty: java.lang.String;
    var TitleProperty: java.lang.String;
}

type javax.swing.text.MaskFormatter {
}

type javax.swing.text.TabExpander {
}

type javax.swing.text.GlyphPainter1 {
}

type javax.swing.text.StringContent {
}

type javax.swing.text.BadLocationException {
}

type javax.swing.text.ComponentView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.LayoutQueue {
}

type javax.swing.text.ChangedCharSetException {
}

type javax.swing.text.Keymap {
}

type javax.swing.text.ElementIterator {
}

type javax.swing.text.PlainDocument {
    var tabSizeAttribute: java.lang.String;
    var lineLimitAttribute: java.lang.String;
    var ParagraphElementName: java.lang.String;
    var ContentElementName: java.lang.String;
    var SectionElementName: java.lang.String;
    var BidiElementName: java.lang.String;
    var ElementNameAttribute: java.lang.String;
    var StreamDescriptionProperty: java.lang.String;
    var TitleProperty: java.lang.String;
}

type javax.swing.text.StyleContext {
    var DEFAULT_STYLE: java.lang.String;
}

type javax.swing.text.InternationalFormatter {
}

type javax.swing.text.Segment {
    var array: array<char>;
    var offset: int;
    var count: int;
    var DONE: char;
}

type javax.swing.text.JTextComponent {
    var FOCUS_ACCELERATOR_KEY: java.lang.String;
    var DEFAULT_KEYMAP: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.text.StateInvariantError {
}

type javax.swing.text.html.HiddenTagView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.MuxingAttributeSet {
    var NameAttribute: java.lang.Object;
    var ResolveAttribute: java.lang.Object;
}

type javax.swing.text.html.IsindexView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.StyleSheet {
    var DEFAULT_STYLE: java.lang.String;
}

type javax.swing.text.html.LineView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.CSSParser {
}

type javax.swing.text.html.CSSBorder {
}

type javax.swing.text.html.Option {
}

type javax.swing.text.html.HRuleView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.FrameView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.BRView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.FrameSetView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.CSS {
}

type javax.swing.text.html.ListView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.HTMLFrameHyperlinkEvent {
}

type javax.swing.text.html.MinimalHTMLWriter {
}

type javax.swing.text.html.HTML {
    var NULL_ATTRIBUTE_VALUE: java.lang.String;
}

type javax.swing.text.html.parser.ContentModelState {
}

type javax.swing.text.html.parser.Entity {
    var name: java.lang.String;
    var `type`: int;
    var data: array<char>;
    var CDATA: int;
    var ENTITY: int;
    var ENTITIES: int;
    var ID: int;
    var IDREF: int;
    var IDREFS: int;
    var NAME: int;
    var NAMES: int;
    var NMTOKEN: int;
    var NMTOKENS: int;
    var NOTATION: int;
    var NUMBER: int;
    var NUMBERS: int;
    var NUTOKEN: int;
    var NUTOKENS: int;
    var RCDATA: int;
    var EMPTY: int;
    var MODEL: int;
    var ANY: int;
    var FIXED: int;
    var REQUIRED: int;
    var CURRENT: int;
    var CONREF: int;
    var IMPLIED: int;
    var PUBLIC: int;
    var SDATA: int;
    var PI: int;
    var STARTTAG: int;
    var ENDTAG: int;
    var MS: int;
    var MD: int;
    var SYSTEM: int;
    var GENERAL: int;
    var DEFAULT: int;
    var PARAMETER: int;
}

type javax.swing.text.html.parser.TagStack {
    var CDATA: int;
    var ENTITY: int;
    var ENTITIES: int;
    var ID: int;
    var IDREF: int;
    var IDREFS: int;
    var NAME: int;
    var NAMES: int;
    var NMTOKEN: int;
    var NMTOKENS: int;
    var NOTATION: int;
    var NUMBER: int;
    var NUMBERS: int;
    var NUTOKEN: int;
    var NUTOKENS: int;
    var RCDATA: int;
    var EMPTY: int;
    var MODEL: int;
    var ANY: int;
    var FIXED: int;
    var REQUIRED: int;
    var CURRENT: int;
    var CONREF: int;
    var IMPLIED: int;
    var PUBLIC: int;
    var SDATA: int;
    var PI: int;
    var STARTTAG: int;
    var ENDTAG: int;
    var MS: int;
    var MD: int;
    var SYSTEM: int;
    var GENERAL: int;
    var DEFAULT: int;
    var PARAMETER: int;
}

type javax.swing.text.html.parser.TagElement {
}

type javax.swing.text.html.parser.ParserDelegator {
}

type javax.swing.text.html.parser.Element {
    var index: int;
    var name: java.lang.String;
    var oStart: boolean;
    var oEnd: boolean;
    var inclusions: java.util.BitSet;
    var exclusions: java.util.BitSet;
    var `type`: int;
    var content: javax.swing.text.html.parser.ContentModel;
    var atts: javax.swing.text.html.parser.AttributeList;
    var data: java.lang.Object;
    var CDATA: int;
    var ENTITY: int;
    var ENTITIES: int;
    var ID: int;
    var IDREF: int;
    var IDREFS: int;
    var NAME: int;
    var NAMES: int;
    var NMTOKEN: int;
    var NMTOKENS: int;
    var NOTATION: int;
    var NUMBER: int;
    var NUMBERS: int;
    var NUTOKEN: int;
    var NUTOKENS: int;
    var RCDATA: int;
    var EMPTY: int;
    var MODEL: int;
    var ANY: int;
    var FIXED: int;
    var REQUIRED: int;
    var CURRENT: int;
    var CONREF: int;
    var IMPLIED: int;
    var PUBLIC: int;
    var SDATA: int;
    var PI: int;
    var STARTTAG: int;
    var ENDTAG: int;
    var MS: int;
    var MD: int;
    var SYSTEM: int;
    var GENERAL: int;
    var DEFAULT: int;
    var PARAMETER: int;
}

type javax.swing.text.html.parser.AttributeList {
    var name: java.lang.String;
    var `type`: int;
    var values: java.util.Vector;
    var modifier: int;
    var value: java.lang.String;
    var next: javax.swing.text.html.parser.AttributeList;
    var CDATA: int;
    var ENTITY: int;
    var ENTITIES: int;
    var ID: int;
    var IDREF: int;
    var IDREFS: int;
    var NAME: int;
    var NAMES: int;
    var NMTOKEN: int;
    var NMTOKENS: int;
    var NOTATION: int;
    var NUMBER: int;
    var NUMBERS: int;
    var NUTOKEN: int;
    var NUTOKENS: int;
    var RCDATA: int;
    var EMPTY: int;
    var MODEL: int;
    var ANY: int;
    var FIXED: int;
    var REQUIRED: int;
    var CURRENT: int;
    var CONREF: int;
    var IMPLIED: int;
    var PUBLIC: int;
    var SDATA: int;
    var PI: int;
    var STARTTAG: int;
    var ENDTAG: int;
    var MS: int;
    var MD: int;
    var SYSTEM: int;
    var GENERAL: int;
    var DEFAULT: int;
    var PARAMETER: int;
}

type javax.swing.text.html.parser.DTDConstants {
    var CDATA: int;
    var ENTITY: int;
    var ENTITIES: int;
    var ID: int;
    var IDREF: int;
    var IDREFS: int;
    var NAME: int;
    var NAMES: int;
    var NMTOKEN: int;
    var NMTOKENS: int;
    var NOTATION: int;
    var NUMBER: int;
    var NUMBERS: int;
    var NUTOKEN: int;
    var NUTOKENS: int;
    var RCDATA: int;
    var EMPTY: int;
    var MODEL: int;
    var ANY: int;
    var FIXED: int;
    var REQUIRED: int;
    var CURRENT: int;
    var CONREF: int;
    var IMPLIED: int;
    var PUBLIC: int;
    var SDATA: int;
    var PI: int;
    var STARTTAG: int;
    var ENDTAG: int;
    var MS: int;
    var MD: int;
    var SYSTEM: int;
    var GENERAL: int;
    var DEFAULT: int;
    var PARAMETER: int;
}

type javax.swing.text.html.parser.Parser {
    var CDATA: int;
    var ENTITY: int;
    var ENTITIES: int;
    var ID: int;
    var IDREF: int;
    var IDREFS: int;
    var NAME: int;
    var NAMES: int;
    var NMTOKEN: int;
    var NMTOKENS: int;
    var NOTATION: int;
    var NUMBER: int;
    var NUMBERS: int;
    var NUTOKEN: int;
    var NUTOKENS: int;
    var RCDATA: int;
    var EMPTY: int;
    var MODEL: int;
    var ANY: int;
    var FIXED: int;
    var REQUIRED: int;
    var CURRENT: int;
    var CONREF: int;
    var IMPLIED: int;
    var PUBLIC: int;
    var SDATA: int;
    var PI: int;
    var STARTTAG: int;
    var ENDTAG: int;
    var MS: int;
    var MD: int;
    var SYSTEM: int;
    var GENERAL: int;
    var DEFAULT: int;
    var PARAMETER: int;
}

type javax.swing.text.html.parser.NPrintWriter {
}

type javax.swing.text.html.parser.DTD {
    var name: java.lang.String;
    var elements: java.util.Vector;
    var elementHash: java.util.Hashtable;
    var entityHash: java.util.Hashtable;
    var pcdata: javax.swing.text.html.parser.Element;
    var html: javax.swing.text.html.parser.Element;
    var meta: javax.swing.text.html.parser.Element;
    var base: javax.swing.text.html.parser.Element;
    var isindex: javax.swing.text.html.parser.Element;
    var head: javax.swing.text.html.parser.Element;
    var body: javax.swing.text.html.parser.Element;
    var applet: javax.swing.text.html.parser.Element;
    var param: javax.swing.text.html.parser.Element;
    var p: javax.swing.text.html.parser.Element;
    var title: javax.swing.text.html.parser.Element;
    var FILE_VERSION: int;
    var CDATA: int;
    var ENTITY: int;
    var ENTITIES: int;
    var ID: int;
    var IDREF: int;
    var IDREFS: int;
    var NAME: int;
    var NAMES: int;
    var NMTOKEN: int;
    var NMTOKENS: int;
    var NOTATION: int;
    var NUMBER: int;
    var NUMBERS: int;
    var NUTOKEN: int;
    var NUTOKENS: int;
    var RCDATA: int;
    var EMPTY: int;
    var MODEL: int;
    var ANY: int;
    var FIXED: int;
    var REQUIRED: int;
    var CURRENT: int;
    var CONREF: int;
    var IMPLIED: int;
    var PUBLIC: int;
    var SDATA: int;
    var PI: int;
    var STARTTAG: int;
    var ENDTAG: int;
    var MS: int;
    var MD: int;
    var SYSTEM: int;
    var GENERAL: int;
    var DEFAULT: int;
    var PARAMETER: int;
}

type javax.swing.text.html.parser.ContentModel {
    var `type`: int;
    var content: java.lang.Object;
    var next: javax.swing.text.html.parser.ContentModel;
}

type javax.swing.text.html.parser.DocumentParser {
    var CDATA: int;
    var ENTITY: int;
    var ENTITIES: int;
    var ID: int;
    var IDREF: int;
    var IDREFS: int;
    var NAME: int;
    var NAMES: int;
    var NMTOKEN: int;
    var NMTOKENS: int;
    var NOTATION: int;
    var NUMBER: int;
    var NUMBERS: int;
    var NUTOKEN: int;
    var NUTOKENS: int;
    var RCDATA: int;
    var EMPTY: int;
    var MODEL: int;
    var ANY: int;
    var FIXED: int;
    var REQUIRED: int;
    var CURRENT: int;
    var CONREF: int;
    var IMPLIED: int;
    var PUBLIC: int;
    var SDATA: int;
    var PI: int;
    var STARTTAG: int;
    var ENDTAG: int;
    var MS: int;
    var MD: int;
    var SYSTEM: int;
    var GENERAL: int;
    var DEFAULT: int;
    var PARAMETER: int;
}

type javax.swing.text.html.TextAreaDocument {
    var tabSizeAttribute: java.lang.String;
    var lineLimitAttribute: java.lang.String;
    var ParagraphElementName: java.lang.String;
    var ContentElementName: java.lang.String;
    var SectionElementName: java.lang.String;
    var BidiElementName: java.lang.String;
    var ElementNameAttribute: java.lang.String;
    var StreamDescriptionProperty: java.lang.String;
    var TitleProperty: java.lang.String;
}

type javax.swing.text.html.EditableView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.AccessibleHTML {
}

type javax.swing.text.html.TableView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.InlineView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.HTMLDocument {
    var AdditionalComments: java.lang.String;
    var BUFFER_SIZE_DEFAULT: int;
    var StreamDescriptionProperty: java.lang.String;
    var TitleProperty: java.lang.String;
    var ParagraphElementName: java.lang.String;
    var ContentElementName: java.lang.String;
    var SectionElementName: java.lang.String;
    var BidiElementName: java.lang.String;
    var ElementNameAttribute: java.lang.String;
}

type javax.swing.text.html.FormView {
    var SUBMIT: java.lang.String;
    var RESET: java.lang.String;
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.HTMLWriter {
}

type javax.swing.text.html.OptionListModel {
    var SINGLE_SELECTION: int;
    var SINGLE_INTERVAL_SELECTION: int;
    var MULTIPLE_INTERVAL_SELECTION: int;
}

type javax.swing.text.html.OptionComboBoxModel {
}

type javax.swing.text.html.HTMLEditorKit {
    var DEFAULT_CSS: java.lang.String;
    var BOLD_ACTION: java.lang.String;
    var ITALIC_ACTION: java.lang.String;
    var PARA_INDENT_LEFT: java.lang.String;
    var PARA_INDENT_RIGHT: java.lang.String;
    var FONT_CHANGE_BIGGER: java.lang.String;
    var FONT_CHANGE_SMALLER: java.lang.String;
    var COLOR_ACTION: java.lang.String;
    var LOGICAL_STYLE_ACTION: java.lang.String;
    var IMG_ALIGN_TOP: java.lang.String;
    var IMG_ALIGN_MIDDLE: java.lang.String;
    var IMG_ALIGN_BOTTOM: java.lang.String;
    var IMG_BORDER: java.lang.String;
    var EndOfLineStringProperty: java.lang.String;
    var insertContentAction: java.lang.String;
    var insertBreakAction: java.lang.String;
    var insertTabAction: java.lang.String;
    var deletePrevCharAction: java.lang.String;
    var deleteNextCharAction: java.lang.String;
    var deleteNextWordAction: java.lang.String;
    var deletePrevWordAction: java.lang.String;
    var readOnlyAction: java.lang.String;
    var writableAction: java.lang.String;
    var cutAction: java.lang.String;
    var copyAction: java.lang.String;
    var pasteAction: java.lang.String;
    var beepAction: java.lang.String;
    var pageUpAction: java.lang.String;
    var pageDownAction: java.lang.String;
    var forwardAction: java.lang.String;
    var backwardAction: java.lang.String;
    var selectionForwardAction: java.lang.String;
    var selectionBackwardAction: java.lang.String;
    var upAction: java.lang.String;
    var downAction: java.lang.String;
    var selectionUpAction: java.lang.String;
    var selectionDownAction: java.lang.String;
    var beginWordAction: java.lang.String;
    var endWordAction: java.lang.String;
    var selectionBeginWordAction: java.lang.String;
    var selectionEndWordAction: java.lang.String;
    var previousWordAction: java.lang.String;
    var nextWordAction: java.lang.String;
    var selectionPreviousWordAction: java.lang.String;
    var selectionNextWordAction: java.lang.String;
    var beginLineAction: java.lang.String;
    var endLineAction: java.lang.String;
    var selectionBeginLineAction: java.lang.String;
    var selectionEndLineAction: java.lang.String;
    var beginParagraphAction: java.lang.String;
    var endParagraphAction: java.lang.String;
    var selectionBeginParagraphAction: java.lang.String;
    var selectionEndParagraphAction: java.lang.String;
    var beginAction: java.lang.String;
    var endAction: java.lang.String;
    var selectionBeginAction: java.lang.String;
    var selectionEndAction: java.lang.String;
    var selectWordAction: java.lang.String;
    var selectLineAction: java.lang.String;
    var selectParagraphAction: java.lang.String;
    var selectAllAction: java.lang.String;
    var defaultKeyTypedAction: java.lang.String;
}

type javax.swing.text.html.ObjectView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.BlockView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.NoFramesView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.FormSubmitEvent {
}

type javax.swing.text.html.ParagraphView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.ImageView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.html.Map {
}

type javax.swing.text.html.CommentView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.ViewFactory {
}

type javax.swing.text.Element {
}

type javax.swing.text.GapVector {
}

type javax.swing.text.PlainView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.TableView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.DocumentFilter {
}

type javax.swing.text.FieldView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.FlowView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.WrappedPlainView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.TabSet {
}

type javax.swing.text.DefaultFormatter {
}

type javax.swing.text.AsyncBoxView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.PasswordView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.Style {
    var NameAttribute: java.lang.Object;
    var ResolveAttribute: java.lang.Object;
}

type javax.swing.text.DefaultStyledDocument {
    var BUFFER_SIZE_DEFAULT: int;
    var StreamDescriptionProperty: java.lang.String;
    var TitleProperty: java.lang.String;
    var ParagraphElementName: java.lang.String;
    var ContentElementName: java.lang.String;
    var SectionElementName: java.lang.String;
    var BidiElementName: java.lang.String;
    var ElementNameAttribute: java.lang.String;
}

type javax.swing.text.DefaultCaret {
    var UPDATE_WHEN_ON_EDT: int;
    var NEVER_UPDATE: int;
    var ALWAYS_UPDATE: int;
    var x: int;
    var y: int;
    var width: int;
    var height: int;
    var OUT_LEFT: int;
    var OUT_TOP: int;
    var OUT_RIGHT: int;
    var OUT_BOTTOM: int;
}

type javax.swing.text.AttributeSet {
    var NameAttribute: java.lang.Object;
    var ResolveAttribute: java.lang.Object;
}

type javax.swing.text.CompositeView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.TabStop {
    var ALIGN_LEFT: int;
    var ALIGN_RIGHT: int;
    var ALIGN_CENTER: int;
    var ALIGN_DECIMAL: int;
    var ALIGN_BAR: int;
    var LEAD_NONE: int;
    var LEAD_DOTS: int;
    var LEAD_HYPHENS: int;
    var LEAD_UNDERLINE: int;
    var LEAD_THICKLINE: int;
    var LEAD_EQUALS: int;
}

type javax.swing.text.Document {
    var StreamDescriptionProperty: java.lang.String;
    var TitleProperty: java.lang.String;
}

type javax.swing.text.StyledEditorKit {
    var EndOfLineStringProperty: java.lang.String;
    var insertContentAction: java.lang.String;
    var insertBreakAction: java.lang.String;
    var insertTabAction: java.lang.String;
    var deletePrevCharAction: java.lang.String;
    var deleteNextCharAction: java.lang.String;
    var deleteNextWordAction: java.lang.String;
    var deletePrevWordAction: java.lang.String;
    var readOnlyAction: java.lang.String;
    var writableAction: java.lang.String;
    var cutAction: java.lang.String;
    var copyAction: java.lang.String;
    var pasteAction: java.lang.String;
    var beepAction: java.lang.String;
    var pageUpAction: java.lang.String;
    var pageDownAction: java.lang.String;
    var forwardAction: java.lang.String;
    var backwardAction: java.lang.String;
    var selectionForwardAction: java.lang.String;
    var selectionBackwardAction: java.lang.String;
    var upAction: java.lang.String;
    var downAction: java.lang.String;
    var selectionUpAction: java.lang.String;
    var selectionDownAction: java.lang.String;
    var beginWordAction: java.lang.String;
    var endWordAction: java.lang.String;
    var selectionBeginWordAction: java.lang.String;
    var selectionEndWordAction: java.lang.String;
    var previousWordAction: java.lang.String;
    var nextWordAction: java.lang.String;
    var selectionPreviousWordAction: java.lang.String;
    var selectionNextWordAction: java.lang.String;
    var beginLineAction: java.lang.String;
    var endLineAction: java.lang.String;
    var selectionBeginLineAction: java.lang.String;
    var selectionEndLineAction: java.lang.String;
    var beginParagraphAction: java.lang.String;
    var endParagraphAction: java.lang.String;
    var selectionBeginParagraphAction: java.lang.String;
    var selectionEndParagraphAction: java.lang.String;
    var beginAction: java.lang.String;
    var endAction: java.lang.String;
    var selectionBeginAction: java.lang.String;
    var selectionEndAction: java.lang.String;
    var selectWordAction: java.lang.String;
    var selectLineAction: java.lang.String;
    var selectParagraphAction: java.lang.String;
    var selectAllAction: java.lang.String;
    var defaultKeyTypedAction: java.lang.String;
}

type javax.swing.text.AbstractWriter {
}

type javax.swing.text.TabableView {
}

type javax.swing.text.Position {
}

type javax.swing.text.GapContent {
}

type javax.swing.text.StyleConstants {
    var ComponentElementName: java.lang.String;
    var IconElementName: java.lang.String;
    var NameAttribute: java.lang.Object;
    var ResolveAttribute: java.lang.Object;
    var ModelAttribute: java.lang.Object;
    var BidiLevel: java.lang.Object;
    var FontFamily: java.lang.Object;
    var Family: java.lang.Object;
    var FontSize: java.lang.Object;
    var Size: java.lang.Object;
    var Bold: java.lang.Object;
    var Italic: java.lang.Object;
    var Underline: java.lang.Object;
    var StrikeThrough: java.lang.Object;
    var Superscript: java.lang.Object;
    var Subscript: java.lang.Object;
    var Foreground: java.lang.Object;
    var Background: java.lang.Object;
    var ComponentAttribute: java.lang.Object;
    var IconAttribute: java.lang.Object;
    var ComposedTextAttribute: java.lang.Object;
    var FirstLineIndent: java.lang.Object;
    var LeftIndent: java.lang.Object;
    var RightIndent: java.lang.Object;
    var LineSpacing: java.lang.Object;
    var SpaceAbove: java.lang.Object;
    var SpaceBelow: java.lang.Object;
    var Alignment: java.lang.Object;
    var TabSet: java.lang.Object;
    var Orientation: java.lang.Object;
    var ALIGN_LEFT: int;
    var ALIGN_CENTER: int;
    var ALIGN_RIGHT: int;
    var ALIGN_JUSTIFIED: int;
}

type javax.swing.text.DateFormatter {
}

type javax.swing.text.DefaultEditorKit {
    var EndOfLineStringProperty: java.lang.String;
    var insertContentAction: java.lang.String;
    var insertBreakAction: java.lang.String;
    var insertTabAction: java.lang.String;
    var deletePrevCharAction: java.lang.String;
    var deleteNextCharAction: java.lang.String;
    var deleteNextWordAction: java.lang.String;
    var deletePrevWordAction: java.lang.String;
    var readOnlyAction: java.lang.String;
    var writableAction: java.lang.String;
    var cutAction: java.lang.String;
    var copyAction: java.lang.String;
    var pasteAction: java.lang.String;
    var beepAction: java.lang.String;
    var pageUpAction: java.lang.String;
    var pageDownAction: java.lang.String;
    var forwardAction: java.lang.String;
    var backwardAction: java.lang.String;
    var selectionForwardAction: java.lang.String;
    var selectionBackwardAction: java.lang.String;
    var upAction: java.lang.String;
    var downAction: java.lang.String;
    var selectionUpAction: java.lang.String;
    var selectionDownAction: java.lang.String;
    var beginWordAction: java.lang.String;
    var endWordAction: java.lang.String;
    var selectionBeginWordAction: java.lang.String;
    var selectionEndWordAction: java.lang.String;
    var previousWordAction: java.lang.String;
    var nextWordAction: java.lang.String;
    var selectionPreviousWordAction: java.lang.String;
    var selectionNextWordAction: java.lang.String;
    var beginLineAction: java.lang.String;
    var endLineAction: java.lang.String;
    var selectionBeginLineAction: java.lang.String;
    var selectionEndLineAction: java.lang.String;
    var beginParagraphAction: java.lang.String;
    var endParagraphAction: java.lang.String;
    var selectionBeginParagraphAction: java.lang.String;
    var selectionEndParagraphAction: java.lang.String;
    var beginAction: java.lang.String;
    var endAction: java.lang.String;
    var selectionBeginAction: java.lang.String;
    var selectionEndAction: java.lang.String;
    var selectWordAction: java.lang.String;
    var selectLineAction: java.lang.String;
    var selectParagraphAction: java.lang.String;
    var selectAllAction: java.lang.String;
    var defaultKeyTypedAction: java.lang.String;
}

type javax.swing.text.TextAction {
    var DEFAULT: java.lang.String;
    var NAME: java.lang.String;
    var SHORT_DESCRIPTION: java.lang.String;
    var LONG_DESCRIPTION: java.lang.String;
    var SMALL_ICON: java.lang.String;
    var ACTION_COMMAND_KEY: java.lang.String;
    var ACCELERATOR_KEY: java.lang.String;
    var MNEMONIC_KEY: java.lang.String;
    var SELECTED_KEY: java.lang.String;
    var DISPLAYED_MNEMONIC_INDEX_KEY: java.lang.String;
    var LARGE_ICON_KEY: java.lang.String;
}

type javax.swing.text.ParagraphView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.SimpleAttributeSet {
    var EMPTY: javax.swing.text.AttributeSet;
    var NameAttribute: java.lang.Object;
    var ResolveAttribute: java.lang.Object;
}

type javax.swing.text.GlyphView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.LabelView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.EditorKit {
}

type javax.swing.text.ZoneView {
    var BadBreakWeight: int;
    var GoodBreakWeight: int;
    var ExcellentBreakWeight: int;
    var ForcedBreakWeight: int;
    var X_AXIS: int;
    var Y_AXIS: int;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type javax.swing.text.Highlighter {
}

type javax.swing.text.StyledDocument {
    var StreamDescriptionProperty: java.lang.String;
    var TitleProperty: java.lang.String;
}

type javax.swing.SwingPaintEventDispatcher {
}

type javax.swing.RepaintManager {
}

type javax.swing.SpinnerListModel {
}

type javax.swing.SizeRequirements {
    var minimum: int;
    var preferred: int;
    var maximum: int;
    var alignment: float;
}

type javax.swing.SingleSelectionModel {
}

type javax.swing.DefaultBoundedRangeModel {
}

type javax.swing.MenuSelectionManager {
}

type javax.swing.InternalFrameFocusTraversalPolicy {
}

type javax.swing.ComponentInputMap {
}

type javax.swing.TimerQueue {
}

type javax.swing.JProgressBar {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.SwingHeavyWeight {
}

type javax.swing.LegacyGlueFocusTraversalPolicy {
}

type javax.swing.SwingWorker {
}

type javax.swing.ToolTipManager {
}

type javax.swing.WindowConstants {
    var DO_NOTHING_ON_CLOSE: int;
    var HIDE_ON_CLOSE: int;
    var DISPOSE_ON_CLOSE: int;
    var EXIT_ON_CLOSE: int;
}

type javax.swing.JSeparator {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.DefaultFocusManager {
    var FOCUS_MANAGER_CLASS_PROPERTY: java.lang.String;
    var FORWARD_TRAVERSAL_KEYS: int;
    var BACKWARD_TRAVERSAL_KEYS: int;
    var UP_CYCLE_TRAVERSAL_KEYS: int;
    var DOWN_CYCLE_TRAVERSAL_KEYS: int;
}

type javax.swing.ImageIcon {
}

type javax.swing.JTextArea {
    var FOCUS_ACCELERATOR_KEY: java.lang.String;
    var DEFAULT_KEYMAP: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.ButtonGroup {
}

type javax.swing.SpinnerModel {
}

enum javax.swing.DropMode {
    USE_SELECTION = 0;
    ON = 1;
    INSERT = 2;
    INSERT_ROWS = 3;
    INSERT_COLS = 4;
    ON_OR_INSERT = 5;
    ON_OR_INSERT_ROWS = 6;
    ON_OR_INSERT_COLS = 7;
}

type javax.swing.event.TreeSelectionListener {
}

type javax.swing.event.DocumentEvent {
}

type javax.swing.event.RowSorterListener {
}

type javax.swing.event.TableModelEvent {
    var INSERT: int;
    var UPDATE: int;
    var DELETE: int;
    var HEADER_ROW: int;
    var ALL_COLUMNS: int;
}

type javax.swing.event.HyperlinkListener {
}

type javax.swing.event.TableColumnModelListener {
}

type javax.swing.event.MouseInputListener {
}

type javax.swing.event.EventListenerList {
}

type javax.swing.event.UndoableEditListener {
}

type javax.swing.event.TreeExpansionEvent {
}

type javax.swing.event.TreeModelEvent {
}

type javax.swing.event.DocumentListener {
}

type javax.swing.event.InternalFrameEvent {
    var INTERNAL_FRAME_FIRST: int;
    var INTERNAL_FRAME_LAST: int;
    var INTERNAL_FRAME_OPENED: int;
    var INTERNAL_FRAME_CLOSING: int;
    var INTERNAL_FRAME_CLOSED: int;
    var INTERNAL_FRAME_ICONIFIED: int;
    var INTERNAL_FRAME_DEICONIFIED: int;
    var INTERNAL_FRAME_ACTIVATED: int;
    var INTERNAL_FRAME_DEACTIVATED: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type javax.swing.event.ChangeEvent {
}

type javax.swing.event.SwingPropertyChangeSupport {
}

type javax.swing.event.CellEditorListener {
}

type javax.swing.event.RowSorterEvent {
}

type javax.swing.event.InternalFrameAdapter {
}

type javax.swing.event.MenuKeyListener {
}

type javax.swing.event.CaretEvent {
}

type javax.swing.event.MouseInputAdapter {
}

type javax.swing.event.InternalFrameListener {
}

type javax.swing.event.MenuDragMouseEvent {
    var MOUSE_FIRST: int;
    var MOUSE_LAST: int;
    var MOUSE_CLICKED: int;
    var MOUSE_PRESSED: int;
    var MOUSE_RELEASED: int;
    var MOUSE_MOVED: int;
    var MOUSE_ENTERED: int;
    var MOUSE_EXITED: int;
    var MOUSE_DRAGGED: int;
    var MOUSE_WHEEL: int;
    var NOBUTTON: int;
    var BUTTON1: int;
    var BUTTON2: int;
    var BUTTON3: int;
    var SHIFT_MASK: int;
    var CTRL_MASK: int;
    var META_MASK: int;
    var ALT_MASK: int;
    var ALT_GRAPH_MASK: int;
    var BUTTON1_MASK: int;
    var BUTTON2_MASK: int;
    var BUTTON3_MASK: int;
    var SHIFT_DOWN_MASK: int;
    var CTRL_DOWN_MASK: int;
    var META_DOWN_MASK: int;
    var ALT_DOWN_MASK: int;
    var BUTTON1_DOWN_MASK: int;
    var BUTTON2_DOWN_MASK: int;
    var BUTTON3_DOWN_MASK: int;
    var ALT_GRAPH_DOWN_MASK: int;
    var COMPONENT_FIRST: int;
    var COMPONENT_LAST: int;
    var COMPONENT_MOVED: int;
    var COMPONENT_RESIZED: int;
    var COMPONENT_SHOWN: int;
    var COMPONENT_HIDDEN: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type javax.swing.event.ListSelectionListener {
}

type javax.swing.event.ListDataListener {
}

type javax.swing.event.TableModelListener {
}

type javax.swing.event.AncestorEvent {
    var ANCESTOR_ADDED: int;
    var ANCESTOR_REMOVED: int;
    var ANCESTOR_MOVED: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type javax.swing.event.PopupMenuListener {
}

type javax.swing.event.TreeSelectionEvent {
}

type javax.swing.event.ListDataEvent {
    var CONTENTS_CHANGED: int;
    var INTERVAL_ADDED: int;
    var INTERVAL_REMOVED: int;
}

type javax.swing.event.AncestorListener {
}

type javax.swing.event.TreeWillExpandListener {
}

type javax.swing.event.UndoableEditEvent {
}

type javax.swing.event.MenuEvent {
}

type javax.swing.event.MenuListener {
}

type javax.swing.event.PopupMenuEvent {
}

type javax.swing.event.ChangeListener {
}

type javax.swing.event.ListSelectionEvent {
}

type javax.swing.event.TreeExpansionListener {
}

type javax.swing.event.MenuDragMouseListener {
}

type javax.swing.event.HyperlinkEvent {
}

type javax.swing.event.CaretListener {
}

type javax.swing.event.TreeModelListener {
}

type javax.swing.event.MenuKeyEvent {
    var KEY_FIRST: int;
    var KEY_LAST: int;
    var KEY_TYPED: int;
    var KEY_PRESSED: int;
    var KEY_RELEASED: int;
    var VK_ENTER: int;
    var VK_BACK_SPACE: int;
    var VK_TAB: int;
    var VK_CANCEL: int;
    var VK_CLEAR: int;
    var VK_SHIFT: int;
    var VK_CONTROL: int;
    var VK_ALT: int;
    var VK_PAUSE: int;
    var VK_CAPS_LOCK: int;
    var VK_ESCAPE: int;
    var VK_SPACE: int;
    var VK_PAGE_UP: int;
    var VK_PAGE_DOWN: int;
    var VK_END: int;
    var VK_HOME: int;
    var VK_LEFT: int;
    var VK_UP: int;
    var VK_RIGHT: int;
    var VK_DOWN: int;
    var VK_COMMA: int;
    var VK_MINUS: int;
    var VK_PERIOD: int;
    var VK_SLASH: int;
    var VK_0: int;
    var VK_1: int;
    var VK_2: int;
    var VK_3: int;
    var VK_4: int;
    var VK_5: int;
    var VK_6: int;
    var VK_7: int;
    var VK_8: int;
    var VK_9: int;
    var VK_SEMICOLON: int;
    var VK_EQUALS: int;
    var VK_A: int;
    var VK_B: int;
    var VK_C: int;
    var VK_D: int;
    var VK_E: int;
    var VK_F: int;
    var VK_G: int;
    var VK_H: int;
    var VK_I: int;
    var VK_J: int;
    var VK_K: int;
    var VK_L: int;
    var VK_M: int;
    var VK_N: int;
    var VK_O: int;
    var VK_P: int;
    var VK_Q: int;
    var VK_R: int;
    var VK_S: int;
    var VK_T: int;
    var VK_U: int;
    var VK_V: int;
    var VK_W: int;
    var VK_X: int;
    var VK_Y: int;
    var VK_Z: int;
    var VK_OPEN_BRACKET: int;
    var VK_BACK_SLASH: int;
    var VK_CLOSE_BRACKET: int;
    var VK_NUMPAD0: int;
    var VK_NUMPAD1: int;
    var VK_NUMPAD2: int;
    var VK_NUMPAD3: int;
    var VK_NUMPAD4: int;
    var VK_NUMPAD5: int;
    var VK_NUMPAD6: int;
    var VK_NUMPAD7: int;
    var VK_NUMPAD8: int;
    var VK_NUMPAD9: int;
    var VK_MULTIPLY: int;
    var VK_ADD: int;
    var VK_SEPARATER: int;
    var VK_SEPARATOR: int;
    var VK_SUBTRACT: int;
    var VK_DECIMAL: int;
    var VK_DIVIDE: int;
    var VK_DELETE: int;
    var VK_NUM_LOCK: int;
    var VK_SCROLL_LOCK: int;
    var VK_F1: int;
    var VK_F2: int;
    var VK_F3: int;
    var VK_F4: int;
    var VK_F5: int;
    var VK_F6: int;
    var VK_F7: int;
    var VK_F8: int;
    var VK_F9: int;
    var VK_F10: int;
    var VK_F11: int;
    var VK_F12: int;
    var VK_F13: int;
    var VK_F14: int;
    var VK_F15: int;
    var VK_F16: int;
    var VK_F17: int;
    var VK_F18: int;
    var VK_F19: int;
    var VK_F20: int;
    var VK_F21: int;
    var VK_F22: int;
    var VK_F23: int;
    var VK_F24: int;
    var VK_PRINTSCREEN: int;
    var VK_INSERT: int;
    var VK_HELP: int;
    var VK_META: int;
    var VK_BACK_QUOTE: int;
    var VK_QUOTE: int;
    var VK_KP_UP: int;
    var VK_KP_DOWN: int;
    var VK_KP_LEFT: int;
    var VK_KP_RIGHT: int;
    var VK_DEAD_GRAVE: int;
    var VK_DEAD_ACUTE: int;
    var VK_DEAD_CIRCUMFLEX: int;
    var VK_DEAD_TILDE: int;
    var VK_DEAD_MACRON: int;
    var VK_DEAD_BREVE: int;
    var VK_DEAD_ABOVEDOT: int;
    var VK_DEAD_DIAERESIS: int;
    var VK_DEAD_ABOVERING: int;
    var VK_DEAD_DOUBLEACUTE: int;
    var VK_DEAD_CARON: int;
    var VK_DEAD_CEDILLA: int;
    var VK_DEAD_OGONEK: int;
    var VK_DEAD_IOTA: int;
    var VK_DEAD_VOICED_SOUND: int;
    var VK_DEAD_SEMIVOICED_SOUND: int;
    var VK_AMPERSAND: int;
    var VK_ASTERISK: int;
    var VK_QUOTEDBL: int;
    var VK_LESS: int;
    var VK_GREATER: int;
    var VK_BRACELEFT: int;
    var VK_BRACERIGHT: int;
    var VK_AT: int;
    var VK_COLON: int;
    var VK_CIRCUMFLEX: int;
    var VK_DOLLAR: int;
    var VK_EURO_SIGN: int;
    var VK_EXCLAMATION_MARK: int;
    var VK_INVERTED_EXCLAMATION_MARK: int;
    var VK_LEFT_PARENTHESIS: int;
    var VK_NUMBER_SIGN: int;
    var VK_PLUS: int;
    var VK_RIGHT_PARENTHESIS: int;
    var VK_UNDERSCORE: int;
    var VK_WINDOWS: int;
    var VK_CONTEXT_MENU: int;
    var VK_FINAL: int;
    var VK_CONVERT: int;
    var VK_NONCONVERT: int;
    var VK_ACCEPT: int;
    var VK_MODECHANGE: int;
    var VK_KANA: int;
    var VK_KANJI: int;
    var VK_ALPHANUMERIC: int;
    var VK_KATAKANA: int;
    var VK_HIRAGANA: int;
    var VK_FULL_WIDTH: int;
    var VK_HALF_WIDTH: int;
    var VK_ROMAN_CHARACTERS: int;
    var VK_ALL_CANDIDATES: int;
    var VK_PREVIOUS_CANDIDATE: int;
    var VK_CODE_INPUT: int;
    var VK_JAPANESE_KATAKANA: int;
    var VK_JAPANESE_HIRAGANA: int;
    var VK_JAPANESE_ROMAN: int;
    var VK_KANA_LOCK: int;
    var VK_INPUT_METHOD_ON_OFF: int;
    var VK_CUT: int;
    var VK_COPY: int;
    var VK_PASTE: int;
    var VK_UNDO: int;
    var VK_AGAIN: int;
    var VK_FIND: int;
    var VK_PROPS: int;
    var VK_STOP: int;
    var VK_COMPOSE: int;
    var VK_ALT_GRAPH: int;
    var VK_BEGIN: int;
    var VK_UNDEFINED: int;
    var CHAR_UNDEFINED: char;
    var KEY_LOCATION_UNKNOWN: int;
    var KEY_LOCATION_STANDARD: int;
    var KEY_LOCATION_LEFT: int;
    var KEY_LOCATION_RIGHT: int;
    var KEY_LOCATION_NUMPAD: int;
    var SHIFT_MASK: int;
    var CTRL_MASK: int;
    var META_MASK: int;
    var ALT_MASK: int;
    var ALT_GRAPH_MASK: int;
    var BUTTON1_MASK: int;
    var BUTTON2_MASK: int;
    var BUTTON3_MASK: int;
    var SHIFT_DOWN_MASK: int;
    var CTRL_DOWN_MASK: int;
    var META_DOWN_MASK: int;
    var ALT_DOWN_MASK: int;
    var BUTTON1_DOWN_MASK: int;
    var BUTTON2_DOWN_MASK: int;
    var BUTTON3_DOWN_MASK: int;
    var ALT_GRAPH_DOWN_MASK: int;
    var COMPONENT_FIRST: int;
    var COMPONENT_LAST: int;
    var COMPONENT_MOVED: int;
    var COMPONENT_RESIZED: int;
    var COMPONENT_SHOWN: int;
    var COMPONENT_HIDDEN: int;
    var COMPONENT_EVENT_MASK: long;
    var CONTAINER_EVENT_MASK: long;
    var FOCUS_EVENT_MASK: long;
    var KEY_EVENT_MASK: long;
    var MOUSE_EVENT_MASK: long;
    var MOUSE_MOTION_EVENT_MASK: long;
    var WINDOW_EVENT_MASK: long;
    var ACTION_EVENT_MASK: long;
    var ADJUSTMENT_EVENT_MASK: long;
    var ITEM_EVENT_MASK: long;
    var TEXT_EVENT_MASK: long;
    var INPUT_METHOD_EVENT_MASK: long;
    var PAINT_EVENT_MASK: long;
    var INVOCATION_EVENT_MASK: long;
    var HIERARCHY_EVENT_MASK: long;
    var HIERARCHY_BOUNDS_EVENT_MASK: long;
    var MOUSE_WHEEL_EVENT_MASK: long;
    var WINDOW_STATE_EVENT_MASK: long;
    var WINDOW_FOCUS_EVENT_MASK: long;
    var RESERVED_ID_MAX: int;
}

type javax.swing.event.TableColumnModelEvent {
}

type javax.swing.JPanel {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.DefaultRowSorter {
}

type javax.swing.JFormattedTextField {
    var COMMIT: int;
    var COMMIT_OR_REVERT: int;
    var REVERT: int;
    var PERSIST: int;
    var notifyAction: java.lang.String;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var FOCUS_ACCELERATOR_KEY: java.lang.String;
    var DEFAULT_KEYMAP: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.JInternalFrame {
    var CONTENT_PANE_PROPERTY: java.lang.String;
    var MENU_BAR_PROPERTY: java.lang.String;
    var TITLE_PROPERTY: java.lang.String;
    var LAYERED_PANE_PROPERTY: java.lang.String;
    var ROOT_PANE_PROPERTY: java.lang.String;
    var GLASS_PANE_PROPERTY: java.lang.String;
    var FRAME_ICON_PROPERTY: java.lang.String;
    var IS_SELECTED_PROPERTY: java.lang.String;
    var IS_CLOSED_PROPERTY: java.lang.String;
    var IS_MAXIMUM_PROPERTY: java.lang.String;
    var IS_ICON_PROPERTY: java.lang.String;
    var DO_NOTHING_ON_CLOSE: int;
    var HIDE_ON_CLOSE: int;
    var DISPOSE_ON_CLOSE: int;
    var EXIT_ON_CLOSE: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.ArrayTable {
}

type javax.swing.JScrollBar {
    var HORIZONTAL: int;
    var VERTICAL: int;
    var NO_ORIENTATION: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.Renderer {
}

type javax.swing.Popup {
}

type javax.swing.CellEditor {
}

type javax.swing.Action {
    var DEFAULT: java.lang.String;
    var NAME: java.lang.String;
    var SHORT_DESCRIPTION: java.lang.String;
    var LONG_DESCRIPTION: java.lang.String;
    var SMALL_ICON: java.lang.String;
    var ACTION_COMMAND_KEY: java.lang.String;
    var ACCELERATOR_KEY: java.lang.String;
    var MNEMONIC_KEY: java.lang.String;
    var SELECTED_KEY: java.lang.String;
    var DISPLAYED_MNEMONIC_INDEX_KEY: java.lang.String;
    var LARGE_ICON_KEY: java.lang.String;
}

type javax.swing.UIDefaults {
}

type javax.swing.DesktopManager {
}

type javax.swing.JSpinner {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type javax.swing.UIManager {
}

type javax.swing.DefaultComboBoxModel {
}

type javax.print.MultiDocPrintJob {
}

type javax.print.MultiDocPrintService {
}

type javax.print.StreamPrintService {
}

type javax.print.ServiceUI {
}

type javax.print.PrintServiceLookup {
}

type javax.print.attribute.SupportedValuesAttribute {
}

type javax.print.attribute.DateTimeSyntax {
}

type javax.print.attribute.UnmodifiableSetException {
}

type javax.print.attribute.PrintJobAttribute {
}

type javax.print.attribute.HashDocAttributeSet {
}

type javax.print.attribute.URISyntax {
}

type javax.print.attribute.PrintRequestAttributeSet {
}

type javax.print.attribute.DocAttribute {
}

type javax.print.attribute.AttributeSetUtilities {
}

type javax.print.attribute.SetOfIntegerSyntax {
}

type javax.print.attribute.Size2DSyntax {
    var INCH: int;
    var MM: int;
}

type javax.print.attribute.PrintJobAttributeSet {
}

type javax.print.attribute.HashPrintServiceAttributeSet {
}

type javax.print.attribute.PrintRequestAttribute {
}

type javax.print.attribute.standard.JobImpressions {
}

type javax.print.attribute.standard.PrinterResolution {
    var DPI: int;
    var DPCM: int;
}

type javax.print.attribute.standard.OutputDeviceAssigned {
}

type javax.print.attribute.standard.PrinterLocation {
}

type javax.print.attribute.standard.Finishings {
    var NONE: javax.print.attribute.standard.Finishings;
    var STAPLE: javax.print.attribute.standard.Finishings;
    var COVER: javax.print.attribute.standard.Finishings;
    var BIND: javax.print.attribute.standard.Finishings;
    var SADDLE_STITCH: javax.print.attribute.standard.Finishings;
    var EDGE_STITCH: javax.print.attribute.standard.Finishings;
    var STAPLE_TOP_LEFT: javax.print.attribute.standard.Finishings;
    var STAPLE_BOTTOM_LEFT: javax.print.attribute.standard.Finishings;
    var STAPLE_TOP_RIGHT: javax.print.attribute.standard.Finishings;
    var STAPLE_BOTTOM_RIGHT: javax.print.attribute.standard.Finishings;
    var EDGE_STITCH_LEFT: javax.print.attribute.standard.Finishings;
    var EDGE_STITCH_TOP: javax.print.attribute.standard.Finishings;
    var EDGE_STITCH_RIGHT: javax.print.attribute.standard.Finishings;
    var EDGE_STITCH_BOTTOM: javax.print.attribute.standard.Finishings;
    var STAPLE_DUAL_LEFT: javax.print.attribute.standard.Finishings;
    var STAPLE_DUAL_TOP: javax.print.attribute.standard.Finishings;
    var STAPLE_DUAL_RIGHT: javax.print.attribute.standard.Finishings;
    var STAPLE_DUAL_BOTTOM: javax.print.attribute.standard.Finishings;
}

type javax.print.attribute.standard.DocumentName {
}

type javax.print.attribute.standard.JobPriority {
}

type javax.print.attribute.standard.PagesPerMinute {
}

type javax.print.attribute.standard.PrinterName {
}

type javax.print.attribute.standard.PrinterStateReason {
    var OTHER: javax.print.attribute.standard.PrinterStateReason;
    var MEDIA_NEEDED: javax.print.attribute.standard.PrinterStateReason;
    var MEDIA_JAM: javax.print.attribute.standard.PrinterStateReason;
    var MOVING_TO_PAUSED: javax.print.attribute.standard.PrinterStateReason;
    var PAUSED: javax.print.attribute.standard.PrinterStateReason;
    var SHUTDOWN: javax.print.attribute.standard.PrinterStateReason;
    var CONNECTING_TO_DEVICE: javax.print.attribute.standard.PrinterStateReason;
    var TIMED_OUT: javax.print.attribute.standard.PrinterStateReason;
    var STOPPING: javax.print.attribute.standard.PrinterStateReason;
    var STOPPED_PARTLY: javax.print.attribute.standard.PrinterStateReason;
    var TONER_LOW: javax.print.attribute.standard.PrinterStateReason;
    var TONER_EMPTY: javax.print.attribute.standard.PrinterStateReason;
    var SPOOL_AREA_FULL: javax.print.attribute.standard.PrinterStateReason;
    var COVER_OPEN: javax.print.attribute.standard.PrinterStateReason;
    var INTERLOCK_OPEN: javax.print.attribute.standard.PrinterStateReason;
    var DOOR_OPEN: javax.print.attribute.standard.PrinterStateReason;
    var INPUT_TRAY_MISSING: javax.print.attribute.standard.PrinterStateReason;
    var MEDIA_LOW: javax.print.attribute.standard.PrinterStateReason;
    var MEDIA_EMPTY: javax.print.attribute.standard.PrinterStateReason;
    var OUTPUT_TRAY_MISSING: javax.print.attribute.standard.PrinterStateReason;
    var OUTPUT_AREA_ALMOST_FULL: javax.print.attribute.standard.PrinterStateReason;
    var OUTPUT_AREA_FULL: javax.print.attribute.standard.PrinterStateReason;
    var MARKER_SUPPLY_LOW: javax.print.attribute.standard.PrinterStateReason;
    var MARKER_SUPPLY_EMPTY: javax.print.attribute.standard.PrinterStateReason;
    var MARKER_WASTE_ALMOST_FULL: javax.print.attribute.standard.PrinterStateReason;
    var MARKER_WASTE_FULL: javax.print.attribute.standard.PrinterStateReason;
    var FUSER_OVER_TEMP: javax.print.attribute.standard.PrinterStateReason;
    var FUSER_UNDER_TEMP: javax.print.attribute.standard.PrinterStateReason;
    var OPC_NEAR_EOL: javax.print.attribute.standard.PrinterStateReason;
    var OPC_LIFE_OVER: javax.print.attribute.standard.PrinterStateReason;
    var DEVELOPER_LOW: javax.print.attribute.standard.PrinterStateReason;
    var DEVELOPER_EMPTY: javax.print.attribute.standard.PrinterStateReason;
    var INTERPRETER_RESOURCE_UNAVAILABLE: javax.print.attribute.standard.PrinterStateReason;
}

type javax.print.attribute.standard.DateTimeAtCreation {
}

type javax.print.attribute.standard.JobImpressionsCompleted {
}

type javax.print.attribute.standard.JobKOctetsProcessed {
}

type javax.print.attribute.standard.PrinterStateReasons {
}

type javax.print.attribute.standard.Severity {
    var REPORT: javax.print.attribute.standard.Severity;
    var WARNING: javax.print.attribute.standard.Severity;
    var ERROR: javax.print.attribute.standard.Severity;
}

type javax.print.attribute.standard.Copies {
}

type javax.print.attribute.standard.PrinterState {
    var UNKNOWN: javax.print.attribute.standard.PrinterState;
    var IDLE: javax.print.attribute.standard.PrinterState;
    var PROCESSING: javax.print.attribute.standard.PrinterState;
    var STOPPED: javax.print.attribute.standard.PrinterState;
}

type javax.print.attribute.standard.DateTimeAtProcessing {
}

type javax.print.attribute.standard.JobKOctets {
}

type javax.print.attribute.standard.MultipleDocumentHandling {
    var SINGLE_DOCUMENT: javax.print.attribute.standard.MultipleDocumentHandling;
    var SEPARATE_DOCUMENTS_UNCOLLATED_COPIES: javax.print.attribute.standard.MultipleDocumentHandling;
    var SEPARATE_DOCUMENTS_COLLATED_COPIES: javax.print.attribute.standard.MultipleDocumentHandling;
    var SINGLE_DOCUMENT_NEW_SHEET: javax.print.attribute.standard.MultipleDocumentHandling;
}

type javax.print.attribute.standard.RequestingUserName {
}

type javax.print.attribute.standard.JobPrioritySupported {
}

type javax.print.attribute.standard.ReferenceUriSchemesSupported {
    var FTP: javax.print.attribute.standard.ReferenceUriSchemesSupported;
    var HTTP: javax.print.attribute.standard.ReferenceUriSchemesSupported;
    var HTTPS: javax.print.attribute.standard.ReferenceUriSchemesSupported;
    var GOPHER: javax.print.attribute.standard.ReferenceUriSchemesSupported;
    var NEWS: javax.print.attribute.standard.ReferenceUriSchemesSupported;
    var NNTP: javax.print.attribute.standard.ReferenceUriSchemesSupported;
    var WAIS: javax.print.attribute.standard.ReferenceUriSchemesSupported;
    var FILE: javax.print.attribute.standard.ReferenceUriSchemesSupported;
}

type javax.print.attribute.standard.PrinterMakeAndModel {
}

type javax.print.attribute.standard.Sides {
    var ONE_SIDED: javax.print.attribute.standard.Sides;
    var TWO_SIDED_LONG_EDGE: javax.print.attribute.standard.Sides;
    var TWO_SIDED_SHORT_EDGE: javax.print.attribute.standard.Sides;
    var DUPLEX: javax.print.attribute.standard.Sides;
    var TUMBLE: javax.print.attribute.standard.Sides;
}

type javax.print.attribute.standard.JobSheets {
    var NONE: javax.print.attribute.standard.JobSheets;
    var STANDARD: javax.print.attribute.standard.JobSheets;
}

type javax.print.attribute.standard.PrinterMoreInfo {
}

type javax.print.attribute.standard.PDLOverrideSupported {
    var NOT_ATTEMPTED: javax.print.attribute.standard.PDLOverrideSupported;
    var ATTEMPTED: javax.print.attribute.standard.PDLOverrideSupported;
}

type javax.print.attribute.standard.JobMediaSheetsSupported {
}

type javax.print.attribute.standard.ColorSupported {
    var NOT_SUPPORTED: javax.print.attribute.standard.ColorSupported;
    var SUPPORTED: javax.print.attribute.standard.ColorSupported;
}

type javax.print.attribute.standard.NumberOfDocuments {
}

type javax.print.attribute.standard.OrientationRequested {
    var PORTRAIT: javax.print.attribute.standard.OrientationRequested;
    var LANDSCAPE: javax.print.attribute.standard.OrientationRequested;
    var REVERSE_LANDSCAPE: javax.print.attribute.standard.OrientationRequested;
    var REVERSE_PORTRAIT: javax.print.attribute.standard.OrientationRequested;
}

type javax.print.attribute.standard.MediaSizeName {
    var ISO_A0: javax.print.attribute.standard.MediaSizeName;
    var ISO_A1: javax.print.attribute.standard.MediaSizeName;
    var ISO_A2: javax.print.attribute.standard.MediaSizeName;
    var ISO_A3: javax.print.attribute.standard.MediaSizeName;
    var ISO_A4: javax.print.attribute.standard.MediaSizeName;
    var ISO_A5: javax.print.attribute.standard.MediaSizeName;
    var ISO_A6: javax.print.attribute.standard.MediaSizeName;
    var ISO_A7: javax.print.attribute.standard.MediaSizeName;
    var ISO_A8: javax.print.attribute.standard.MediaSizeName;
    var ISO_A9: javax.print.attribute.standard.MediaSizeName;
    var ISO_A10: javax.print.attribute.standard.MediaSizeName;
    var ISO_B0: javax.print.attribute.standard.MediaSizeName;
    var ISO_B1: javax.print.attribute.standard.MediaSizeName;
    var ISO_B2: javax.print.attribute.standard.MediaSizeName;
    var ISO_B3: javax.print.attribute.standard.MediaSizeName;
    var ISO_B4: javax.print.attribute.standard.MediaSizeName;
    var ISO_B5: javax.print.attribute.standard.MediaSizeName;
    var ISO_B6: javax.print.attribute.standard.MediaSizeName;
    var ISO_B7: javax.print.attribute.standard.MediaSizeName;
    var ISO_B8: javax.print.attribute.standard.MediaSizeName;
    var ISO_B9: javax.print.attribute.standard.MediaSizeName;
    var ISO_B10: javax.print.attribute.standard.MediaSizeName;
    var JIS_B0: javax.print.attribute.standard.MediaSizeName;
    var JIS_B1: javax.print.attribute.standard.MediaSizeName;
    var JIS_B2: javax.print.attribute.standard.MediaSizeName;
    var JIS_B3: javax.print.attribute.standard.MediaSizeName;
    var JIS_B4: javax.print.attribute.standard.MediaSizeName;
    var JIS_B5: javax.print.attribute.standard.MediaSizeName;
    var JIS_B6: javax.print.attribute.standard.MediaSizeName;
    var JIS_B7: javax.print.attribute.standard.MediaSizeName;
    var JIS_B8: javax.print.attribute.standard.MediaSizeName;
    var JIS_B9: javax.print.attribute.standard.MediaSizeName;
    var JIS_B10: javax.print.attribute.standard.MediaSizeName;
    var ISO_C0: javax.print.attribute.standard.MediaSizeName;
    var ISO_C1: javax.print.attribute.standard.MediaSizeName;
    var ISO_C2: javax.print.attribute.standard.MediaSizeName;
    var ISO_C3: javax.print.attribute.standard.MediaSizeName;
    var ISO_C4: javax.print.attribute.standard.MediaSizeName;
    var ISO_C5: javax.print.attribute.standard.MediaSizeName;
    var ISO_C6: javax.print.attribute.standard.MediaSizeName;
    var NA_LETTER: javax.print.attribute.standard.MediaSizeName;
    var NA_LEGAL: javax.print.attribute.standard.MediaSizeName;
    var EXECUTIVE: javax.print.attribute.standard.MediaSizeName;
    var LEDGER: javax.print.attribute.standard.MediaSizeName;
    var TABLOID: javax.print.attribute.standard.MediaSizeName;
    var INVOICE: javax.print.attribute.standard.MediaSizeName;
    var FOLIO: javax.print.attribute.standard.MediaSizeName;
    var QUARTO: javax.print.attribute.standard.MediaSizeName;
    var JAPANESE_POSTCARD: javax.print.attribute.standard.MediaSizeName;
    var JAPANESE_DOUBLE_POSTCARD: javax.print.attribute.standard.MediaSizeName;
    var A: javax.print.attribute.standard.MediaSizeName;
    var B: javax.print.attribute.standard.MediaSizeName;
    var C: javax.print.attribute.standard.MediaSizeName;
    var D: javax.print.attribute.standard.MediaSizeName;
    var E: javax.print.attribute.standard.MediaSizeName;
    var ISO_DESIGNATED_LONG: javax.print.attribute.standard.MediaSizeName;
    var ITALY_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var MONARCH_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var PERSONAL_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_NUMBER_9_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_NUMBER_10_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_NUMBER_11_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_NUMBER_12_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_NUMBER_14_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_6X9_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_7X9_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_9X11_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_9X12_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_10X13_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_10X14_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_10X15_ENVELOPE: javax.print.attribute.standard.MediaSizeName;
    var NA_5X7: javax.print.attribute.standard.MediaSizeName;
    var NA_8X10: javax.print.attribute.standard.MediaSizeName;
}

type javax.print.attribute.standard.PrintQuality {
    var DRAFT: javax.print.attribute.standard.PrintQuality;
    var NORMAL: javax.print.attribute.standard.PrintQuality;
    var HIGH: javax.print.attribute.standard.PrintQuality;
}

type javax.print.attribute.standard.Chromaticity {
    var MONOCHROME: javax.print.attribute.standard.Chromaticity;
    var COLOR: javax.print.attribute.standard.Chromaticity;
}

type javax.print.attribute.standard.Media {
}

type javax.print.attribute.standard.MediaTray {
    var TOP: javax.print.attribute.standard.MediaTray;
    var MIDDLE: javax.print.attribute.standard.MediaTray;
    var BOTTOM: javax.print.attribute.standard.MediaTray;
    var ENVELOPE: javax.print.attribute.standard.MediaTray;
    var MANUAL: javax.print.attribute.standard.MediaTray;
    var LARGE_CAPACITY: javax.print.attribute.standard.MediaTray;
    var MAIN: javax.print.attribute.standard.MediaTray;
    var SIDE: javax.print.attribute.standard.MediaTray;
}

type javax.print.attribute.standard.NumberUpSupported {
}

type javax.print.attribute.standard.PagesPerMinuteColor {
}

type javax.print.attribute.standard.Compression {
    var NONE: javax.print.attribute.standard.Compression;
    var DEFLATE: javax.print.attribute.standard.Compression;
    var GZIP: javax.print.attribute.standard.Compression;
    var COMPRESS: javax.print.attribute.standard.Compression;
}

type javax.print.attribute.standard.PrinterIsAcceptingJobs {
    var NOT_ACCEPTING_JOBS: javax.print.attribute.standard.PrinterIsAcceptingJobs;
    var ACCEPTING_JOBS: javax.print.attribute.standard.PrinterIsAcceptingJobs;
}

type javax.print.attribute.standard.DialogOwner {
}

type javax.print.attribute.standard.MediaName {
    var NA_LETTER_WHITE: javax.print.attribute.standard.MediaName;
    var NA_LETTER_TRANSPARENT: javax.print.attribute.standard.MediaName;
    var ISO_A4_WHITE: javax.print.attribute.standard.MediaName;
    var ISO_A4_TRANSPARENT: javax.print.attribute.standard.MediaName;
}

type javax.print.attribute.standard.MediaPrintableArea {
    var INCH: int;
    var MM: int;
}

type javax.print.attribute.standard.JobName {
}

type javax.print.attribute.standard.PrinterMoreInfoManufacturer {
}

type javax.print.attribute.standard.MediaSize {
    var INCH: int;
    var MM: int;
}

type javax.print.attribute.standard.PrinterMessageFromOperator {
}

type javax.print.attribute.standard.JobImpressionsSupported {
}

type javax.print.attribute.standard.JobStateReasons {
}

type javax.print.attribute.standard.PrinterURI {
}

type javax.print.attribute.standard.JobMessageFromOperator {
}

type javax.print.attribute.standard.SheetCollate {
    var UNCOLLATED: javax.print.attribute.standard.SheetCollate;
    var COLLATED: javax.print.attribute.standard.SheetCollate;
}

type javax.print.attribute.standard.PresentationDirection {
    var TOBOTTOM_TORIGHT: javax.print.attribute.standard.PresentationDirection;
    var TOBOTTOM_TOLEFT: javax.print.attribute.standard.PresentationDirection;
    var TOTOP_TORIGHT: javax.print.attribute.standard.PresentationDirection;
    var TOTOP_TOLEFT: javax.print.attribute.standard.PresentationDirection;
    var TORIGHT_TOBOTTOM: javax.print.attribute.standard.PresentationDirection;
    var TORIGHT_TOTOP: javax.print.attribute.standard.PresentationDirection;
    var TOLEFT_TOBOTTOM: javax.print.attribute.standard.PresentationDirection;
    var TOLEFT_TOTOP: javax.print.attribute.standard.PresentationDirection;
}

type javax.print.attribute.standard.NumberOfInterveningJobs {
}

type javax.print.attribute.standard.JobHoldUntil {
}

type javax.print.attribute.standard.JobOriginatingUserName {
}

type javax.print.attribute.standard.JobStateReason {
    var JOB_INCOMING: javax.print.attribute.standard.JobStateReason;
    var JOB_DATA_INSUFFICIENT: javax.print.attribute.standard.JobStateReason;
    var DOCUMENT_ACCESS_ERROR: javax.print.attribute.standard.JobStateReason;
    var SUBMISSION_INTERRUPTED: javax.print.attribute.standard.JobStateReason;
    var JOB_OUTGOING: javax.print.attribute.standard.JobStateReason;
    var JOB_HOLD_UNTIL_SPECIFIED: javax.print.attribute.standard.JobStateReason;
    var RESOURCES_ARE_NOT_READY: javax.print.attribute.standard.JobStateReason;
    var PRINTER_STOPPED_PARTLY: javax.print.attribute.standard.JobStateReason;
    var PRINTER_STOPPED: javax.print.attribute.standard.JobStateReason;
    var JOB_INTERPRETING: javax.print.attribute.standard.JobStateReason;
    var JOB_QUEUED: javax.print.attribute.standard.JobStateReason;
    var JOB_TRANSFORMING: javax.print.attribute.standard.JobStateReason;
    var JOB_QUEUED_FOR_MARKER: javax.print.attribute.standard.JobStateReason;
    var JOB_PRINTING: javax.print.attribute.standard.JobStateReason;
    var JOB_CANCELED_BY_USER: javax.print.attribute.standard.JobStateReason;
    var JOB_CANCELED_BY_OPERATOR: javax.print.attribute.standard.JobStateReason;
    var JOB_CANCELED_AT_DEVICE: javax.print.attribute.standard.JobStateReason;
    var ABORTED_BY_SYSTEM: javax.print.attribute.standard.JobStateReason;
    var UNSUPPORTED_COMPRESSION: javax.print.attribute.standard.JobStateReason;
    var COMPRESSION_ERROR: javax.print.attribute.standard.JobStateReason;
    var UNSUPPORTED_DOCUMENT_FORMAT: javax.print.attribute.standard.JobStateReason;
    var DOCUMENT_FORMAT_ERROR: javax.print.attribute.standard.JobStateReason;
    var PROCESSING_TO_STOP_POINT: javax.print.attribute.standard.JobStateReason;
    var SERVICE_OFF_LINE: javax.print.attribute.standard.JobStateReason;
    var JOB_COMPLETED_SUCCESSFULLY: javax.print.attribute.standard.JobStateReason;
    var JOB_COMPLETED_WITH_WARNINGS: javax.print.attribute.standard.JobStateReason;
    var JOB_COMPLETED_WITH_ERRORS: javax.print.attribute.standard.JobStateReason;
    var JOB_RESTARTABLE: javax.print.attribute.standard.JobStateReason;
    var QUEUED_IN_DEVICE: javax.print.attribute.standard.JobStateReason;
}

type javax.print.attribute.standard.Destination {
}

type javax.print.attribute.standard.NumberUp {
}

type javax.print.attribute.standard.DateTimeAtCompleted {
}

type javax.print.attribute.standard.PrinterInfo {
}

type javax.print.attribute.standard.JobMediaSheetsCompleted {
}

type javax.print.attribute.standard.QueuedJobCount {
}

type javax.print.attribute.standard.JobKOctetsSupported {
}

type javax.print.attribute.standard.JobMediaSheets {
}

type javax.print.attribute.standard.JobState {
    var UNKNOWN: javax.print.attribute.standard.JobState;
    var PENDING: javax.print.attribute.standard.JobState;
    var PENDING_HELD: javax.print.attribute.standard.JobState;
    var PROCESSING: javax.print.attribute.standard.JobState;
    var PROCESSING_STOPPED: javax.print.attribute.standard.JobState;
    var CANCELED: javax.print.attribute.standard.JobState;
    var ABORTED: javax.print.attribute.standard.JobState;
    var COMPLETED: javax.print.attribute.standard.JobState;
}

type javax.print.attribute.standard.DialogTypeSelection {
    var NATIVE: javax.print.attribute.standard.DialogTypeSelection;
    var COMMON: javax.print.attribute.standard.DialogTypeSelection;
}

type javax.print.attribute.standard.PageRanges {
}

type javax.print.attribute.standard.Fidelity {
    var FIDELITY_TRUE: javax.print.attribute.standard.Fidelity;
    var FIDELITY_FALSE: javax.print.attribute.standard.Fidelity;
}

type javax.print.attribute.standard.CopiesSupported {
}

type javax.print.attribute.DocAttributeSet {
}

type javax.print.attribute.EnumSyntax {
}

type javax.print.attribute.HashPrintJobAttributeSet {
}

type javax.print.attribute.TextSyntax {
}

type javax.print.attribute.AttributeSet {
}

type javax.print.attribute.HashAttributeSet {
}

type javax.print.attribute.ResolutionSyntax {
    var DPI: int;
    var DPCM: int;
}

type javax.print.attribute.PrintServiceAttributeSet {
}

type javax.print.attribute.Attribute {
}

type javax.print.attribute.HashPrintRequestAttributeSet {
}

type javax.print.attribute.IntegerSyntax {
}

type javax.print.attribute.PrintServiceAttribute {
}

type javax.print.Doc {
}

type javax.print.DocFlavor {
    var hostEncoding: java.lang.String;
}

type javax.print.DocPrintJob {
}

type javax.print.ServiceUIFactory {
    var JCOMPONENT_UI: java.lang.String;
    var PANEL_UI: java.lang.String;
    var DIALOG_UI: java.lang.String;
    var JDIALOG_UI: java.lang.String;
    var ABOUT_UIROLE: int;
    var ADMIN_UIROLE: int;
    var MAIN_UIROLE: int;
    var RESERVED_UIROLE: int;
}

type javax.print.CancelablePrintJob {
}

type javax.print.PrintException {
}

type javax.print.AttributeException {
}

type javax.print.MimeType {
}

type javax.print.FlavorException {
}

type javax.print.PrintService {
}

type javax.print.MultiDoc {
}

type javax.print.StreamPrintServiceFactory {
}

type javax.print.event.PrintJobListener {
}

type javax.print.event.PrintJobAttributeEvent {
}

type javax.print.event.PrintJobAttributeListener {
}

type javax.print.event.PrintServiceAttributeEvent {
}

type javax.print.event.PrintJobAdapter {
}

type javax.print.event.PrintServiceAttributeListener {
}

type javax.print.event.PrintJobEvent {
    var JOB_CANCELED: int;
    var JOB_COMPLETE: int;
    var JOB_FAILED: int;
    var REQUIRES_ATTENTION: int;
    var NO_MORE_EVENTS: int;
    var DATA_TRANSFER_COMPLETE: int;
}

type javax.print.event.PrintEvent {
}

type javax.print.SimpleDoc {
}

type javax.print.URIException {
    var URIInaccessible: int;
    var URISchemeNotSupported: int;
    var URIOtherProblem: int;
}

type javax.imageio.ImageReadParam {
}

type javax.imageio.plugins.jpeg.JPEGHuffmanTable {
    var StdDCLuminance: javax.imageio.plugins.jpeg.JPEGHuffmanTable;
    var StdDCChrominance: javax.imageio.plugins.jpeg.JPEGHuffmanTable;
    var StdACLuminance: javax.imageio.plugins.jpeg.JPEGHuffmanTable;
    var StdACChrominance: javax.imageio.plugins.jpeg.JPEGHuffmanTable;
}

type javax.imageio.plugins.jpeg.JPEGQTable {
    var K1Luminance: javax.imageio.plugins.jpeg.JPEGQTable;
    var K1Div2Luminance: javax.imageio.plugins.jpeg.JPEGQTable;
    var K2Chrominance: javax.imageio.plugins.jpeg.JPEGQTable;
    var K2Div2Chrominance: javax.imageio.plugins.jpeg.JPEGQTable;
}

type javax.imageio.plugins.jpeg.JPEGImageWriteParam {
    var MODE_DISABLED: int;
    var MODE_DEFAULT: int;
    var MODE_EXPLICIT: int;
    var MODE_COPY_FROM_METADATA: int;
}

type javax.imageio.plugins.jpeg.JPEGImageReadParam {
}

type javax.imageio.plugins.bmp.BMPImageWriteParam {
    var MODE_DISABLED: int;
    var MODE_DEFAULT: int;
    var MODE_EXPLICIT: int;
    var MODE_COPY_FROM_METADATA: int;
}

type javax.imageio.plugins.tiff.BaselineTIFFTagSet {
    var TAG_NEW_SUBFILE_TYPE: int;
    var NEW_SUBFILE_TYPE_REDUCED_RESOLUTION: int;
    var NEW_SUBFILE_TYPE_SINGLE_PAGE: int;
    var NEW_SUBFILE_TYPE_TRANSPARENCY: int;
    var TAG_SUBFILE_TYPE: int;
    var SUBFILE_TYPE_FULL_RESOLUTION: int;
    var SUBFILE_TYPE_REDUCED_RESOLUTION: int;
    var SUBFILE_TYPE_SINGLE_PAGE: int;
    var TAG_IMAGE_WIDTH: int;
    var TAG_IMAGE_LENGTH: int;
    var TAG_BITS_PER_SAMPLE: int;
    var TAG_COMPRESSION: int;
    var COMPRESSION_NONE: int;
    var COMPRESSION_CCITT_RLE: int;
    var COMPRESSION_CCITT_T_4: int;
    var COMPRESSION_CCITT_T_6: int;
    var COMPRESSION_LZW: int;
    var COMPRESSION_OLD_JPEG: int;
    var COMPRESSION_JPEG: int;
    var COMPRESSION_ZLIB: int;
    var COMPRESSION_PACKBITS: int;
    var COMPRESSION_DEFLATE: int;
    var TAG_PHOTOMETRIC_INTERPRETATION: int;
    var PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO: int;
    var PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO: int;
    var PHOTOMETRIC_INTERPRETATION_RGB: int;
    var PHOTOMETRIC_INTERPRETATION_PALETTE_COLOR: int;
    var PHOTOMETRIC_INTERPRETATION_TRANSPARENCY_MASK: int;
    var PHOTOMETRIC_INTERPRETATION_CMYK: int;
    var PHOTOMETRIC_INTERPRETATION_Y_CB_CR: int;
    var PHOTOMETRIC_INTERPRETATION_CIELAB: int;
    var PHOTOMETRIC_INTERPRETATION_ICCLAB: int;
    var TAG_THRESHHOLDING: int;
    var THRESHHOLDING_NONE: int;
    var THRESHHOLDING_ORDERED_DITHER: int;
    var THRESHHOLDING_RANDOMIZED_DITHER: int;
    var TAG_CELL_WIDTH: int;
    var TAG_CELL_LENGTH: int;
    var TAG_FILL_ORDER: int;
    var FILL_ORDER_LEFT_TO_RIGHT: int;
    var FILL_ORDER_RIGHT_TO_LEFT: int;
    var TAG_DOCUMENT_NAME: int;
    var TAG_IMAGE_DESCRIPTION: int;
    var TAG_MAKE: int;
    var TAG_MODEL: int;
    var TAG_STRIP_OFFSETS: int;
    var TAG_ORIENTATION: int;
    var ORIENTATION_ROW_0_TOP_COLUMN_0_LEFT: int;
    var ORIENTATION_ROW_0_TOP_COLUMN_0_RIGHT: int;
    var ORIENTATION_ROW_0_BOTTOM_COLUMN_0_RIGHT: int;
    var ORIENTATION_ROW_0_BOTTOM_COLUMN_0_LEFT: int;
    var ORIENTATION_ROW_0_LEFT_COLUMN_0_TOP: int;
    var ORIENTATION_ROW_0_RIGHT_COLUMN_0_TOP: int;
    var ORIENTATION_ROW_0_RIGHT_COLUMN_0_BOTTOM: int;
    var ORIENTATION_ROW_0_LEFT_COLUMN_0_BOTTOM: int;
    var TAG_SAMPLES_PER_PIXEL: int;
    var TAG_ROWS_PER_STRIP: int;
    var TAG_STRIP_BYTE_COUNTS: int;
    var TAG_MIN_SAMPLE_VALUE: int;
    var TAG_MAX_SAMPLE_VALUE: int;
    var TAG_X_RESOLUTION: int;
    var TAG_Y_RESOLUTION: int;
    var TAG_PLANAR_CONFIGURATION: int;
    var PLANAR_CONFIGURATION_CHUNKY: int;
    var PLANAR_CONFIGURATION_PLANAR: int;
    var TAG_PAGE_NAME: int;
    var TAG_X_POSITION: int;
    var TAG_Y_POSITION: int;
    var TAG_FREE_OFFSETS: int;
    var TAG_FREE_BYTE_COUNTS: int;
    var TAG_GRAY_RESPONSE_UNIT: int;
    var GRAY_RESPONSE_UNIT_TENTHS: int;
    var GRAY_RESPONSE_UNIT_HUNDREDTHS: int;
    var GRAY_RESPONSE_UNIT_THOUSANDTHS: int;
    var GRAY_RESPONSE_UNIT_TEN_THOUSANDTHS: int;
    var GRAY_RESPONSE_UNIT_HUNDRED_THOUSANDTHS: int;
    var TAG_GRAY_RESPONSE_CURVE: int;
    var TAG_T4_OPTIONS: int;
    var T4_OPTIONS_2D_CODING: int;
    var T4_OPTIONS_UNCOMPRESSED: int;
    var T4_OPTIONS_EOL_BYTE_ALIGNED: int;
    var TAG_T6_OPTIONS: int;
    var T6_OPTIONS_UNCOMPRESSED: int;
    var TAG_RESOLUTION_UNIT: int;
    var RESOLUTION_UNIT_NONE: int;
    var RESOLUTION_UNIT_INCH: int;
    var RESOLUTION_UNIT_CENTIMETER: int;
    var TAG_PAGE_NUMBER: int;
    var TAG_TRANSFER_FUNCTION: int;
    var TAG_SOFTWARE: int;
    var TAG_DATE_TIME: int;
    var TAG_ARTIST: int;
    var TAG_HOST_COMPUTER: int;
    var TAG_PREDICTOR: int;
    var PREDICTOR_NONE: int;
    var PREDICTOR_HORIZONTAL_DIFFERENCING: int;
    var TAG_WHITE_POINT: int;
    var TAG_PRIMARY_CHROMATICITES: int;
    var TAG_COLOR_MAP: int;
    var TAG_HALFTONE_HINTS: int;
    var TAG_TILE_WIDTH: int;
    var TAG_TILE_LENGTH: int;
    var TAG_TILE_OFFSETS: int;
    var TAG_TILE_BYTE_COUNTS: int;
    var TAG_INK_SET: int;
    var INK_SET_CMYK: int;
    var INK_SET_NOT_CMYK: int;
    var TAG_INK_NAMES: int;
    var TAG_NUMBER_OF_INKS: int;
    var TAG_DOT_RANGE: int;
    var TAG_TARGET_PRINTER: int;
    var TAG_EXTRA_SAMPLES: int;
    var EXTRA_SAMPLES_UNSPECIFIED: int;
    var EXTRA_SAMPLES_ASSOCIATED_ALPHA: int;
    var EXTRA_SAMPLES_UNASSOCIATED_ALPHA: int;
    var TAG_SAMPLE_FORMAT: int;
    var SAMPLE_FORMAT_UNSIGNED_INTEGER: int;
    var SAMPLE_FORMAT_SIGNED_INTEGER: int;
    var SAMPLE_FORMAT_FLOATING_POINT: int;
    var SAMPLE_FORMAT_UNDEFINED: int;
    var TAG_S_MIN_SAMPLE_VALUE: int;
    var TAG_S_MAX_SAMPLE_VALUE: int;
    var TAG_TRANSFER_RANGE: int;
    var TAG_JPEG_TABLES: int;
    var TAG_JPEG_PROC: int;
    var JPEG_PROC_BASELINE: int;
    var JPEG_PROC_LOSSLESS: int;
    var TAG_JPEG_INTERCHANGE_FORMAT: int;
    var TAG_JPEG_INTERCHANGE_FORMAT_LENGTH: int;
    var TAG_JPEG_RESTART_INTERVAL: int;
    var TAG_JPEG_LOSSLESS_PREDICTORS: int;
    var TAG_JPEG_POINT_TRANSFORMS: int;
    var TAG_JPEG_Q_TABLES: int;
    var TAG_JPEG_DC_TABLES: int;
    var TAG_JPEG_AC_TABLES: int;
    var TAG_Y_CB_CR_COEFFICIENTS: int;
    var TAG_Y_CB_CR_SUBSAMPLING: int;
    var TAG_Y_CB_CR_POSITIONING: int;
    var Y_CB_CR_POSITIONING_CENTERED: int;
    var Y_CB_CR_POSITIONING_COSITED: int;
    var TAG_REFERENCE_BLACK_WHITE: int;
    var TAG_COPYRIGHT: int;
    var TAG_ICC_PROFILE: int;
}

type javax.imageio.plugins.tiff.GeoTIFFTagSet {
    var TAG_MODEL_PIXEL_SCALE: int;
    var TAG_MODEL_TRANSFORMATION: int;
    var TAG_MODEL_TIE_POINT: int;
    var TAG_GEO_KEY_DIRECTORY: int;
    var TAG_GEO_DOUBLE_PARAMS: int;
    var TAG_GEO_ASCII_PARAMS: int;
}

type javax.imageio.plugins.tiff.ExifParentTIFFTagSet {
    var TAG_EXIF_IFD_POINTER: int;
    var TAG_GPS_INFO_IFD_POINTER: int;
}

type javax.imageio.plugins.tiff.TIFFDirectory {
}

type javax.imageio.plugins.tiff.ExifTIFFTagSet {
    var TAG_GPS_INFO_IFD_POINTER: int;
    var TAG_INTEROPERABILITY_IFD_POINTER: int;
    var TAG_EXIF_VERSION: int;
    var EXIF_VERSION_2_1: java.lang.String;
    var EXIF_VERSION_2_2: java.lang.String;
    var TAG_FLASHPIX_VERSION: int;
    var TAG_COLOR_SPACE: int;
    var COLOR_SPACE_SRGB: int;
    var COLOR_SPACE_UNCALIBRATED: int;
    var TAG_COMPONENTS_CONFIGURATION: int;
    var COMPONENTS_CONFIGURATION_DOES_NOT_EXIST: int;
    var COMPONENTS_CONFIGURATION_Y: int;
    var COMPONENTS_CONFIGURATION_CB: int;
    var COMPONENTS_CONFIGURATION_CR: int;
    var COMPONENTS_CONFIGURATION_R: int;
    var COMPONENTS_CONFIGURATION_G: int;
    var COMPONENTS_CONFIGURATION_B: int;
    var TAG_COMPRESSED_BITS_PER_PIXEL: int;
    var TAG_PIXEL_X_DIMENSION: int;
    var TAG_PIXEL_Y_DIMENSION: int;
    var TAG_MAKER_NOTE: int;
    var TAG_MARKER_NOTE: int;
    var TAG_USER_COMMENT: int;
    var TAG_RELATED_SOUND_FILE: int;
    var TAG_DATE_TIME_ORIGINAL: int;
    var TAG_DATE_TIME_DIGITIZED: int;
    var TAG_SUB_SEC_TIME: int;
    var TAG_SUB_SEC_TIME_ORIGINAL: int;
    var TAG_SUB_SEC_TIME_DIGITIZED: int;
    var TAG_EXPOSURE_TIME: int;
    var TAG_F_NUMBER: int;
    var TAG_EXPOSURE_PROGRAM: int;
    var EXPOSURE_PROGRAM_NOT_DEFINED: int;
    var EXPOSURE_PROGRAM_MANUAL: int;
    var EXPOSURE_PROGRAM_NORMAL_PROGRAM: int;
    var EXPOSURE_PROGRAM_APERTURE_PRIORITY: int;
    var EXPOSURE_PROGRAM_SHUTTER_PRIORITY: int;
    var EXPOSURE_PROGRAM_CREATIVE_PROGRAM: int;
    var EXPOSURE_PROGRAM_ACTION_PROGRAM: int;
    var EXPOSURE_PROGRAM_PORTRAIT_MODE: int;
    var EXPOSURE_PROGRAM_LANDSCAPE_MODE: int;
    var EXPOSURE_PROGRAM_MAX_RESERVED: int;
    var TAG_SPECTRAL_SENSITIVITY: int;
    var TAG_ISO_SPEED_RATINGS: int;
    var TAG_OECF: int;
    var TAG_SHUTTER_SPEED_VALUE: int;
    var TAG_APERTURE_VALUE: int;
    var TAG_BRIGHTNESS_VALUE: int;
    var TAG_EXPOSURE_BIAS_VALUE: int;
    var TAG_MAX_APERTURE_VALUE: int;
    var TAG_SUBJECT_DISTANCE: int;
    var TAG_METERING_MODE: int;
    var METERING_MODE_UNKNOWN: int;
    var METERING_MODE_AVERAGE: int;
    var METERING_MODE_CENTER_WEIGHTED_AVERAGE: int;
    var METERING_MODE_SPOT: int;
    var METERING_MODE_MULTI_SPOT: int;
    var METERING_MODE_PATTERN: int;
    var METERING_MODE_PARTIAL: int;
    var METERING_MODE_MIN_RESERVED: int;
    var METERING_MODE_MAX_RESERVED: int;
    var METERING_MODE_OTHER: int;
    var TAG_LIGHT_SOURCE: int;
    var LIGHT_SOURCE_UNKNOWN: int;
    var LIGHT_SOURCE_DAYLIGHT: int;
    var LIGHT_SOURCE_FLUORESCENT: int;
    var LIGHT_SOURCE_TUNGSTEN: int;
    var LIGHT_SOURCE_FLASH: int;
    var LIGHT_SOURCE_FINE_WEATHER: int;
    var LIGHT_SOURCE_CLOUDY_WEATHER: int;
    var LIGHT_SOURCE_SHADE: int;
    var LIGHT_SOURCE_DAYLIGHT_FLUORESCENT: int;
    var LIGHT_SOURCE_DAY_WHITE_FLUORESCENT: int;
    var LIGHT_SOURCE_COOL_WHITE_FLUORESCENT: int;
    var LIGHT_SOURCE_WHITE_FLUORESCENT: int;
    var LIGHT_SOURCE_STANDARD_LIGHT_A: int;
    var LIGHT_SOURCE_STANDARD_LIGHT_B: int;
    var LIGHT_SOURCE_STANDARD_LIGHT_C: int;
    var LIGHT_SOURCE_D55: int;
    var LIGHT_SOURCE_D65: int;
    var LIGHT_SOURCE_D75: int;
    var LIGHT_SOURCE_D50: int;
    var LIGHT_SOURCE_ISO_STUDIO_TUNGSTEN: int;
    var LIGHT_SOURCE_OTHER: int;
    var TAG_FLASH: int;
    var FLASH_DID_NOT_FIRE: int;
    var FLASH_FIRED: int;
    var FLASH_STROBE_RETURN_LIGHT_NOT_DETECTED: int;
    var FLASH_STROBE_RETURN_LIGHT_DETECTED: int;
    var FLASH_MASK_FIRED: int;
    var FLASH_MASK_RETURN_NOT_DETECTED: int;
    var FLASH_MASK_RETURN_DETECTED: int;
    var FLASH_MASK_MODE_FLASH_FIRING: int;
    var FLASH_MASK_MODE_FLASH_SUPPRESSION: int;
    var FLASH_MASK_MODE_AUTO: int;
    var FLASH_MASK_FUNCTION_NOT_PRESENT: int;
    var FLASH_MASK_RED_EYE_REDUCTION: int;
    var TAG_FOCAL_LENGTH: int;
    var TAG_SUBJECT_AREA: int;
    var TAG_FLASH_ENERGY: int;
    var TAG_SPATIAL_FREQUENCY_RESPONSE: int;
    var TAG_FOCAL_PLANE_X_RESOLUTION: int;
    var TAG_FOCAL_PLANE_Y_RESOLUTION: int;
    var TAG_FOCAL_PLANE_RESOLUTION_UNIT: int;
    var FOCAL_PLANE_RESOLUTION_UNIT_NONE: int;
    var FOCAL_PLANE_RESOLUTION_UNIT_INCH: int;
    var FOCAL_PLANE_RESOLUTION_UNIT_CENTIMETER: int;
    var TAG_SUBJECT_LOCATION: int;
    var TAG_EXPOSURE_INDEX: int;
    var TAG_SENSING_METHOD: int;
    var SENSING_METHOD_NOT_DEFINED: int;
    var SENSING_METHOD_ONE_CHIP_COLOR_AREA_SENSOR: int;
    var SENSING_METHOD_TWO_CHIP_COLOR_AREA_SENSOR: int;
    var SENSING_METHOD_THREE_CHIP_COLOR_AREA_SENSOR: int;
    var SENSING_METHOD_COLOR_SEQUENTIAL_AREA_SENSOR: int;
    var SENSING_METHOD_TRILINEAR_SENSOR: int;
    var SENSING_METHOD_COLOR_SEQUENTIAL_LINEAR_SENSOR: int;
    var TAG_FILE_SOURCE: int;
    var FILE_SOURCE_DSC: int;
    var TAG_SCENE_TYPE: int;
    var SCENE_TYPE_DSC: int;
    var TAG_CFA_PATTERN: int;
    var TAG_CUSTOM_RENDERED: int;
    var CUSTOM_RENDERED_NORMAL: int;
    var CUSTOM_RENDERED_CUSTOM: int;
    var TAG_EXPOSURE_MODE: int;
    var EXPOSURE_MODE_AUTO_EXPOSURE: int;
    var EXPOSURE_MODE_MANUAL_EXPOSURE: int;
    var EXPOSURE_MODE_AUTO_BRACKET: int;
    var TAG_WHITE_BALANCE: int;
    var WHITE_BALANCE_AUTO: int;
    var WHITE_BALANCE_MANUAL: int;
    var TAG_DIGITAL_ZOOM_RATIO: int;
    var TAG_FOCAL_LENGTH_IN_35MM_FILM: int;
    var TAG_SCENE_CAPTURE_TYPE: int;
    var SCENE_CAPTURE_TYPE_STANDARD: int;
    var SCENE_CAPTURE_TYPE_LANDSCAPE: int;
    var SCENE_CAPTURE_TYPE_PORTRAIT: int;
    var SCENE_CAPTURE_TYPE_NIGHT_SCENE: int;
    var TAG_GAIN_CONTROL: int;
    var GAIN_CONTROL_NONE: int;
    var GAIN_CONTROL_LOW_GAIN_UP: int;
    var GAIN_CONTROL_HIGH_GAIN_UP: int;
    var GAIN_CONTROL_LOW_GAIN_DOWN: int;
    var GAIN_CONTROL_HIGH_GAIN_DOWN: int;
    var TAG_CONTRAST: int;
    var CONTRAST_NORMAL: int;
    var CONTRAST_SOFT: int;
    var CONTRAST_HARD: int;
    var TAG_SATURATION: int;
    var SATURATION_NORMAL: int;
    var SATURATION_LOW: int;
    var SATURATION_HIGH: int;
    var TAG_SHARPNESS: int;
    var SHARPNESS_NORMAL: int;
    var SHARPNESS_SOFT: int;
    var SHARPNESS_HARD: int;
    var TAG_DEVICE_SETTING_DESCRIPTION: int;
    var TAG_SUBJECT_DISTANCE_RANGE: int;
    var SUBJECT_DISTANCE_RANGE_UNKNOWN: int;
    var SUBJECT_DISTANCE_RANGE_MACRO: int;
    var SUBJECT_DISTANCE_RANGE_CLOSE_VIEW: int;
    var SUBJECT_DISTANCE_RANGE_DISTANT_VIEW: int;
    var TAG_IMAGE_UNIQUE_ID: int;
}

type javax.imageio.plugins.tiff.ExifInteroperabilityTagSet {
    var TAG_INTEROPERABILITY_INDEX: int;
    var INTEROPERABILITY_INDEX_R98: java.lang.String;
    var INTEROPERABILITY_INDEX_THM: java.lang.String;
}

type javax.imageio.plugins.tiff.TIFFTagSet {
}

type javax.imageio.plugins.tiff.TIFFImageReadParam {
}

type javax.imageio.plugins.tiff.FaxTIFFTagSet {
    var TAG_BAD_FAX_LINES: int;
    var TAG_CLEAN_FAX_DATA: int;
    var CLEAN_FAX_DATA_NO_ERRORS: int;
    var CLEAN_FAX_DATA_ERRORS_CORRECTED: int;
    var CLEAN_FAX_DATA_ERRORS_UNCORRECTED: int;
    var TAG_CONSECUTIVE_BAD_LINES: int;
}

type javax.imageio.plugins.tiff.TIFFField {
}

type javax.imageio.plugins.tiff.TIFFTag {
    var TIFF_BYTE: int;
    var TIFF_ASCII: int;
    var TIFF_SHORT: int;
    var TIFF_LONG: int;
    var TIFF_RATIONAL: int;
    var TIFF_SBYTE: int;
    var TIFF_UNDEFINED: int;
    var TIFF_SSHORT: int;
    var TIFF_SLONG: int;
    var TIFF_SRATIONAL: int;
    var TIFF_FLOAT: int;
    var TIFF_DOUBLE: int;
    var TIFF_IFD_POINTER: int;
    var MIN_DATATYPE: int;
    var MAX_DATATYPE: int;
    var UNKNOWN_TAG_NAME: java.lang.String;
}

type javax.imageio.plugins.tiff.ExifGPSTagSet {
    var TAG_GPS_VERSION_ID: int;
    var GPS_VERSION_2_2: java.lang.String;
    var TAG_GPS_LATITUDE_REF: int;
    var TAG_GPS_LATITUDE: int;
    var TAG_GPS_LONGITUDE_REF: int;
    var TAG_GPS_LONGITUDE: int;
    var TAG_GPS_ALTITUDE_REF: int;
    var TAG_GPS_ALTITUDE: int;
    var TAG_GPS_TIME_STAMP: int;
    var TAG_GPS_SATELLITES: int;
    var TAG_GPS_STATUS: int;
    var TAG_GPS_MEASURE_MODE: int;
    var TAG_GPS_DOP: int;
    var TAG_GPS_SPEED_REF: int;
    var TAG_GPS_SPEED: int;
    var TAG_GPS_TRACK_REF: int;
    var TAG_GPS_TRACK: int;
    var TAG_GPS_IMG_DIRECTION_REF: int;
    var TAG_GPS_IMG_DIRECTION: int;
    var TAG_GPS_MAP_DATUM: int;
    var TAG_GPS_DEST_LATITUDE_REF: int;
    var TAG_GPS_DEST_LATITUDE: int;
    var TAG_GPS_DEST_LONGITUDE_REF: int;
    var TAG_GPS_DEST_LONGITUDE: int;
    var TAG_GPS_DEST_BEARING_REF: int;
    var TAG_GPS_DEST_BEARING: int;
    var TAG_GPS_DEST_DISTANCE_REF: int;
    var TAG_GPS_DEST_DISTANCE: int;
    var TAG_GPS_PROCESSING_METHOD: int;
    var TAG_GPS_AREA_INFORMATION: int;
    var TAG_GPS_DATE_STAMP: int;
    var TAG_GPS_DIFFERENTIAL: int;
    var LATITUDE_REF_NORTH: java.lang.String;
    var LATITUDE_REF_SOUTH: java.lang.String;
    var LONGITUDE_REF_EAST: java.lang.String;
    var LONGITUDE_REF_WEST: java.lang.String;
    var ALTITUDE_REF_SEA_LEVEL: int;
    var ALTITUDE_REF_SEA_LEVEL_REFERENCE: int;
    var STATUS_MEASUREMENT_IN_PROGRESS: java.lang.String;
    var STATUS_MEASUREMENT_INTEROPERABILITY: java.lang.String;
    var MEASURE_MODE_2D: java.lang.String;
    var MEASURE_MODE_3D: java.lang.String;
    var SPEED_REF_KILOMETERS_PER_HOUR: java.lang.String;
    var SPEED_REF_MILES_PER_HOUR: java.lang.String;
    var SPEED_REF_KNOTS: java.lang.String;
    var DIRECTION_REF_TRUE: java.lang.String;
    var DIRECTION_REF_MAGNETIC: java.lang.String;
    var DEST_DISTANCE_REF_KILOMETERS: java.lang.String;
    var DEST_DISTANCE_REF_MILES: java.lang.String;
    var DEST_DISTANCE_REF_KNOTS: java.lang.String;
    var DIFFERENTIAL_CORRECTION_NONE: int;
    var DIFFERENTIAL_CORRECTION_APPLIED: int;
}

type javax.imageio.stream.FileImageOutputStream {
}

type javax.imageio.stream.ImageOutputStreamImpl {
}

type javax.imageio.stream.MemoryCacheImageInputStream {
}

type javax.imageio.stream.FileCacheImageOutputStream {
}

type javax.imageio.stream.MemoryCache {
}

type javax.imageio.stream.IIOByteBuffer {
}

type javax.imageio.stream.ImageInputStreamImpl {
}

type javax.imageio.stream.FileImageInputStream {
}

type javax.imageio.stream.FileCacheImageInputStream {
}

type javax.imageio.stream.ImageOutputStream {
}

type javax.imageio.stream.ImageInputStream {
}

type javax.imageio.stream.MemoryCacheImageOutputStream {
}

type javax.imageio.IIOImage {
}

type javax.imageio.IIOException {
}

type javax.imageio.ImageReader {
}

type javax.imageio.IIOParam {
}

type javax.imageio.ImageIO {
}

type javax.imageio.spi.ImageTranscoderSpi {
}

type javax.imageio.spi.ImageOutputStreamSpi {
}

type javax.imageio.spi.ImageInputStreamSpi {
}

type javax.imageio.spi.IIORegistry {
}

type javax.imageio.spi.DigraphNode {
}

type javax.imageio.spi.ServiceRegistry {
}

type javax.imageio.spi.IIOServiceProvider {
}

type javax.imageio.spi.ImageWriterSpi {
    var STANDARD_OUTPUT_TYPE: array<java.lang.Class>;
}

type javax.imageio.spi.SubRegistry {
}

type javax.imageio.spi.RegisterableService {
}

type javax.imageio.spi.PartiallyOrderedSet {
}

type javax.imageio.spi.FilterIterator {
}

type javax.imageio.spi.ImageReaderSpi {
    var STANDARD_INPUT_TYPE: array<java.lang.Class>;
}

type javax.imageio.spi.ImageReaderWriterSpi {
}

type javax.imageio.spi.PartialOrderIterator {
}

type javax.imageio.ImageWriter {
}

type javax.imageio.ImageWriteParam {
    var MODE_DISABLED: int;
    var MODE_DEFAULT: int;
    var MODE_EXPLICIT: int;
    var MODE_COPY_FROM_METADATA: int;
}

type javax.imageio.ImageTypeSpecifier {
}

type javax.imageio.IIOParamController {
}

type javax.imageio.ImageTranscoder {
}

type javax.imageio.event.IIOWriteWarningListener {
}

type javax.imageio.event.IIOWriteProgressListener {
}

type javax.imageio.event.IIOReadUpdateListener {
}

type javax.imageio.event.IIOReadProgressListener {
}

type javax.imageio.event.IIOReadWarningListener {
}

type javax.imageio.metadata.IIOInvalidTreeException {
}

type javax.imageio.metadata.IIONamedNodeMap {
}

type javax.imageio.metadata.IIONodeList {
}

type javax.imageio.metadata.IIOMetadataNode {
    var ELEMENT_NODE: short;
    var ATTRIBUTE_NODE: short;
    var TEXT_NODE: short;
    var CDATA_SECTION_NODE: short;
    var ENTITY_REFERENCE_NODE: short;
    var ENTITY_NODE: short;
    var PROCESSING_INSTRUCTION_NODE: short;
    var COMMENT_NODE: short;
    var DOCUMENT_NODE: short;
    var DOCUMENT_TYPE_NODE: short;
    var DOCUMENT_FRAGMENT_NODE: short;
    var NOTATION_NODE: short;
    var DOCUMENT_POSITION_DISCONNECTED: short;
    var DOCUMENT_POSITION_PRECEDING: short;
    var DOCUMENT_POSITION_FOLLOWING: short;
    var DOCUMENT_POSITION_CONTAINS: short;
    var DOCUMENT_POSITION_CONTAINED_BY: short;
    var DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: short;
}

type javax.imageio.metadata.IIODOMException {
    var code: short;
    var INDEX_SIZE_ERR: short;
    var DOMSTRING_SIZE_ERR: short;
    var HIERARCHY_REQUEST_ERR: short;
    var WRONG_DOCUMENT_ERR: short;
    var INVALID_CHARACTER_ERR: short;
    var NO_DATA_ALLOWED_ERR: short;
    var NO_MODIFICATION_ALLOWED_ERR: short;
    var NOT_FOUND_ERR: short;
    var NOT_SUPPORTED_ERR: short;
    var INUSE_ATTRIBUTE_ERR: short;
    var INVALID_STATE_ERR: short;
    var SYNTAX_ERR: short;
    var INVALID_MODIFICATION_ERR: short;
    var NAMESPACE_ERR: short;
    var INVALID_ACCESS_ERR: short;
    var VALIDATION_ERR: short;
    var TYPE_MISMATCH_ERR: short;
}

type javax.imageio.metadata.IIOMetadata {
}

type javax.imageio.metadata.IIOMetadataController {
}

type javax.imageio.metadata.IIOMetadataFormatImpl {
    var standardMetadataFormatName: java.lang.String;
    var CHILD_POLICY_EMPTY: int;
    var CHILD_POLICY_ALL: int;
    var CHILD_POLICY_SOME: int;
    var CHILD_POLICY_CHOICE: int;
    var CHILD_POLICY_SEQUENCE: int;
    var CHILD_POLICY_REPEAT: int;
    var CHILD_POLICY_MAX: int;
    var VALUE_NONE: int;
    var VALUE_ARBITRARY: int;
    var VALUE_RANGE: int;
    var VALUE_RANGE_MIN_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MAX_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MIN_INCLUSIVE: int;
    var VALUE_RANGE_MAX_INCLUSIVE: int;
    var VALUE_RANGE_MIN_MAX_INCLUSIVE: int;
    var VALUE_ENUMERATION: int;
    var VALUE_LIST: int;
    var DATATYPE_STRING: int;
    var DATATYPE_BOOLEAN: int;
    var DATATYPE_INTEGER: int;
    var DATATYPE_FLOAT: int;
    var DATATYPE_DOUBLE: int;
}

type javax.imageio.metadata.IIOAttr {
    var ELEMENT_NODE: short;
    var ATTRIBUTE_NODE: short;
    var TEXT_NODE: short;
    var CDATA_SECTION_NODE: short;
    var ENTITY_REFERENCE_NODE: short;
    var ENTITY_NODE: short;
    var PROCESSING_INSTRUCTION_NODE: short;
    var COMMENT_NODE: short;
    var DOCUMENT_NODE: short;
    var DOCUMENT_TYPE_NODE: short;
    var DOCUMENT_FRAGMENT_NODE: short;
    var NOTATION_NODE: short;
    var DOCUMENT_POSITION_DISCONNECTED: short;
    var DOCUMENT_POSITION_PRECEDING: short;
    var DOCUMENT_POSITION_FOLLOWING: short;
    var DOCUMENT_POSITION_CONTAINS: short;
    var DOCUMENT_POSITION_CONTAINED_BY: short;
    var DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: short;
}

type javax.imageio.metadata.IIOMetadataFormat {
    var CHILD_POLICY_EMPTY: int;
    var CHILD_POLICY_ALL: int;
    var CHILD_POLICY_SOME: int;
    var CHILD_POLICY_CHOICE: int;
    var CHILD_POLICY_SEQUENCE: int;
    var CHILD_POLICY_REPEAT: int;
    var CHILD_POLICY_MAX: int;
    var VALUE_NONE: int;
    var VALUE_ARBITRARY: int;
    var VALUE_RANGE: int;
    var VALUE_RANGE_MIN_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MAX_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MIN_INCLUSIVE: int;
    var VALUE_RANGE_MAX_INCLUSIVE: int;
    var VALUE_RANGE_MIN_MAX_INCLUSIVE: int;
    var VALUE_ENUMERATION: int;
    var VALUE_LIST: int;
    var DATATYPE_STRING: int;
    var DATATYPE_BOOLEAN: int;
    var DATATYPE_INTEGER: int;
    var DATATYPE_FLOAT: int;
    var DATATYPE_DOUBLE: int;
}

type javax.accessibility.AccessibleAction {
    var TOGGLE_EXPAND: java.lang.String;
    var INCREMENT: java.lang.String;
    var DECREMENT: java.lang.String;
    var CLICK: java.lang.String;
    var TOGGLE_POPUP: java.lang.String;
}

type javax.accessibility.AccessibleEditableText {
    var CHARACTER: int;
    var WORD: int;
    var SENTENCE: int;
}

type javax.accessibility.AccessibleText {
    var CHARACTER: int;
    var WORD: int;
    var SENTENCE: int;
}

type javax.accessibility.AccessibleHyperlink {
    var TOGGLE_EXPAND: java.lang.String;
    var INCREMENT: java.lang.String;
    var DECREMENT: java.lang.String;
    var CLICK: java.lang.String;
    var TOGGLE_POPUP: java.lang.String;
}

type javax.accessibility.AccessibleExtendedComponent {
}

type javax.accessibility.AccessibleResourceBundle {
}

type javax.accessibility.AccessibleBundle {
}

type javax.accessibility.AccessibleStateSet {
}

type javax.accessibility.AccessibleTable {
}

type javax.accessibility.AccessibleState {
    var ACTIVE: javax.accessibility.AccessibleState;
    var PRESSED: javax.accessibility.AccessibleState;
    var ARMED: javax.accessibility.AccessibleState;
    var BUSY: javax.accessibility.AccessibleState;
    var CHECKED: javax.accessibility.AccessibleState;
    var EDITABLE: javax.accessibility.AccessibleState;
    var EXPANDABLE: javax.accessibility.AccessibleState;
    var COLLAPSED: javax.accessibility.AccessibleState;
    var EXPANDED: javax.accessibility.AccessibleState;
    var ENABLED: javax.accessibility.AccessibleState;
    var FOCUSABLE: javax.accessibility.AccessibleState;
    var FOCUSED: javax.accessibility.AccessibleState;
    var ICONIFIED: javax.accessibility.AccessibleState;
    var MODAL: javax.accessibility.AccessibleState;
    var OPAQUE: javax.accessibility.AccessibleState;
    var RESIZABLE: javax.accessibility.AccessibleState;
    var MULTISELECTABLE: javax.accessibility.AccessibleState;
    var SELECTABLE: javax.accessibility.AccessibleState;
    var SELECTED: javax.accessibility.AccessibleState;
    var SHOWING: javax.accessibility.AccessibleState;
    var VISIBLE: javax.accessibility.AccessibleState;
    var VERTICAL: javax.accessibility.AccessibleState;
    var HORIZONTAL: javax.accessibility.AccessibleState;
    var SINGLE_LINE: javax.accessibility.AccessibleState;
    var MULTI_LINE: javax.accessibility.AccessibleState;
    var TRANSIENT: javax.accessibility.AccessibleState;
    var MANAGES_DESCENDANTS: javax.accessibility.AccessibleState;
    var INDETERMINATE: javax.accessibility.AccessibleState;
    var TRUNCATED: javax.accessibility.AccessibleState;
}

type javax.accessibility.Accessible {
}

type javax.accessibility.AccessibleComponent {
}

type javax.accessibility.AccessibleRelationSet {
}

type javax.accessibility.AccessibleAttributeSequence {
    var startIndex: int;
    var endIndex: int;
    var attributes: javax.swing.text.AttributeSet;
}

type javax.accessibility.AccessibleHypertext {
    var CHARACTER: int;
    var WORD: int;
    var SENTENCE: int;
}

type javax.accessibility.AccessibleExtendedText {
    var LINE: int;
    var ATTRIBUTE_RUN: int;
}

type javax.accessibility.AccessibleTableModelChange {
    var INSERT: int;
    var UPDATE: int;
    var DELETE: int;
}

type javax.accessibility.AccessibilityProvider {
}

type javax.accessibility.AccessibleKeyBinding {
}

type javax.accessibility.AccessibleStreamable {
}

type javax.accessibility.AccessibleExtendedTable {
}

type javax.accessibility.AccessibleIcon {
}

type javax.accessibility.AccessibleValue {
}

type javax.accessibility.AccessibleRelation {
    var LABEL_FOR: java.lang.String;
    var LABELED_BY: java.lang.String;
    var MEMBER_OF: java.lang.String;
    var CONTROLLER_FOR: java.lang.String;
    var CONTROLLED_BY: java.lang.String;
    var FLOWS_TO: java.lang.String;
    var FLOWS_FROM: java.lang.String;
    var SUBWINDOW_OF: java.lang.String;
    var PARENT_WINDOW_OF: java.lang.String;
    var EMBEDS: java.lang.String;
    var EMBEDDED_BY: java.lang.String;
    var CHILD_NODE_OF: java.lang.String;
    var LABEL_FOR_PROPERTY: java.lang.String;
    var LABELED_BY_PROPERTY: java.lang.String;
    var MEMBER_OF_PROPERTY: java.lang.String;
    var CONTROLLER_FOR_PROPERTY: java.lang.String;
    var CONTROLLED_BY_PROPERTY: java.lang.String;
    var FLOWS_TO_PROPERTY: java.lang.String;
    var FLOWS_FROM_PROPERTY: java.lang.String;
    var SUBWINDOW_OF_PROPERTY: java.lang.String;
    var PARENT_WINDOW_OF_PROPERTY: java.lang.String;
    var EMBEDS_PROPERTY: java.lang.String;
    var EMBEDDED_BY_PROPERTY: java.lang.String;
    var CHILD_NODE_OF_PROPERTY: java.lang.String;
}

type javax.accessibility.AccessibleContext {
    var ACCESSIBLE_NAME_PROPERTY: java.lang.String;
    var ACCESSIBLE_DESCRIPTION_PROPERTY: java.lang.String;
    var ACCESSIBLE_STATE_PROPERTY: java.lang.String;
    var ACCESSIBLE_VALUE_PROPERTY: java.lang.String;
    var ACCESSIBLE_SELECTION_PROPERTY: java.lang.String;
    var ACCESSIBLE_CARET_PROPERTY: java.lang.String;
    var ACCESSIBLE_VISIBLE_DATA_PROPERTY: java.lang.String;
    var ACCESSIBLE_CHILD_PROPERTY: java.lang.String;
    var ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY: java.lang.String;
    var ACCESSIBLE_TABLE_CAPTION_CHANGED: java.lang.String;
    var ACCESSIBLE_TABLE_SUMMARY_CHANGED: java.lang.String;
    var ACCESSIBLE_TABLE_MODEL_CHANGED: java.lang.String;
    var ACCESSIBLE_TABLE_ROW_HEADER_CHANGED: java.lang.String;
    var ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED: java.lang.String;
    var ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED: java.lang.String;
    var ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED: java.lang.String;
    var ACCESSIBLE_ACTION_PROPERTY: java.lang.String;
    var ACCESSIBLE_HYPERTEXT_OFFSET: java.lang.String;
    var ACCESSIBLE_TEXT_PROPERTY: java.lang.String;
    var ACCESSIBLE_INVALIDATE_CHILDREN: java.lang.String;
    var ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED: java.lang.String;
    var ACCESSIBLE_COMPONENT_BOUNDS_CHANGED: java.lang.String;
}

type javax.accessibility.AccessibleSelection {
}

type javax.accessibility.AccessibleRole {
    var ALERT: javax.accessibility.AccessibleRole;
    var COLUMN_HEADER: javax.accessibility.AccessibleRole;
    var CANVAS: javax.accessibility.AccessibleRole;
    var COMBO_BOX: javax.accessibility.AccessibleRole;
    var DESKTOP_ICON: javax.accessibility.AccessibleRole;
    var HTML_CONTAINER: javax.accessibility.AccessibleRole;
    var INTERNAL_FRAME: javax.accessibility.AccessibleRole;
    var DESKTOP_PANE: javax.accessibility.AccessibleRole;
    var OPTION_PANE: javax.accessibility.AccessibleRole;
    var WINDOW: javax.accessibility.AccessibleRole;
    var FRAME: javax.accessibility.AccessibleRole;
    var DIALOG: javax.accessibility.AccessibleRole;
    var COLOR_CHOOSER: javax.accessibility.AccessibleRole;
    var DIRECTORY_PANE: javax.accessibility.AccessibleRole;
    var FILE_CHOOSER: javax.accessibility.AccessibleRole;
    var FILLER: javax.accessibility.AccessibleRole;
    var HYPERLINK: javax.accessibility.AccessibleRole;
    var ICON: javax.accessibility.AccessibleRole;
    var LABEL: javax.accessibility.AccessibleRole;
    var ROOT_PANE: javax.accessibility.AccessibleRole;
    var GLASS_PANE: javax.accessibility.AccessibleRole;
    var LAYERED_PANE: javax.accessibility.AccessibleRole;
    var LIST: javax.accessibility.AccessibleRole;
    var LIST_ITEM: javax.accessibility.AccessibleRole;
    var MENU_BAR: javax.accessibility.AccessibleRole;
    var POPUP_MENU: javax.accessibility.AccessibleRole;
    var MENU: javax.accessibility.AccessibleRole;
    var MENU_ITEM: javax.accessibility.AccessibleRole;
    var SEPARATOR: javax.accessibility.AccessibleRole;
    var PAGE_TAB_LIST: javax.accessibility.AccessibleRole;
    var PAGE_TAB: javax.accessibility.AccessibleRole;
    var PANEL: javax.accessibility.AccessibleRole;
    var PROGRESS_BAR: javax.accessibility.AccessibleRole;
    var PASSWORD_TEXT: javax.accessibility.AccessibleRole;
    var PUSH_BUTTON: javax.accessibility.AccessibleRole;
    var TOGGLE_BUTTON: javax.accessibility.AccessibleRole;
    var CHECK_BOX: javax.accessibility.AccessibleRole;
    var RADIO_BUTTON: javax.accessibility.AccessibleRole;
    var ROW_HEADER: javax.accessibility.AccessibleRole;
    var SCROLL_PANE: javax.accessibility.AccessibleRole;
    var SCROLL_BAR: javax.accessibility.AccessibleRole;
    var VIEWPORT: javax.accessibility.AccessibleRole;
    var SLIDER: javax.accessibility.AccessibleRole;
    var SPLIT_PANE: javax.accessibility.AccessibleRole;
    var TABLE: javax.accessibility.AccessibleRole;
    var TEXT: javax.accessibility.AccessibleRole;
    var TREE: javax.accessibility.AccessibleRole;
    var TOOL_BAR: javax.accessibility.AccessibleRole;
    var TOOL_TIP: javax.accessibility.AccessibleRole;
    var AWT_COMPONENT: javax.accessibility.AccessibleRole;
    var SWING_COMPONENT: javax.accessibility.AccessibleRole;
    var UNKNOWN: javax.accessibility.AccessibleRole;
    var STATUS_BAR: javax.accessibility.AccessibleRole;
    var DATE_EDITOR: javax.accessibility.AccessibleRole;
    var SPIN_BOX: javax.accessibility.AccessibleRole;
    var FONT_CHOOSER: javax.accessibility.AccessibleRole;
    var GROUP_BOX: javax.accessibility.AccessibleRole;
    var HEADER: javax.accessibility.AccessibleRole;
    var FOOTER: javax.accessibility.AccessibleRole;
    var PARAGRAPH: javax.accessibility.AccessibleRole;
    var RULER: javax.accessibility.AccessibleRole;
    var EDITBAR: javax.accessibility.AccessibleRole;
    var PROGRESS_MONITOR: javax.accessibility.AccessibleRole;
}

type javax.accessibility.AccessibleTextSequence {
    var startIndex: int;
    var endIndex: int;
    var text: java.lang.String;
}

type javax.sound.sampled.Control {
}

type javax.sound.sampled.FloatControl {
}

type javax.sound.sampled.Mixer {
}

type javax.sound.sampled.Port {
}

type javax.sound.sampled.BooleanControl {
}

type javax.sound.sampled.ReverbType {
}

type javax.sound.sampled.SourceDataLine {
}

type javax.sound.sampled.AudioPermission {
}

type javax.sound.sampled.AudioSystem {
    var NOT_SPECIFIED: int;
}

type javax.sound.sampled.CompoundControl {
}

type javax.sound.sampled.LineEvent {
}

type javax.sound.sampled.LineUnavailableException {
}

type javax.sound.sampled.spi.MixerProvider {
}

type javax.sound.sampled.spi.AudioFileWriter {
}

type javax.sound.sampled.spi.FormatConversionProvider {
}

type javax.sound.sampled.spi.AudioFileReader {
}

type javax.sound.sampled.Line {
}

type javax.sound.sampled.TargetDataLine {
}

type javax.sound.sampled.DataLine {
}

type javax.sound.sampled.AudioFileFormat {
}

type javax.sound.sampled.Clip {
    var LOOP_CONTINUOUSLY: int;
}

type javax.sound.sampled.AudioInputStream {
}

type javax.sound.sampled.AudioFormat {
}

type javax.sound.sampled.LineListener {
}

type javax.sound.sampled.UnsupportedAudioFileException {
}

type javax.sound.sampled.EnumControl {
}

type javax.sound.midi.Receiver {
}

type javax.sound.midi.MidiDeviceReceiver {
}

type javax.sound.midi.Soundbank {
}

type javax.sound.midi.Track {
}

type javax.sound.midi.MetaMessage {
    var META: int;
}

type javax.sound.midi.Synthesizer {
}

type javax.sound.midi.VoiceStatus {
    var active: boolean;
    var channel: int;
    var bank: int;
    var program: int;
    var note: int;
    var volume: int;
}

type javax.sound.midi.Sequencer {
    var LOOP_CONTINUOUSLY: int;
}

type javax.sound.midi.Transmitter {
}

type javax.sound.midi.Sequence {
    var PPQ: float;
    var SMPTE_24: float;
    var SMPTE_25: float;
    var SMPTE_30DROP: float;
    var SMPTE_30: float;
}

type javax.sound.midi.Instrument {
}

type javax.sound.midi.MidiChannel {
}

type javax.sound.midi.ShortMessage {
    var MIDI_TIME_CODE: int;
    var SONG_POSITION_POINTER: int;
    var SONG_SELECT: int;
    var TUNE_REQUEST: int;
    var END_OF_EXCLUSIVE: int;
    var TIMING_CLOCK: int;
    var START: int;
    var CONTINUE: int;
    var STOP: int;
    var ACTIVE_SENSING: int;
    var SYSTEM_RESET: int;
    var NOTE_OFF: int;
    var NOTE_ON: int;
    var POLY_PRESSURE: int;
    var CONTROL_CHANGE: int;
    var PROGRAM_CHANGE: int;
    var CHANNEL_PRESSURE: int;
    var PITCH_BEND: int;
}

type javax.sound.midi.MidiMessage {
}

type javax.sound.midi.SysexMessage {
    var SYSTEM_EXCLUSIVE: int;
    var SPECIAL_SYSTEM_EXCLUSIVE: int;
}

type javax.sound.midi.MetaEventListener {
}

type javax.sound.midi.MidiSystem {
}

type javax.sound.midi.spi.MidiFileWriter {
}

type javax.sound.midi.spi.MidiDeviceProvider {
}

type javax.sound.midi.spi.SoundbankReader {
}

type javax.sound.midi.spi.MidiFileReader {
}

type javax.sound.midi.Patch {
}

type javax.sound.midi.MidiFileFormat {
    var UNKNOWN_LENGTH: int;
}

type javax.sound.midi.MidiEvent {
}

type javax.sound.midi.MidiDeviceTransmitter {
}

type javax.sound.midi.MidiUnavailableException {
}

type javax.sound.midi.MidiDevice {
}

type javax.sound.midi.SoundbankResource {
}

type javax.sound.midi.InvalidMidiDataException {
}

type javax.sound.midi.ControllerEventListener {
}

type com.apple.eio.FileManager {
    var kOnAppropriateDisk: short;
    var kSystemDomain: short;
    var kLocalDomain: short;
    var kNetworkDomain: short;
    var kUserDomain: short;
}

type com.apple.laf.AquaMenuItemUI {
}

type com.apple.laf.AquaTabbedPaneContrastUI {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type com.apple.laf.AquaButtonExtendedTypes {
}

type com.apple.laf.AquaSpinnerUI {
}

type com.apple.laf.AquaUtilControlSize {
}

type com.apple.laf.ScreenMenuItemUI {
}

type com.apple.laf.AquaSplitPaneUI {
}

type com.apple.laf.AquaRootPaneUI {
}

type com.apple.laf.AquaInternalFrameUI {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type com.apple.laf.AquaScrollPaneUI {
    var VIEWPORT: java.lang.String;
    var VERTICAL_SCROLLBAR: java.lang.String;
    var HORIZONTAL_SCROLLBAR: java.lang.String;
    var ROW_HEADER: java.lang.String;
    var COLUMN_HEADER: java.lang.String;
    var LOWER_LEFT_CORNER: java.lang.String;
    var LOWER_RIGHT_CORNER: java.lang.String;
    var UPPER_LEFT_CORNER: java.lang.String;
    var UPPER_RIGHT_CORNER: java.lang.String;
    var LOWER_LEADING_CORNER: java.lang.String;
    var LOWER_TRAILING_CORNER: java.lang.String;
    var UPPER_LEADING_CORNER: java.lang.String;
    var UPPER_TRAILING_CORNER: java.lang.String;
    var VERTICAL_SCROLLBAR_POLICY: java.lang.String;
    var HORIZONTAL_SCROLLBAR_POLICY: java.lang.String;
    var VERTICAL_SCROLLBAR_AS_NEEDED: int;
    var VERTICAL_SCROLLBAR_NEVER: int;
    var VERTICAL_SCROLLBAR_ALWAYS: int;
    var HORIZONTAL_SCROLLBAR_AS_NEEDED: int;
    var HORIZONTAL_SCROLLBAR_NEVER: int;
    var HORIZONTAL_SCROLLBAR_ALWAYS: int;
}

type com.apple.laf.AquaTextFieldUI {
}

type com.apple.laf.ScreenMenuItem {
}

type com.apple.laf.AquaTableHeaderUI {
}

type com.apple.laf.AquaFocus {
}

type com.apple.laf.ScreenMenuItemCheckbox {
}

type com.apple.laf.AquaHighlighter {
}

type com.apple.laf.ScreenMenu {
}

type com.apple.laf.AquaUtils {
}

type com.apple.laf.AquaComboBoxUI {
}

type com.apple.laf.AquaIcon {
}

type com.apple.laf.AquaButtonBorder {
}

type com.apple.laf.AquaMenuBarBorder {
}

type com.apple.laf.AquaEditorPaneUI {
}

type com.apple.laf.AquaPopupMenuSeparatorUI {
}

type com.apple.laf.AquaTextFieldSearch {
}

type com.apple.laf.ScreenMenuPropertyListener {
}

type com.apple.laf.AquaButtonLabeledUI {
}

type com.apple.laf.resources.aqua_it {
}

type com.apple.laf.resources.aqua_sv {
}

type com.apple.laf.resources.aqua_ko {
}

type com.apple.laf.resources.aqua_ja {
}

type com.apple.laf.resources.aqua_de {
}

type com.apple.laf.resources.aqua_zh_TW {
}

type com.apple.laf.resources.aqua_zh_HK {
}

type com.apple.laf.resources.aqua_es {
}

type com.apple.laf.resources.aqua_fr {
}

type com.apple.laf.resources.aqua {
}

type com.apple.laf.resources.aqua_pt_BR {
}

type com.apple.laf.resources.aqua_zh_CN {
}

type com.apple.laf.AquaButtonRadioUI {
}

type com.apple.laf.AquaInternalFrameDockIconUI {
}

type com.apple.laf.AquaTextAreaUI {
}

type com.apple.laf.AquaSliderUI {
    var POSITIVE_SCROLL: int;
    var NEGATIVE_SCROLL: int;
    var MIN_SCROLL: int;
    var MAX_SCROLL: int;
}

type com.apple.laf.AquaButtonToggleUI {
}

type com.apple.laf.AquaPainter {
}

type com.apple.laf.ScreenPopupFactory {
}

type com.apple.laf.AquaFonts {
}

type com.apple.laf.AquaTextFieldBorder {
}

type com.apple.laf.AquaFileSystemModel {
    var SORT_BY_CHANGED: java.lang.String;
    var SORT_ASCENDING_CHANGED: java.lang.String;
}

type com.apple.laf.AquaOptionPaneUI {
    var MinimumWidth: int;
    var MinimumHeight: int;
}

type com.apple.laf.AquaKeyBindings {
}

type com.apple.laf.AquaInternalFrameBorder {
}

type com.apple.laf.ScreenMenuBar {
}

type com.apple.laf.AquaLabelUI {
}

type com.apple.laf.AquaTextPasswordFieldUI {
}

type com.apple.laf.AquaFileChooserUI {
}

type com.apple.laf.AquaScrollBarUI {
}

type com.apple.laf.AquaFileView {
}

type com.apple.laf.AquaProgressBarUI {
}

type com.apple.laf.AquaButtonUI {
}

type com.apple.laf.AquaListUI {
}

type com.apple.laf.AquaImageFactory {
}

type com.apple.laf.AquaToolBarUI {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type com.apple.laf.AquaPanelUI {
}

type com.apple.laf.AquaToolTipUI {
}

type com.apple.laf.AquaMenuBarUI {
}

type com.apple.laf.AquaTableHeaderBorder {
}

type com.apple.laf.AquaLookAndFeel {
}

type com.apple.laf.AquaScrollRegionBorder {
}

type com.apple.laf.AquaPopupMenuUI {
}

type com.apple.laf.AquaInternalFrameBorderMetrics {
    var font: java.awt.Font;
    var titleBarHeight: int;
    var leftSidePadding: int;
    var buttonHeight: int;
    var buttonWidth: int;
    var buttonPadding: int;
    var downShift: int;
}

type com.apple.laf.AquaComboBoxPopup {
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type com.apple.laf.AquaNativeResources {
}

type com.apple.laf.AquaFocusHandler {
}

type com.apple.laf.AquaTabbedPaneTabState {
}

type com.apple.laf.AquaTextFieldFormattedUI {
}

type com.apple.laf.AquaTreeUI {
}

type com.apple.laf.AquaInternalFramePaneUI {
}

type com.apple.laf.AquaTabbedPaneUI {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type com.apple.laf.ClientPropertyApplicator {
}

type com.apple.laf.AquaTableUI {
}

type com.apple.laf.AquaTextPaneUI {
}

type com.apple.laf.AquaGroupBorder {
}

type com.apple.laf.AquaCaret {
    var UPDATE_WHEN_ON_EDT: int;
    var NEVER_UPDATE: int;
    var ALWAYS_UPDATE: int;
    var x: int;
    var y: int;
    var width: int;
    var height: int;
    var OUT_LEFT: int;
    var OUT_TOP: int;
    var OUT_RIGHT: int;
    var OUT_BOTTOM: int;
}

type com.apple.laf.AquaSplitPaneDividerUI {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type com.apple.laf.AquaComboBoxRenderer {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type com.apple.laf.AquaInternalFrameManager {
}

type com.apple.laf.AquaButtonCheckBoxUI {
}

type com.apple.laf.AquaMenuUI {
}

type com.apple.laf.AquaMenuPainter {
}

type com.apple.laf.AquaMnemonicHandler {
}

type com.apple.laf.AquaBorder {
}

type com.apple.laf.AquaToolBarSeparatorUI {
}

type com.apple.laf.AquaTabbedPaneCopyFromBasicUI {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type com.apple.laf.AquaMenuBorder {
}

type com.apple.laf.ScreenMenuBarProvider {
}

type com.apple.laf.AquaComboBoxButton {
    var MODEL_CHANGED_PROPERTY: java.lang.String;
    var TEXT_CHANGED_PROPERTY: java.lang.String;
    var MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var MARGIN_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var BORDER_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var FOCUS_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var CONTENT_AREA_FILLED_CHANGED_PROPERTY: java.lang.String;
    var ICON_CHANGED_PROPERTY: java.lang.String;
    var PRESSED_ICON_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type com.apple.laf.AquaComboBoxRendererInternal {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type com.apple.laf.ScreenMenuPropertyHandler {
}

type com.apple.eawt.ApplicationBeanInfo {
    var ICON_COLOR_16x16: int;
    var ICON_COLOR_32x32: int;
    var ICON_MONO_16x16: int;
    var ICON_MONO_32x32: int;
}

type com.apple.eawt.FullScreenHandler {
}

type com.apple.eawt.MacQuitResponse {
}

type com.apple.eawt._OpenAppHandler {
}

type com.apple.eawt.FullScreenAdapter {
}

type com.apple.eawt.FullScreenListener {
}

type com.apple.eawt._AppMenuBarHandler {
}

type com.apple.eawt._AppDockIconHandler {
}

type com.apple.eawt._AppMiscHandlers {
}

type com.apple.eawt.Application {
}

type com.apple.eawt.event.GesturePhaseEvent {
}

type com.apple.eawt.event.GestureAdapter {
}

type com.apple.eawt.event.RotationEvent {
}

type com.apple.eawt.event.MagnificationListener {
}

type com.apple.eawt.event.GestureHandler {
}

type com.apple.eawt.event.GestureEvent {
}

type com.apple.eawt.event.SwipeListener {
}

type com.apple.eawt.event.GestureListener {
}

type com.apple.eawt.event.GestureUtilities {
}

type com.apple.eawt.event.FullScreenEvent {
}

type com.apple.eawt.event.MagnificationEvent {
}

type com.apple.eawt.event.RotationListener {
}

type com.apple.eawt.event.SwipeEvent {
}

type com.apple.eawt.event.GesturePhaseListener {
}

type com.apple.eawt.FullScreenUtilities {
}

type com.apple.eawt._AppEventHandler {
}

type com.sun.swing.internal.plaf.metal.resources.metal_sv {
}

type com.sun.swing.internal.plaf.metal.resources.metal_zh_CN {
}

type com.sun.swing.internal.plaf.metal.resources.metal_ko {
}

type com.sun.swing.internal.plaf.metal.resources.metal_pt_BR {
}

type com.sun.swing.internal.plaf.metal.resources.metal_it {
}

type com.sun.swing.internal.plaf.metal.resources.metal_es {
}

type com.sun.swing.internal.plaf.metal.resources.metal_de {
}

type com.sun.swing.internal.plaf.metal.resources.metal_ja {
}

type com.sun.swing.internal.plaf.metal.resources.metal_zh_HK {
}

type com.sun.swing.internal.plaf.metal.resources.metal_fr {
}

type com.sun.swing.internal.plaf.metal.resources.metal_zh_TW {
}

type com.sun.swing.internal.plaf.metal.resources.metal {
}

type com.sun.swing.internal.plaf.basic.resources.basic_es {
}

type com.sun.swing.internal.plaf.basic.resources.basic_zh_TW {
}

type com.sun.swing.internal.plaf.basic.resources.basic_zh_HK {
}

type com.sun.swing.internal.plaf.basic.resources.basic_ja {
}

type com.sun.swing.internal.plaf.basic.resources.basic_de {
}

type com.sun.swing.internal.plaf.basic.resources.basic_ko {
}

type com.sun.swing.internal.plaf.basic.resources.basic_sv {
}

type com.sun.swing.internal.plaf.basic.resources.basic_it {
}

type com.sun.swing.internal.plaf.basic.resources.basic_pt_BR {
}

type com.sun.swing.internal.plaf.basic.resources.basic_zh_CN {
}

type com.sun.swing.internal.plaf.basic.resources.basic {
}

type com.sun.swing.internal.plaf.basic.resources.basic_fr {
}

type com.sun.swing.internal.plaf.synth.resources.synth_pt_BR {
}

type com.sun.swing.internal.plaf.synth.resources.synth_sv {
}

type com.sun.swing.internal.plaf.synth.resources.synth_zh_CN {
}

type com.sun.swing.internal.plaf.synth.resources.synth {
}

type com.sun.swing.internal.plaf.synth.resources.synth_ko {
}

type com.sun.swing.internal.plaf.synth.resources.synth_it {
}

type com.sun.swing.internal.plaf.synth.resources.synth_es {
}

type com.sun.swing.internal.plaf.synth.resources.synth_ja {
}

type com.sun.swing.internal.plaf.synth.resources.synth_de {
}

type com.sun.swing.internal.plaf.synth.resources.synth_fr {
}

type com.sun.swing.internal.plaf.synth.resources.synth_zh_TW {
}

type com.sun.swing.internal.plaf.synth.resources.synth_zh_HK {
}

type com.sun.java.swing.plaf.motif.MotifDesktopIconUI {
}

type com.sun.java.swing.plaf.motif.MotifInternalFrameUI {
}

type com.sun.java.swing.plaf.motif.MotifTabbedPaneUI {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type com.sun.java.swing.plaf.motif.MotifRadioButtonUI {
}

type com.sun.java.swing.plaf.motif.MotifIconFactory {
}

type com.sun.java.swing.plaf.motif.MotifTextAreaUI {
}

type com.sun.java.swing.plaf.motif.MotifSliderUI {
    var POSITIVE_SCROLL: int;
    var NEGATIVE_SCROLL: int;
    var MIN_SCROLL: int;
    var MAX_SCROLL: int;
}

type com.sun.java.swing.plaf.motif.MotifSeparatorUI {
}

type com.sun.java.swing.plaf.motif.MotifInternalFrameTitlePane {
    var BUTTON_SIZE: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type com.sun.java.swing.plaf.motif.MotifSplitPaneUI {
}

type com.sun.java.swing.plaf.motif.resources.motif {
}

type com.sun.java.swing.plaf.motif.resources.motif_fr {
}

type com.sun.java.swing.plaf.motif.resources.motif_zh_HK {
}

type com.sun.java.swing.plaf.motif.resources.motif_zh_TW {
}

type com.sun.java.swing.plaf.motif.resources.motif_zh_CN {
}

type com.sun.java.swing.plaf.motif.resources.motif_sv {
}

type com.sun.java.swing.plaf.motif.resources.motif_ko {
}

type com.sun.java.swing.plaf.motif.resources.motif_pt_BR {
}

type com.sun.java.swing.plaf.motif.resources.motif_it {
}

type com.sun.java.swing.plaf.motif.resources.motif_es {
}

type com.sun.java.swing.plaf.motif.resources.motif_ja {
}

type com.sun.java.swing.plaf.motif.resources.motif_de {
}

type com.sun.java.swing.plaf.motif.MotifMenuItemUI {
}

type com.sun.java.swing.plaf.motif.MotifTextUI {
}

type com.sun.java.swing.plaf.motif.MotifScrollBarButton {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var MODEL_CHANGED_PROPERTY: java.lang.String;
    var TEXT_CHANGED_PROPERTY: java.lang.String;
    var MNEMONIC_CHANGED_PROPERTY: java.lang.String;
    var MARGIN_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY: java.lang.String;
    var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY: java.lang.String;
    var BORDER_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var FOCUS_PAINTED_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ENABLED_CHANGED_PROPERTY: java.lang.String;
    var CONTENT_AREA_FILLED_CHANGED_PROPERTY: java.lang.String;
    var ICON_CHANGED_PROPERTY: java.lang.String;
    var PRESSED_ICON_CHANGED_PROPERTY: java.lang.String;
    var SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_ICON_CHANGED_PROPERTY: java.lang.String;
    var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_ICON_CHANGED_PROPERTY: java.lang.String;
    var DISABLED_SELECTED_ICON_CHANGED_PROPERTY: java.lang.String;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type com.sun.java.swing.plaf.motif.MotifComboBoxUI {
}

type com.sun.java.swing.plaf.motif.MotifSplitPaneDivider {
    var minimumThumbSize: int;
    var defaultDividerSize: int;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type com.sun.java.swing.plaf.motif.MotifTextFieldUI {
}

type com.sun.java.swing.plaf.motif.MotifPasswordFieldUI {
}

type com.sun.java.swing.plaf.motif.MotifMenuUI {
}

type com.sun.java.swing.plaf.motif.MotifEditorPaneUI {
}

type com.sun.java.swing.plaf.motif.MotifFileChooserUI {
}

type com.sun.java.swing.plaf.motif.MotifDesktopPaneUI {
}

type com.sun.java.swing.plaf.motif.MotifProgressBarUI {
}

type com.sun.java.swing.plaf.motif.MotifLabelUI {
}

type com.sun.java.swing.plaf.motif.MotifButtonListener {
}

type com.sun.java.swing.plaf.motif.MotifTreeUI {
}

type com.sun.java.swing.plaf.motif.MotifTextPaneUI {
}

type com.sun.java.swing.plaf.motif.MotifMenuBarUI {
}

type com.sun.java.swing.plaf.motif.MotifPopupMenuSeparatorUI {
}

type com.sun.java.swing.plaf.motif.MotifOptionPaneUI {
    var MinimumWidth: int;
    var MinimumHeight: int;
}

type com.sun.java.swing.plaf.motif.MotifMenuMouseListener {
}

type com.sun.java.swing.plaf.motif.MotifMenuMouseMotionListener {
}

type com.sun.java.swing.plaf.motif.MotifCheckBoxMenuItemUI {
}

type com.sun.java.swing.plaf.motif.MotifButtonUI {
}

type com.sun.java.swing.plaf.motif.MotifRadioButtonMenuItemUI {
}

type com.sun.java.swing.plaf.motif.MotifGraphicsUtils {
}

type com.sun.java.swing.plaf.motif.MotifScrollPaneUI {
    var VIEWPORT: java.lang.String;
    var VERTICAL_SCROLLBAR: java.lang.String;
    var HORIZONTAL_SCROLLBAR: java.lang.String;
    var ROW_HEADER: java.lang.String;
    var COLUMN_HEADER: java.lang.String;
    var LOWER_LEFT_CORNER: java.lang.String;
    var LOWER_RIGHT_CORNER: java.lang.String;
    var UPPER_LEFT_CORNER: java.lang.String;
    var UPPER_RIGHT_CORNER: java.lang.String;
    var LOWER_LEADING_CORNER: java.lang.String;
    var LOWER_TRAILING_CORNER: java.lang.String;
    var UPPER_LEADING_CORNER: java.lang.String;
    var UPPER_TRAILING_CORNER: java.lang.String;
    var VERTICAL_SCROLLBAR_POLICY: java.lang.String;
    var HORIZONTAL_SCROLLBAR_POLICY: java.lang.String;
    var VERTICAL_SCROLLBAR_AS_NEEDED: int;
    var VERTICAL_SCROLLBAR_NEVER: int;
    var VERTICAL_SCROLLBAR_ALWAYS: int;
    var HORIZONTAL_SCROLLBAR_AS_NEEDED: int;
    var HORIZONTAL_SCROLLBAR_NEVER: int;
    var HORIZONTAL_SCROLLBAR_ALWAYS: int;
}

type com.sun.java.swing.plaf.motif.MotifScrollBarUI {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
}

type com.sun.java.swing.plaf.motif.MotifCheckBoxUI {
}

type com.sun.java.swing.plaf.motif.MotifBorders {
}

type com.sun.java.swing.plaf.motif.MotifToggleButtonUI {
}

type com.sun.java.swing.plaf.motif.MotifPopupMenuUI {
}

type com.sun.java.swing.plaf.motif.MotifTreeCellRenderer {
    var CENTER: int;
    var TOP: int;
    var LEFT: int;
    var BOTTOM: int;
    var RIGHT: int;
    var NORTH: int;
    var NORTH_EAST: int;
    var EAST: int;
    var SOUTH_EAST: int;
    var SOUTH: int;
    var SOUTH_WEST: int;
    var WEST: int;
    var NORTH_WEST: int;
    var HORIZONTAL: int;
    var VERTICAL: int;
    var LEADING: int;
    var TRAILING: int;
    var NEXT: int;
    var PREVIOUS: int;
    var WHEN_FOCUSED: int;
    var WHEN_ANCESTOR_OF_FOCUSED_COMPONENT: int;
    var WHEN_IN_FOCUSED_WINDOW: int;
    var UNDEFINED_CONDITION: int;
    var TOOL_TIP_TEXT_KEY: java.lang.String;
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type com.sun.java.swing.plaf.motif.MotifLookAndFeel {
}

type com.sun.java.swing.SwingUtilities3 {
}

type com.sun.imageio.plugins.png.PNGImageReader {
}

type com.sun.imageio.plugins.png.RowFilter {
}

type com.sun.imageio.plugins.png.PNGImageWriteParam {
    var MODE_DISABLED: int;
    var MODE_DEFAULT: int;
    var MODE_EXPLICIT: int;
    var MODE_COPY_FROM_METADATA: int;
}

type com.sun.imageio.plugins.png.PNGMetadataFormat {
    var standardMetadataFormatName: java.lang.String;
    var CHILD_POLICY_EMPTY: int;
    var CHILD_POLICY_ALL: int;
    var CHILD_POLICY_SOME: int;
    var CHILD_POLICY_CHOICE: int;
    var CHILD_POLICY_SEQUENCE: int;
    var CHILD_POLICY_REPEAT: int;
    var CHILD_POLICY_MAX: int;
    var VALUE_NONE: int;
    var VALUE_ARBITRARY: int;
    var VALUE_RANGE: int;
    var VALUE_RANGE_MIN_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MAX_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MIN_INCLUSIVE: int;
    var VALUE_RANGE_MAX_INCLUSIVE: int;
    var VALUE_RANGE_MIN_MAX_INCLUSIVE: int;
    var VALUE_ENUMERATION: int;
    var VALUE_LIST: int;
    var DATATYPE_STRING: int;
    var DATATYPE_BOOLEAN: int;
    var DATATYPE_INTEGER: int;
    var DATATYPE_FLOAT: int;
    var DATATYPE_DOUBLE: int;
}

type com.sun.imageio.plugins.png.PNGMetadata {
    var nativeMetadataFormatName: java.lang.String;
    var PHYS_UNIT_UNKNOWN: int;
    var PHYS_UNIT_METER: int;
    var IHDR_present: boolean;
    var IHDR_width: int;
    var IHDR_height: int;
    var IHDR_bitDepth: int;
    var IHDR_colorType: int;
    var IHDR_compressionMethod: int;
    var IHDR_filterMethod: int;
    var IHDR_interlaceMethod: int;
    var PLTE_present: boolean;
    var PLTE_red: array<byte>;
    var PLTE_green: array<byte>;
    var PLTE_blue: array<byte>;
    var PLTE_order: array<int>;
    var bKGD_present: boolean;
    var bKGD_colorType: int;
    var bKGD_index: int;
    var bKGD_gray: int;
    var bKGD_red: int;
    var bKGD_green: int;
    var bKGD_blue: int;
    var cHRM_present: boolean;
    var cHRM_whitePointX: int;
    var cHRM_whitePointY: int;
    var cHRM_redX: int;
    var cHRM_redY: int;
    var cHRM_greenX: int;
    var cHRM_greenY: int;
    var cHRM_blueX: int;
    var cHRM_blueY: int;
    var gAMA_present: boolean;
    var gAMA_gamma: int;
    var hIST_present: boolean;
    var hIST_histogram: array<char>;
    var iCCP_present: boolean;
    var iCCP_profileName: java.lang.String;
    var iCCP_compressionMethod: int;
    var iCCP_compressedProfile: array<byte>;
    var iTXt_keyword: java.util.ArrayList;
    var iTXt_compressionFlag: java.util.ArrayList;
    var iTXt_compressionMethod: java.util.ArrayList;
    var iTXt_languageTag: java.util.ArrayList;
    var iTXt_translatedKeyword: java.util.ArrayList;
    var iTXt_text: java.util.ArrayList;
    var pHYs_present: boolean;
    var pHYs_pixelsPerUnitXAxis: int;
    var pHYs_pixelsPerUnitYAxis: int;
    var pHYs_unitSpecifier: int;
    var sBIT_present: boolean;
    var sBIT_colorType: int;
    var sBIT_grayBits: int;
    var sBIT_redBits: int;
    var sBIT_greenBits: int;
    var sBIT_blueBits: int;
    var sBIT_alphaBits: int;
    var sPLT_present: boolean;
    var sPLT_paletteName: java.lang.String;
    var sPLT_sampleDepth: int;
    var sPLT_red: array<int>;
    var sPLT_green: array<int>;
    var sPLT_blue: array<int>;
    var sPLT_alpha: array<int>;
    var sPLT_frequency: array<int>;
    var sRGB_present: boolean;
    var sRGB_renderingIntent: int;
    var tEXt_keyword: java.util.ArrayList;
    var tEXt_text: java.util.ArrayList;
    var tIME_present: boolean;
    var tIME_year: int;
    var tIME_month: int;
    var tIME_day: int;
    var tIME_hour: int;
    var tIME_minute: int;
    var tIME_second: int;
    var creation_time_present: boolean;
    var creation_time_year: int;
    var creation_time_month: int;
    var creation_time_day: int;
    var creation_time_hour: int;
    var creation_time_minute: int;
    var creation_time_second: int;
    var creation_time_offset: java.time.ZoneOffset;
    var tEXt_creation_time_present: boolean;
    var tEXt_creationTimeKey: java.lang.String;
    var tRNS_present: boolean;
    var tRNS_colorType: int;
    var tRNS_alpha: array<byte>;
    var tRNS_gray: int;
    var tRNS_red: int;
    var tRNS_green: int;
    var tRNS_blue: int;
    var zTXt_keyword: java.util.ArrayList;
    var zTXt_compressionMethod: java.util.ArrayList;
    var zTXt_text: java.util.ArrayList;
    var unknownChunkType: java.util.ArrayList;
    var unknownChunkData: java.util.ArrayList;
}

type com.sun.imageio.plugins.png.PNGImageDataEnumeration {
}

type com.sun.imageio.plugins.png.CRC {
}

type com.sun.imageio.plugins.png.PNGMetadataFormatResources {
}

type com.sun.imageio.plugins.png.ChunkStream {
}

type com.sun.imageio.plugins.png.PNGImageReaderSpi {
    var STANDARD_INPUT_TYPE: array<java.lang.Class>;
}

type com.sun.imageio.plugins.png.PNGImageWriterSpi {
    var STANDARD_OUTPUT_TYPE: array<java.lang.Class>;
}

type com.sun.imageio.plugins.png.IDATOutputStream {
}

type com.sun.imageio.plugins.png.PNGImageWriter {
}

type com.sun.imageio.plugins.common.BitFile {
}

type com.sun.imageio.plugins.common.StandardMetadataFormatResources {
}

type com.sun.imageio.plugins.common.SingleTileRenderedImage {
}

type com.sun.imageio.plugins.common.SimpleCMYKColorSpace {
    var TYPE_XYZ: int;
    var TYPE_Lab: int;
    var TYPE_Luv: int;
    var TYPE_YCbCr: int;
    var TYPE_Yxy: int;
    var TYPE_RGB: int;
    var TYPE_GRAY: int;
    var TYPE_HSV: int;
    var TYPE_HLS: int;
    var TYPE_CMYK: int;
    var TYPE_CMY: int;
    var TYPE_2CLR: int;
    var TYPE_3CLR: int;
    var TYPE_4CLR: int;
    var TYPE_5CLR: int;
    var TYPE_6CLR: int;
    var TYPE_7CLR: int;
    var TYPE_8CLR: int;
    var TYPE_9CLR: int;
    var TYPE_ACLR: int;
    var TYPE_BCLR: int;
    var TYPE_CCLR: int;
    var TYPE_DCLR: int;
    var TYPE_ECLR: int;
    var TYPE_FCLR: int;
    var CS_sRGB: int;
    var CS_LINEAR_RGB: int;
    var CS_CIEXYZ: int;
    var CS_PYCC: int;
    var CS_GRAY: int;
}

type com.sun.imageio.plugins.common.LZWStringTable {
}

type com.sun.imageio.plugins.common.ImageUtil {
}

type com.sun.imageio.plugins.common.StandardMetadataFormat {
    var standardMetadataFormatName: java.lang.String;
    var CHILD_POLICY_EMPTY: int;
    var CHILD_POLICY_ALL: int;
    var CHILD_POLICY_SOME: int;
    var CHILD_POLICY_CHOICE: int;
    var CHILD_POLICY_SEQUENCE: int;
    var CHILD_POLICY_REPEAT: int;
    var CHILD_POLICY_MAX: int;
    var VALUE_NONE: int;
    var VALUE_ARBITRARY: int;
    var VALUE_RANGE: int;
    var VALUE_RANGE_MIN_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MAX_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MIN_INCLUSIVE: int;
    var VALUE_RANGE_MAX_INCLUSIVE: int;
    var VALUE_RANGE_MIN_MAX_INCLUSIVE: int;
    var VALUE_ENUMERATION: int;
    var VALUE_LIST: int;
    var DATATYPE_STRING: int;
    var DATATYPE_BOOLEAN: int;
    var DATATYPE_INTEGER: int;
    var DATATYPE_FLOAT: int;
    var DATATYPE_DOUBLE: int;
}

type com.sun.imageio.plugins.common.LZWCompressor {
}

type com.sun.imageio.plugins.common.InputStreamAdapter {
}

type com.sun.imageio.plugins.common.I18NImpl {
}

type com.sun.imageio.plugins.common.I18N {
}

type com.sun.imageio.plugins.common.ReaderUtil {
}

type com.sun.imageio.plugins.common.SubImageInputStream {
}

type com.sun.imageio.plugins.common.SimpleRenderedImage {
}

type com.sun.imageio.plugins.common.BogusColorSpace {
    var TYPE_XYZ: int;
    var TYPE_Lab: int;
    var TYPE_Luv: int;
    var TYPE_YCbCr: int;
    var TYPE_Yxy: int;
    var TYPE_RGB: int;
    var TYPE_GRAY: int;
    var TYPE_HSV: int;
    var TYPE_HLS: int;
    var TYPE_CMYK: int;
    var TYPE_CMY: int;
    var TYPE_2CLR: int;
    var TYPE_3CLR: int;
    var TYPE_4CLR: int;
    var TYPE_5CLR: int;
    var TYPE_6CLR: int;
    var TYPE_7CLR: int;
    var TYPE_8CLR: int;
    var TYPE_9CLR: int;
    var TYPE_ACLR: int;
    var TYPE_BCLR: int;
    var TYPE_CCLR: int;
    var TYPE_DCLR: int;
    var TYPE_ECLR: int;
    var TYPE_FCLR: int;
    var CS_sRGB: int;
    var CS_LINEAR_RGB: int;
    var CS_CIEXYZ: int;
    var CS_PYCC: int;
    var CS_GRAY: int;
}

type com.sun.imageio.plugins.common.PaletteBuilder {
}

type com.sun.imageio.plugins.wbmp.WBMPImageReader {
}

type com.sun.imageio.plugins.wbmp.WBMPMetadataFormat {
    var standardMetadataFormatName: java.lang.String;
    var CHILD_POLICY_EMPTY: int;
    var CHILD_POLICY_ALL: int;
    var CHILD_POLICY_SOME: int;
    var CHILD_POLICY_CHOICE: int;
    var CHILD_POLICY_SEQUENCE: int;
    var CHILD_POLICY_REPEAT: int;
    var CHILD_POLICY_MAX: int;
    var VALUE_NONE: int;
    var VALUE_ARBITRARY: int;
    var VALUE_RANGE: int;
    var VALUE_RANGE_MIN_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MAX_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MIN_INCLUSIVE: int;
    var VALUE_RANGE_MAX_INCLUSIVE: int;
    var VALUE_RANGE_MIN_MAX_INCLUSIVE: int;
    var VALUE_ENUMERATION: int;
    var VALUE_LIST: int;
    var DATATYPE_STRING: int;
    var DATATYPE_BOOLEAN: int;
    var DATATYPE_INTEGER: int;
    var DATATYPE_FLOAT: int;
    var DATATYPE_DOUBLE: int;
}

type com.sun.imageio.plugins.wbmp.WBMPImageWriterSpi {
    var STANDARD_OUTPUT_TYPE: array<java.lang.Class>;
}

type com.sun.imageio.plugins.wbmp.WBMPMetadata {
    var wbmpType: int;
    var width: int;
    var height: int;
}

type com.sun.imageio.plugins.wbmp.WBMPImageWriter {
}

type com.sun.imageio.plugins.wbmp.WBMPImageReaderSpi {
    var STANDARD_INPUT_TYPE: array<java.lang.Class>;
}

type com.sun.imageio.plugins.jpeg.JPEGImageReader {
}

type com.sun.imageio.plugins.jpeg.SOSMarkerSegment {
}

type com.sun.imageio.plugins.jpeg.JPEGMetadataFormatResources {
}

type com.sun.imageio.plugins.jpeg.DQTMarkerSegment {
}

type com.sun.imageio.plugins.jpeg.JPEGImageWriterResources {
}

type com.sun.imageio.plugins.jpeg.JPEGImageReaderSpi {
    var STANDARD_INPUT_TYPE: array<java.lang.Class>;
}

type com.sun.imageio.plugins.jpeg.MarkerSegment {
}

type com.sun.imageio.plugins.jpeg.JPEGStreamMetadataFormatResources {
}

type com.sun.imageio.plugins.jpeg.ImageTypeIterator {
}

type com.sun.imageio.plugins.jpeg.JPEGBuffer {
}

type com.sun.imageio.plugins.jpeg.JPEGImageWriterSpi {
    var STANDARD_OUTPUT_TYPE: array<java.lang.Class>;
}

type com.sun.imageio.plugins.jpeg.DHTMarkerSegment {
}

type com.sun.imageio.plugins.jpeg.JPEGImageMetadataFormatResources {
}

type com.sun.imageio.plugins.jpeg.DRIMarkerSegment {
}

type com.sun.imageio.plugins.jpeg.ImageTypeProducer {
}

type com.sun.imageio.plugins.jpeg.JPEGMetadata {
}

type com.sun.imageio.plugins.jpeg.JPEGStreamMetadataFormat {
    var standardMetadataFormatName: java.lang.String;
    var CHILD_POLICY_EMPTY: int;
    var CHILD_POLICY_ALL: int;
    var CHILD_POLICY_SOME: int;
    var CHILD_POLICY_CHOICE: int;
    var CHILD_POLICY_SEQUENCE: int;
    var CHILD_POLICY_REPEAT: int;
    var CHILD_POLICY_MAX: int;
    var VALUE_NONE: int;
    var VALUE_ARBITRARY: int;
    var VALUE_RANGE: int;
    var VALUE_RANGE_MIN_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MAX_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MIN_INCLUSIVE: int;
    var VALUE_RANGE_MAX_INCLUSIVE: int;
    var VALUE_RANGE_MIN_MAX_INCLUSIVE: int;
    var VALUE_ENUMERATION: int;
    var VALUE_LIST: int;
    var DATATYPE_STRING: int;
    var DATATYPE_BOOLEAN: int;
    var DATATYPE_INTEGER: int;
    var DATATYPE_FLOAT: int;
    var DATATYPE_DOUBLE: int;
}

type com.sun.imageio.plugins.jpeg.SOFMarkerSegment {
}

type com.sun.imageio.plugins.jpeg.JPEGImageMetadataFormat {
    var standardMetadataFormatName: java.lang.String;
    var CHILD_POLICY_EMPTY: int;
    var CHILD_POLICY_ALL: int;
    var CHILD_POLICY_SOME: int;
    var CHILD_POLICY_CHOICE: int;
    var CHILD_POLICY_SEQUENCE: int;
    var CHILD_POLICY_REPEAT: int;
    var CHILD_POLICY_MAX: int;
    var VALUE_NONE: int;
    var VALUE_ARBITRARY: int;
    var VALUE_RANGE: int;
    var VALUE_RANGE_MIN_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MAX_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MIN_INCLUSIVE: int;
    var VALUE_RANGE_MAX_INCLUSIVE: int;
    var VALUE_RANGE_MIN_MAX_INCLUSIVE: int;
    var VALUE_ENUMERATION: int;
    var VALUE_LIST: int;
    var DATATYPE_STRING: int;
    var DATATYPE_BOOLEAN: int;
    var DATATYPE_INTEGER: int;
    var DATATYPE_FLOAT: int;
    var DATATYPE_DOUBLE: int;
}

type com.sun.imageio.plugins.jpeg.COMMarkerSegment {
}

type com.sun.imageio.plugins.jpeg.JPEGMetadataFormat {
    var standardMetadataFormatName: java.lang.String;
    var CHILD_POLICY_EMPTY: int;
    var CHILD_POLICY_ALL: int;
    var CHILD_POLICY_SOME: int;
    var CHILD_POLICY_CHOICE: int;
    var CHILD_POLICY_SEQUENCE: int;
    var CHILD_POLICY_REPEAT: int;
    var CHILD_POLICY_MAX: int;
    var VALUE_NONE: int;
    var VALUE_ARBITRARY: int;
    var VALUE_RANGE: int;
    var VALUE_RANGE_MIN_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MAX_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MIN_INCLUSIVE: int;
    var VALUE_RANGE_MAX_INCLUSIVE: int;
    var VALUE_RANGE_MIN_MAX_INCLUSIVE: int;
    var VALUE_ENUMERATION: int;
    var VALUE_LIST: int;
    var DATATYPE_STRING: int;
    var DATATYPE_BOOLEAN: int;
    var DATATYPE_INTEGER: int;
    var DATATYPE_FLOAT: int;
    var DATATYPE_DOUBLE: int;
}

type com.sun.imageio.plugins.jpeg.AdobeMarkerSegment {
}

type com.sun.imageio.plugins.jpeg.JPEGImageWriter {
}

type com.sun.imageio.plugins.jpeg.JFIFMarkerSegment {
}

type com.sun.imageio.plugins.jpeg.JPEG {
    var TEM: int;
    var SOF0: int;
    var SOF1: int;
    var SOF2: int;
    var SOF3: int;
    var DHT: int;
    var SOF5: int;
    var SOF6: int;
    var SOF7: int;
    var JPG: int;
    var SOF9: int;
    var SOF10: int;
    var SOF11: int;
    var DAC: int;
    var SOF13: int;
    var SOF14: int;
    var SOF15: int;
    var RST0: int;
    var RST1: int;
    var RST2: int;
    var RST3: int;
    var RST4: int;
    var RST5: int;
    var RST6: int;
    var RST7: int;
    var RESTART_RANGE: int;
    var SOI: int;
    var EOI: int;
    var SOS: int;
    var DQT: int;
    var DNL: int;
    var DRI: int;
    var DHP: int;
    var EXP: int;
    var APP0: int;
    var APP1: int;
    var APP2: int;
    var APP3: int;
    var APP4: int;
    var APP5: int;
    var APP6: int;
    var APP7: int;
    var APP8: int;
    var APP9: int;
    var APP10: int;
    var APP11: int;
    var APP12: int;
    var APP13: int;
    var APP14: int;
    var APP15: int;
    var COM: int;
    var DENSITY_UNIT_ASPECT_RATIO: int;
    var DENSITY_UNIT_DOTS_INCH: int;
    var DENSITY_UNIT_DOTS_CM: int;
    var NUM_DENSITY_UNIT: int;
    var ADOBE_IMPOSSIBLE: int;
    var ADOBE_UNKNOWN: int;
    var ADOBE_YCC: int;
    var ADOBE_YCCK: int;
    var vendor: java.lang.String;
    var `version`: java.lang.String;
    var nativeImageMetadataFormatName: java.lang.String;
    var nativeImageMetadataFormatClassName: java.lang.String;
    var nativeStreamMetadataFormatName: java.lang.String;
    var nativeStreamMetadataFormatClassName: java.lang.String;
    var JCS_UNKNOWN: int;
    var JCS_GRAYSCALE: int;
    var JCS_RGB: int;
    var JCS_YCbCr: int;
    var JCS_CMYK: int;
    var JCS_YCCK: int;
    var NUM_JCS_CODES: int;
    var DEFAULT_QUALITY: float;
}

type com.sun.imageio.plugins.jpeg.JPEGImageReaderResources {
}

type com.sun.imageio.plugins.bmp.BMPImageWriter {
    var VERSION_2: java.lang.String;
    var VERSION_3: java.lang.String;
    var VERSION_3_NT: java.lang.String;
    var VERSION_3_EXT: java.lang.String;
    var VERSION_4: java.lang.String;
    var VERSION_5: java.lang.String;
    var LCS_CALIBRATED_RGB: int;
    var LCS_sRGB: int;
    var LCS_WINDOWS_COLOR_SPACE: int;
    var PROFILE_LINKED: int;
    var PROFILE_EMBEDDED: int;
    var BI_RGB: int;
    var BI_RLE8: int;
    var BI_RLE4: int;
    var BI_BITFIELDS: int;
    var BI_JPEG: int;
    var BI_PNG: int;
}

type com.sun.imageio.plugins.bmp.BMPConstants {
    var VERSION_2: java.lang.String;
    var VERSION_3: java.lang.String;
    var VERSION_3_NT: java.lang.String;
    var VERSION_3_EXT: java.lang.String;
    var VERSION_4: java.lang.String;
    var VERSION_5: java.lang.String;
    var LCS_CALIBRATED_RGB: int;
    var LCS_sRGB: int;
    var LCS_WINDOWS_COLOR_SPACE: int;
    var PROFILE_LINKED: int;
    var PROFILE_EMBEDDED: int;
    var BI_RGB: int;
    var BI_RLE8: int;
    var BI_RLE4: int;
    var BI_BITFIELDS: int;
    var BI_JPEG: int;
    var BI_PNG: int;
}

type com.sun.imageio.plugins.bmp.BMPMetadataFormatResources {
}

type com.sun.imageio.plugins.bmp.BMPMetadataFormat {
    var standardMetadataFormatName: java.lang.String;
    var CHILD_POLICY_EMPTY: int;
    var CHILD_POLICY_ALL: int;
    var CHILD_POLICY_SOME: int;
    var CHILD_POLICY_CHOICE: int;
    var CHILD_POLICY_SEQUENCE: int;
    var CHILD_POLICY_REPEAT: int;
    var CHILD_POLICY_MAX: int;
    var VALUE_NONE: int;
    var VALUE_ARBITRARY: int;
    var VALUE_RANGE: int;
    var VALUE_RANGE_MIN_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MAX_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MIN_INCLUSIVE: int;
    var VALUE_RANGE_MAX_INCLUSIVE: int;
    var VALUE_RANGE_MIN_MAX_INCLUSIVE: int;
    var VALUE_ENUMERATION: int;
    var VALUE_LIST: int;
    var DATATYPE_STRING: int;
    var DATATYPE_BOOLEAN: int;
    var DATATYPE_INTEGER: int;
    var DATATYPE_FLOAT: int;
    var DATATYPE_DOUBLE: int;
}

type com.sun.imageio.plugins.bmp.BMPCompressionTypes {
}

type com.sun.imageio.plugins.bmp.BMPImageWriterSpi {
    var STANDARD_OUTPUT_TYPE: array<java.lang.Class>;
}

type com.sun.imageio.plugins.bmp.BMPImageReaderSpi {
    var STANDARD_INPUT_TYPE: array<java.lang.Class>;
}

type com.sun.imageio.plugins.bmp.BMPMetadata {
    var nativeMetadataFormatName: java.lang.String;
    var bmpVersion: java.lang.String;
    var width: int;
    var height: int;
    var bitsPerPixel: short;
    var compression: int;
    var imageSize: int;
    var xPixelsPerMeter: int;
    var yPixelsPerMeter: int;
    var colorsUsed: int;
    var colorsImportant: int;
    var redMask: int;
    var greenMask: int;
    var blueMask: int;
    var alphaMask: int;
    var colorSpace: int;
    var redX: double;
    var redY: double;
    var redZ: double;
    var greenX: double;
    var greenY: double;
    var greenZ: double;
    var blueX: double;
    var blueY: double;
    var blueZ: double;
    var gammaRed: int;
    var gammaGreen: int;
    var gammaBlue: int;
    var intent: int;
    var palette: array<byte>;
    var paletteSize: int;
    var red: int;
    var green: int;
    var blue: int;
    var VERSION_2: java.lang.String;
    var VERSION_3: java.lang.String;
    var VERSION_3_NT: java.lang.String;
    var VERSION_3_EXT: java.lang.String;
    var VERSION_4: java.lang.String;
    var VERSION_5: java.lang.String;
    var LCS_CALIBRATED_RGB: int;
    var LCS_sRGB: int;
    var LCS_WINDOWS_COLOR_SPACE: int;
    var PROFILE_LINKED: int;
    var PROFILE_EMBEDDED: int;
    var BI_RGB: int;
    var BI_RLE8: int;
    var BI_RLE4: int;
    var BI_BITFIELDS: int;
    var BI_JPEG: int;
    var BI_PNG: int;
}

type com.sun.imageio.plugins.bmp.BMPImageReader {
    var VERSION_2: java.lang.String;
    var VERSION_3: java.lang.String;
    var VERSION_3_NT: java.lang.String;
    var VERSION_3_EXT: java.lang.String;
    var VERSION_4: java.lang.String;
    var VERSION_5: java.lang.String;
    var LCS_CALIBRATED_RGB: int;
    var LCS_sRGB: int;
    var LCS_WINDOWS_COLOR_SPACE: int;
    var PROFILE_LINKED: int;
    var PROFILE_EMBEDDED: int;
    var BI_RGB: int;
    var BI_RLE8: int;
    var BI_RLE4: int;
    var BI_BITFIELDS: int;
    var BI_JPEG: int;
    var BI_PNG: int;
}

type com.sun.imageio.plugins.tiff.TIFFDeflater {
}

type com.sun.imageio.plugins.tiff.TIFFElementInfo {
}

type com.sun.imageio.plugins.tiff.TIFFFieldNode {
    var ELEMENT_NODE: short;
    var ATTRIBUTE_NODE: short;
    var TEXT_NODE: short;
    var CDATA_SECTION_NODE: short;
    var ENTITY_REFERENCE_NODE: short;
    var ENTITY_NODE: short;
    var PROCESSING_INSTRUCTION_NODE: short;
    var COMMENT_NODE: short;
    var DOCUMENT_NODE: short;
    var DOCUMENT_TYPE_NODE: short;
    var DOCUMENT_FRAGMENT_NODE: short;
    var NOTATION_NODE: short;
    var DOCUMENT_POSITION_DISCONNECTED: short;
    var DOCUMENT_POSITION_PRECEDING: short;
    var DOCUMENT_POSITION_FOLLOWING: short;
    var DOCUMENT_POSITION_CONTAINS: short;
    var DOCUMENT_POSITION_CONTAINED_BY: short;
    var DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: short;
}

type com.sun.imageio.plugins.tiff.TIFFT4Compressor {
}

type com.sun.imageio.plugins.tiff.TIFFAttrInfo {
}

type com.sun.imageio.plugins.tiff.TIFFImageReaderSpi {
    var STANDARD_INPUT_TYPE: array<java.lang.Class>;
}

type com.sun.imageio.plugins.tiff.TIFFImageMetadataFormat {
    var CHILD_POLICY_EMPTY: int;
    var CHILD_POLICY_ALL: int;
    var CHILD_POLICY_SOME: int;
    var CHILD_POLICY_CHOICE: int;
    var CHILD_POLICY_SEQUENCE: int;
    var CHILD_POLICY_REPEAT: int;
    var CHILD_POLICY_MAX: int;
    var VALUE_NONE: int;
    var VALUE_ARBITRARY: int;
    var VALUE_RANGE: int;
    var VALUE_RANGE_MIN_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MAX_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MIN_INCLUSIVE: int;
    var VALUE_RANGE_MAX_INCLUSIVE: int;
    var VALUE_RANGE_MIN_MAX_INCLUSIVE: int;
    var VALUE_ENUMERATION: int;
    var VALUE_LIST: int;
    var DATATYPE_STRING: int;
    var DATATYPE_BOOLEAN: int;
    var DATATYPE_INTEGER: int;
    var DATATYPE_FLOAT: int;
    var DATATYPE_DOUBLE: int;
}

type com.sun.imageio.plugins.tiff.TIFFPackBitsUtil {
}

type com.sun.imageio.plugins.tiff.TIFFImageWriterSpi {
    var STANDARD_OUTPUT_TYPE: array<java.lang.Class>;
}

type com.sun.imageio.plugins.tiff.TIFFYCbCrDecompressor {
}

type com.sun.imageio.plugins.tiff.TIFFStreamMetadataFormat {
    var CHILD_POLICY_EMPTY: int;
    var CHILD_POLICY_ALL: int;
    var CHILD_POLICY_SOME: int;
    var CHILD_POLICY_CHOICE: int;
    var CHILD_POLICY_SEQUENCE: int;
    var CHILD_POLICY_REPEAT: int;
    var CHILD_POLICY_MAX: int;
    var VALUE_NONE: int;
    var VALUE_ARBITRARY: int;
    var VALUE_RANGE: int;
    var VALUE_RANGE_MIN_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MAX_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MIN_INCLUSIVE: int;
    var VALUE_RANGE_MAX_INCLUSIVE: int;
    var VALUE_RANGE_MIN_MAX_INCLUSIVE: int;
    var VALUE_ENUMERATION: int;
    var VALUE_LIST: int;
    var DATATYPE_STRING: int;
    var DATATYPE_BOOLEAN: int;
    var DATATYPE_INTEGER: int;
    var DATATYPE_FLOAT: int;
    var DATATYPE_DOUBLE: int;
}

type com.sun.imageio.plugins.tiff.TIFFDeflateDecompressor {
}

type com.sun.imageio.plugins.tiff.TIFFLZWCompressor {
}

type com.sun.imageio.plugins.tiff.TIFFLSBDecompressor {
}

type com.sun.imageio.plugins.tiff.EmptyImage {
}

type com.sun.imageio.plugins.tiff.TIFFPackBitsCompressor {
}

type com.sun.imageio.plugins.tiff.TIFFLZWDecompressor {
}

type com.sun.imageio.plugins.tiff.TIFFColorConverter {
}

type com.sun.imageio.plugins.tiff.TIFFImageMetadataFormatResources {
}

type com.sun.imageio.plugins.tiff.TIFFPackBitsDecompressor {
}

type com.sun.imageio.plugins.tiff.TIFFIFD {
}

type com.sun.imageio.plugins.tiff.TIFFImageReader {
}

type com.sun.imageio.plugins.tiff.TIFFImageMetadata {
    var NATIVE_METADATA_FORMAT_NAME: java.lang.String;
    var NATIVE_METADATA_FORMAT_CLASS_NAME: java.lang.String;
}

type com.sun.imageio.plugins.tiff.TIFFFaxDecompressor {
}

type com.sun.imageio.plugins.tiff.TIFFJPEGCompressor {
}

type com.sun.imageio.plugins.tiff.TIFFDecompressor {
}

type com.sun.imageio.plugins.tiff.TIFFImageWriteParam {
    var MODE_DISABLED: int;
    var MODE_DEFAULT: int;
    var MODE_EXPLICIT: int;
    var MODE_COPY_FROM_METADATA: int;
}

type com.sun.imageio.plugins.tiff.TIFFYCbCrColorConverter {
}

type com.sun.imageio.plugins.tiff.TIFFImageWriter {
}

type com.sun.imageio.plugins.tiff.TIFFStreamMetadataFormatResources {
}

type com.sun.imageio.plugins.tiff.TIFFCompressor {
}

type com.sun.imageio.plugins.tiff.TIFFBaseJPEGCompressor {
}

type com.sun.imageio.plugins.tiff.TIFFDeflateCompressor {
}

type com.sun.imageio.plugins.tiff.TIFFZLibCompressor {
}

type com.sun.imageio.plugins.tiff.TIFFNullDecompressor {
}

type com.sun.imageio.plugins.tiff.TIFFOldJPEGDecompressor {
}

type com.sun.imageio.plugins.tiff.TIFFRenderedImage {
}

type com.sun.imageio.plugins.tiff.TIFFStreamMetadata {
    var byteOrder: java.nio.ByteOrder;
}

type com.sun.imageio.plugins.tiff.TIFFMetadataFormat {
    var CHILD_POLICY_EMPTY: int;
    var CHILD_POLICY_ALL: int;
    var CHILD_POLICY_SOME: int;
    var CHILD_POLICY_CHOICE: int;
    var CHILD_POLICY_SEQUENCE: int;
    var CHILD_POLICY_REPEAT: int;
    var CHILD_POLICY_MAX: int;
    var VALUE_NONE: int;
    var VALUE_ARBITRARY: int;
    var VALUE_RANGE: int;
    var VALUE_RANGE_MIN_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MAX_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MIN_INCLUSIVE: int;
    var VALUE_RANGE_MAX_INCLUSIVE: int;
    var VALUE_RANGE_MIN_MAX_INCLUSIVE: int;
    var VALUE_ENUMERATION: int;
    var VALUE_LIST: int;
    var DATATYPE_STRING: int;
    var DATATYPE_BOOLEAN: int;
    var DATATYPE_INTEGER: int;
    var DATATYPE_FLOAT: int;
    var DATATYPE_DOUBLE: int;
}

type com.sun.imageio.plugins.tiff.TIFFLSBCompressor {
}

type com.sun.imageio.plugins.tiff.TIFFNullCompressor {
}

type com.sun.imageio.plugins.tiff.TIFFJPEGDecompressor {
}

type com.sun.imageio.plugins.tiff.TIFFCIELabColorConverter {
}

type com.sun.imageio.plugins.tiff.TIFFT6Compressor {
}

type com.sun.imageio.plugins.tiff.TIFFRLECompressor {
}

type com.sun.imageio.plugins.tiff.TIFFFaxCompressor {
}

type com.sun.imageio.plugins.tiff.TIFFExifJPEGCompressor {
}

type com.sun.imageio.plugins.tiff.TIFFLZWUtil {
}

type com.sun.imageio.plugins.gif.GIFImageWriteParam {
    var MODE_DISABLED: int;
    var MODE_DEFAULT: int;
    var MODE_EXPLICIT: int;
    var MODE_COPY_FROM_METADATA: int;
}

type com.sun.imageio.plugins.gif.GIFImageReader {
}

type com.sun.imageio.plugins.gif.GIFImageReaderSpi {
    var STANDARD_INPUT_TYPE: array<java.lang.Class>;
}

type com.sun.imageio.plugins.gif.GIFStreamMetadataFormat {
    var standardMetadataFormatName: java.lang.String;
    var CHILD_POLICY_EMPTY: int;
    var CHILD_POLICY_ALL: int;
    var CHILD_POLICY_SOME: int;
    var CHILD_POLICY_CHOICE: int;
    var CHILD_POLICY_SEQUENCE: int;
    var CHILD_POLICY_REPEAT: int;
    var CHILD_POLICY_MAX: int;
    var VALUE_NONE: int;
    var VALUE_ARBITRARY: int;
    var VALUE_RANGE: int;
    var VALUE_RANGE_MIN_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MAX_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MIN_INCLUSIVE: int;
    var VALUE_RANGE_MAX_INCLUSIVE: int;
    var VALUE_RANGE_MIN_MAX_INCLUSIVE: int;
    var VALUE_ENUMERATION: int;
    var VALUE_LIST: int;
    var DATATYPE_STRING: int;
    var DATATYPE_BOOLEAN: int;
    var DATATYPE_INTEGER: int;
    var DATATYPE_FLOAT: int;
    var DATATYPE_DOUBLE: int;
}

type com.sun.imageio.plugins.gif.GIFImageWriterSpi {
    var STANDARD_OUTPUT_TYPE: array<java.lang.Class>;
}

type com.sun.imageio.plugins.gif.GIFMetadata {
}

type com.sun.imageio.plugins.gif.GIFStreamMetadataFormatResources {
}

type com.sun.imageio.plugins.gif.GIFImageMetadataFormat {
    var standardMetadataFormatName: java.lang.String;
    var CHILD_POLICY_EMPTY: int;
    var CHILD_POLICY_ALL: int;
    var CHILD_POLICY_SOME: int;
    var CHILD_POLICY_CHOICE: int;
    var CHILD_POLICY_SEQUENCE: int;
    var CHILD_POLICY_REPEAT: int;
    var CHILD_POLICY_MAX: int;
    var VALUE_NONE: int;
    var VALUE_ARBITRARY: int;
    var VALUE_RANGE: int;
    var VALUE_RANGE_MIN_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MAX_INCLUSIVE_MASK: int;
    var VALUE_RANGE_MIN_INCLUSIVE: int;
    var VALUE_RANGE_MAX_INCLUSIVE: int;
    var VALUE_RANGE_MIN_MAX_INCLUSIVE: int;
    var VALUE_ENUMERATION: int;
    var VALUE_LIST: int;
    var DATATYPE_STRING: int;
    var DATATYPE_BOOLEAN: int;
    var DATATYPE_INTEGER: int;
    var DATATYPE_FLOAT: int;
    var DATATYPE_DOUBLE: int;
}

type com.sun.imageio.plugins.gif.GIFWritableStreamMetadata {
    var `version`: java.lang.String;
    var logicalScreenWidth: int;
    var logicalScreenHeight: int;
    var colorResolution: int;
    var pixelAspectRatio: int;
    var backgroundColorIndex: int;
    var sortFlag: boolean;
    var globalColorTable: array<byte>;
}

type com.sun.imageio.plugins.gif.GIFImageMetadataFormatResources {
}

type com.sun.imageio.plugins.gif.GIFWritableImageMetadata {
    var imageLeftPosition: int;
    var imageTopPosition: int;
    var imageWidth: int;
    var imageHeight: int;
    var interlaceFlag: boolean;
    var sortFlag: boolean;
    var localColorTable: array<byte>;
    var disposalMethod: int;
    var userInputFlag: boolean;
    var transparentColorFlag: boolean;
    var delayTime: int;
    var transparentColorIndex: int;
    var hasPlainTextExtension: boolean;
    var textGridLeft: int;
    var textGridTop: int;
    var textGridWidth: int;
    var textGridHeight: int;
    var characterCellWidth: int;
    var characterCellHeight: int;
    var textForegroundColor: int;
    var textBackgroundColor: int;
    var text: array<byte>;
    var applicationIDs: java.util.List;
    var authenticationCodes: java.util.List;
    var applicationData: java.util.List;
    var comments: java.util.List;
}

type com.sun.imageio.plugins.gif.GIFImageMetadata {
    var imageLeftPosition: int;
    var imageTopPosition: int;
    var imageWidth: int;
    var imageHeight: int;
    var interlaceFlag: boolean;
    var sortFlag: boolean;
    var localColorTable: array<byte>;
    var disposalMethod: int;
    var userInputFlag: boolean;
    var transparentColorFlag: boolean;
    var delayTime: int;
    var transparentColorIndex: int;
    var hasPlainTextExtension: boolean;
    var textGridLeft: int;
    var textGridTop: int;
    var textGridWidth: int;
    var textGridHeight: int;
    var characterCellWidth: int;
    var characterCellHeight: int;
    var textForegroundColor: int;
    var textBackgroundColor: int;
    var text: array<byte>;
    var applicationIDs: java.util.List;
    var authenticationCodes: java.util.List;
    var applicationData: java.util.List;
    var comments: java.util.List;
}

type com.sun.imageio.plugins.gif.GIFStreamMetadata {
    var `version`: java.lang.String;
    var logicalScreenWidth: int;
    var logicalScreenHeight: int;
    var colorResolution: int;
    var pixelAspectRatio: int;
    var backgroundColorIndex: int;
    var sortFlag: boolean;
    var globalColorTable: array<byte>;
}

type com.sun.imageio.plugins.gif.GIFImageWriter {
}

type com.sun.imageio.stream.StreamCloser {
}

type com.sun.imageio.stream.StreamFinalizer {
}

type com.sun.imageio.stream.CloseableDisposerRecord {
}

type com.sun.imageio.spi.RAFImageOutputStreamSpi {
}

type com.sun.imageio.spi.RAFImageInputStreamSpi {
}

type com.sun.imageio.spi.OutputStreamImageOutputStreamSpi {
}

type com.sun.imageio.spi.FileImageInputStreamSpi {
}

type com.sun.imageio.spi.FileImageOutputStreamSpi {
}

type com.sun.imageio.spi.InputStreamImageInputStreamSpi {
}

type com.sun.beans.util.Cache {
}

type com.sun.beans.introspect.MethodInfo {
}

type com.sun.beans.introspect.ClassInfo {
}

type com.sun.beans.introspect.EventSetInfo {
}

type com.sun.beans.introspect.PropertyInfo {
}

type com.sun.beans.editors.NumberEditor {
}

type com.sun.beans.editors.FloatEditor {
}

type com.sun.beans.editors.ShortEditor {
}

type com.sun.beans.editors.ColorEditor {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type com.sun.beans.editors.BooleanEditor {
}

type com.sun.beans.editors.ByteEditor {
}

type com.sun.beans.editors.LongEditor {
}

type com.sun.beans.editors.IntegerEditor {
}

type com.sun.beans.editors.EnumEditor {
}

type com.sun.beans.editors.DoubleEditor {
}

type com.sun.beans.editors.StringEditor {
}

type com.sun.beans.editors.FontEditor {
    var TOP_ALIGNMENT: float;
    var CENTER_ALIGNMENT: float;
    var BOTTOM_ALIGNMENT: float;
    var LEFT_ALIGNMENT: float;
    var RIGHT_ALIGNMENT: float;
    var WIDTH: int;
    var HEIGHT: int;
    var PROPERTIES: int;
    var SOMEBITS: int;
    var FRAMEBITS: int;
    var ALLBITS: int;
    var ERROR: int;
    var ABORT: int;
}

type com.sun.beans.decoder.ByteElementHandler {
}

type com.sun.beans.decoder.ObjectElementHandler {
}

type com.sun.beans.decoder.ElementHandler {
}

type com.sun.beans.decoder.TrueElementHandler {
}

type com.sun.beans.decoder.MethodElementHandler {
}

type com.sun.beans.decoder.ShortElementHandler {
}

type com.sun.beans.decoder.PropertyElementHandler {
}

type com.sun.beans.decoder.IntElementHandler {
}

type com.sun.beans.decoder.AccessorElementHandler {
}

type com.sun.beans.decoder.CharElementHandler {
}

type com.sun.beans.decoder.ValueObject {
}

type com.sun.beans.decoder.JavaElementHandler {
}

type com.sun.beans.decoder.StringElementHandler {
}

type com.sun.beans.decoder.ArrayElementHandler {
}

type com.sun.beans.decoder.FieldElementHandler {
}

type com.sun.beans.decoder.DoubleElementHandler {
}

type com.sun.beans.decoder.VarElementHandler {
}

type com.sun.beans.decoder.ValueObjectImpl {
}

type com.sun.beans.decoder.FloatElementHandler {
}

type com.sun.beans.decoder.VoidElementHandler {
}

type com.sun.beans.decoder.NewElementHandler {
}

type com.sun.beans.decoder.ClassElementHandler {
}

type com.sun.beans.decoder.NullElementHandler {
}

type com.sun.beans.decoder.LongElementHandler {
}

type com.sun.beans.decoder.BooleanElementHandler {
}

type com.sun.beans.decoder.DocumentHandler {
}

type com.sun.beans.decoder.FalseElementHandler {
}

type com.sun.beans.WeakCache {
}

type com.sun.beans.WildcardTypeImpl {
}

type com.sun.beans.infos.ComponentBeanInfo {
    var ICON_COLOR_16x16: int;
    var ICON_COLOR_32x32: int;
    var ICON_MONO_16x16: int;
    var ICON_MONO_32x32: int;
}

type com.sun.beans.finder.PrimitiveTypeMap {
}

type com.sun.beans.finder.ClassFinder {
}

type com.sun.beans.finder.BeanInfoFinder {
}

type com.sun.beans.finder.FieldFinder {
}

type com.sun.beans.finder.SignatureException {
}

type com.sun.beans.finder.Signature {
}

type com.sun.beans.finder.PropertyEditorFinder {
}

type com.sun.beans.finder.PrimitiveWrapperMap {
}

type com.sun.beans.finder.MethodFinder {
}

type com.sun.beans.finder.PersistenceDelegateFinder {
}

type com.sun.beans.finder.AbstractFinder {
}

type com.sun.beans.finder.FinderUtils {
}

type com.sun.beans.finder.InstanceFinder {
}

type com.sun.beans.finder.ConstructorFinder {
}

type com.sun.beans.TypeResolver {
}

type com.sun.accessibility.internal.resources.accessibility_fr {
}

type com.sun.accessibility.internal.resources.accessibility_zh_TW {
}

type com.sun.accessibility.internal.resources.accessibility_zh_HK {
}

type com.sun.accessibility.internal.resources.accessibility {
}

type com.sun.accessibility.internal.resources.accessibility_it {
}

type com.sun.accessibility.internal.resources.accessibility_sv {
}

type com.sun.accessibility.internal.resources.accessibility_ko {
}

type com.sun.accessibility.internal.resources.accessibility_pt_BR {
}

type com.sun.accessibility.internal.resources.accessibility_de {
}

type com.sun.accessibility.internal.resources.accessibility_ja {
}

type com.sun.accessibility.internal.resources.accessibility_en {
}

type com.sun.accessibility.internal.resources.accessibility_zh_CN {
}

type com.sun.accessibility.internal.resources.accessibility_es {
}

type com.sun.media.sound.AudioFloatFormatConverter {
}

type com.sun.media.sound.RIFFInvalidDataException {
}

type com.sun.media.sound.SoftMixingMixer {
}

type com.sun.media.sound.JSSecurityManager {
}

type com.sun.media.sound.SoftJitterCorrector {
}

type com.sun.media.sound.PCMtoPCMCodec {
}

type com.sun.media.sound.MidiDeviceReceiverEnvelope {
}

type com.sun.media.sound.MidiInDevice {
}

type com.sun.media.sound.ModelOscillatorStream {
}

type com.sun.media.sound.ModelTransform {
}

type com.sun.media.sound.MidiDeviceTransmitterEnvelope {
}

type com.sun.media.sound.ModelInstrument {
}

type com.sun.media.sound.ModelDirectedPlayer {
}

type com.sun.media.sound.RIFFReader {
}

type com.sun.media.sound.SF2LayerRegion {
    var GENERATOR_STARTADDRSOFFSET: int;
    var GENERATOR_ENDADDRSOFFSET: int;
    var GENERATOR_STARTLOOPADDRSOFFSET: int;
    var GENERATOR_ENDLOOPADDRSOFFSET: int;
    var GENERATOR_STARTADDRSCOARSEOFFSET: int;
    var GENERATOR_MODLFOTOPITCH: int;
    var GENERATOR_VIBLFOTOPITCH: int;
    var GENERATOR_MODENVTOPITCH: int;
    var GENERATOR_INITIALFILTERFC: int;
    var GENERATOR_INITIALFILTERQ: int;
    var GENERATOR_MODLFOTOFILTERFC: int;
    var GENERATOR_MODENVTOFILTERFC: int;
    var GENERATOR_ENDADDRSCOARSEOFFSET: int;
    var GENERATOR_MODLFOTOVOLUME: int;
    var GENERATOR_UNUSED1: int;
    var GENERATOR_CHORUSEFFECTSSEND: int;
    var GENERATOR_REVERBEFFECTSSEND: int;
    var GENERATOR_PAN: int;
    var GENERATOR_UNUSED2: int;
    var GENERATOR_UNUSED3: int;
    var GENERATOR_UNUSED4: int;
    var GENERATOR_DELAYMODLFO: int;
    var GENERATOR_FREQMODLFO: int;
    var GENERATOR_DELAYVIBLFO: int;
    var GENERATOR_FREQVIBLFO: int;
    var GENERATOR_DELAYMODENV: int;
    var GENERATOR_ATTACKMODENV: int;
    var GENERATOR_HOLDMODENV: int;
    var GENERATOR_DECAYMODENV: int;
    var GENERATOR_SUSTAINMODENV: int;
    var GENERATOR_RELEASEMODENV: int;
    var GENERATOR_KEYNUMTOMODENVHOLD: int;
    var GENERATOR_KEYNUMTOMODENVDECAY: int;
    var GENERATOR_DELAYVOLENV: int;
    var GENERATOR_ATTACKVOLENV: int;
    var GENERATOR_HOLDVOLENV: int;
    var GENERATOR_DECAYVOLENV: int;
    var GENERATOR_SUSTAINVOLENV: int;
    var GENERATOR_RELEASEVOLENV: int;
    var GENERATOR_KEYNUMTOVOLENVHOLD: int;
    var GENERATOR_KEYNUMTOVOLENVDECAY: int;
    var GENERATOR_INSTRUMENT: int;
    var GENERATOR_RESERVED1: int;
    var GENERATOR_KEYRANGE: int;
    var GENERATOR_VELRANGE: int;
    var GENERATOR_STARTLOOPADDRSCOARSEOFFSET: int;
    var GENERATOR_KEYNUM: int;
    var GENERATOR_VELOCITY: int;
    var GENERATOR_INITIALATTENUATION: int;
    var GENERATOR_RESERVED2: int;
    var GENERATOR_ENDLOOPADDRSCOARSEOFFSET: int;
    var GENERATOR_COARSETUNE: int;
    var GENERATOR_FINETUNE: int;
    var GENERATOR_SAMPLEID: int;
    var GENERATOR_SAMPLEMODES: int;
    var GENERATOR_RESERVED3: int;
    var GENERATOR_SCALETUNING: int;
    var GENERATOR_EXCLUSIVECLASS: int;
    var GENERATOR_OVERRIDINGROOTKEY: int;
    var GENERATOR_UNUSED5: int;
    var GENERATOR_ENDOPR: int;
}

type com.sun.media.sound.InvalidDataException {
}

type com.sun.media.sound.SoftMixingMixerProvider {
}

type com.sun.media.sound.ModelByteBufferWavetable {
    var LOOP_TYPE_OFF: int;
    var LOOP_TYPE_FORWARD: int;
    var LOOP_TYPE_RELEASE: int;
    var LOOP_TYPE_PINGPONG: int;
    var LOOP_TYPE_REVERSE: int;
}

type com.sun.media.sound.SoftLinearResampler {
}

type com.sun.media.sound.ModelPatch {
}

type com.sun.media.sound.SoftPerformer {
    var keyFrom: int;
    var keyTo: int;
    var velFrom: int;
    var velTo: int;
    var exclusiveClass: int;
    var selfNonExclusive: boolean;
    var forcedVelocity: boolean;
    var forcedKeynumber: boolean;
    var performer: com.sun.media.sound.ModelPerformer;
    var connections: array<com.sun.media.sound.ModelConnectionBlock>;
    var oscillators: array<com.sun.media.sound.ModelOscillator>;
    var midi_rpn_connections: java.util.Map;
    var midi_nrpn_connections: java.util.Map;
    var midi_ctrl_connections: array<array<int>>;
    var midi_connections: array<array<int>>;
    var ctrl_connections: array<int>;
}

type com.sun.media.sound.AbstractDataLine {
}

type com.sun.media.sound.AuFileFormat {
}

type com.sun.media.sound.SF2GlobalRegion {
    var GENERATOR_STARTADDRSOFFSET: int;
    var GENERATOR_ENDADDRSOFFSET: int;
    var GENERATOR_STARTLOOPADDRSOFFSET: int;
    var GENERATOR_ENDLOOPADDRSOFFSET: int;
    var GENERATOR_STARTADDRSCOARSEOFFSET: int;
    var GENERATOR_MODLFOTOPITCH: int;
    var GENERATOR_VIBLFOTOPITCH: int;
    var GENERATOR_MODENVTOPITCH: int;
    var GENERATOR_INITIALFILTERFC: int;
    var GENERATOR_INITIALFILTERQ: int;
    var GENERATOR_MODLFOTOFILTERFC: int;
    var GENERATOR_MODENVTOFILTERFC: int;
    var GENERATOR_ENDADDRSCOARSEOFFSET: int;
    var GENERATOR_MODLFOTOVOLUME: int;
    var GENERATOR_UNUSED1: int;
    var GENERATOR_CHORUSEFFECTSSEND: int;
    var GENERATOR_REVERBEFFECTSSEND: int;
    var GENERATOR_PAN: int;
    var GENERATOR_UNUSED2: int;
    var GENERATOR_UNUSED3: int;
    var GENERATOR_UNUSED4: int;
    var GENERATOR_DELAYMODLFO: int;
    var GENERATOR_FREQMODLFO: int;
    var GENERATOR_DELAYVIBLFO: int;
    var GENERATOR_FREQVIBLFO: int;
    var GENERATOR_DELAYMODENV: int;
    var GENERATOR_ATTACKMODENV: int;
    var GENERATOR_HOLDMODENV: int;
    var GENERATOR_DECAYMODENV: int;
    var GENERATOR_SUSTAINMODENV: int;
    var GENERATOR_RELEASEMODENV: int;
    var GENERATOR_KEYNUMTOMODENVHOLD: int;
    var GENERATOR_KEYNUMTOMODENVDECAY: int;
    var GENERATOR_DELAYVOLENV: int;
    var GENERATOR_ATTACKVOLENV: int;
    var GENERATOR_HOLDVOLENV: int;
    var GENERATOR_DECAYVOLENV: int;
    var GENERATOR_SUSTAINVOLENV: int;
    var GENERATOR_RELEASEVOLENV: int;
    var GENERATOR_KEYNUMTOVOLENVHOLD: int;
    var GENERATOR_KEYNUMTOVOLENVDECAY: int;
    var GENERATOR_INSTRUMENT: int;
    var GENERATOR_RESERVED1: int;
    var GENERATOR_KEYRANGE: int;
    var GENERATOR_VELRANGE: int;
    var GENERATOR_STARTLOOPADDRSCOARSEOFFSET: int;
    var GENERATOR_KEYNUM: int;
    var GENERATOR_VELOCITY: int;
    var GENERATOR_INITIALATTENUATION: int;
    var GENERATOR_RESERVED2: int;
    var GENERATOR_ENDLOOPADDRSCOARSEOFFSET: int;
    var GENERATOR_COARSETUNE: int;
    var GENERATOR_FINETUNE: int;
    var GENERATOR_SAMPLEID: int;
    var GENERATOR_SAMPLEMODES: int;
    var GENERATOR_RESERVED3: int;
    var GENERATOR_SCALETUNING: int;
    var GENERATOR_EXCLUSIVECLASS: int;
    var GENERATOR_OVERRIDINGROOTKEY: int;
    var GENERATOR_UNUSED5: int;
    var GENERATOR_ENDOPR: int;
}

type com.sun.media.sound.ModelByteBuffer {
}

type com.sun.media.sound.SoftAudioPusher {
}

type com.sun.media.sound.SoftAudioProcessor {
}

type com.sun.media.sound.AiffFileWriter {
}

type com.sun.media.sound.AuFileReader {
}

type com.sun.media.sound.SoftLinearResampler2 {
}

type com.sun.media.sound.SoftResampler {
}

type com.sun.media.sound.SF2Modulator {
    var SOURCE_NONE: int;
    var SOURCE_NOTE_ON_VELOCITY: int;
    var SOURCE_NOTE_ON_KEYNUMBER: int;
    var SOURCE_POLY_PRESSURE: int;
    var SOURCE_CHANNEL_PRESSURE: int;
    var SOURCE_PITCH_WHEEL: int;
    var SOURCE_PITCH_SENSITIVITY: int;
    var SOURCE_MIDI_CONTROL: int;
    var SOURCE_DIRECTION_MIN_MAX: int;
    var SOURCE_DIRECTION_MAX_MIN: int;
    var SOURCE_POLARITY_UNIPOLAR: int;
    var SOURCE_POLARITY_BIPOLAR: int;
    var SOURCE_TYPE_LINEAR: int;
    var SOURCE_TYPE_CONCAVE: int;
    var SOURCE_TYPE_CONVEX: int;
    var SOURCE_TYPE_SWITCH: int;
    var TRANSFORM_LINEAR: int;
    var TRANSFORM_ABSOLUTE: int;
}

type com.sun.media.sound.SoftAudioBuffer {
}

type com.sun.media.sound.SoftPointResampler {
}

type com.sun.media.sound.StandardMidiFileWriter {
}

type com.sun.media.sound.SoftProvider {
}

type com.sun.media.sound.DLSModulator {
    var CONN_DST_NONE: int;
    var CONN_DST_GAIN: int;
    var CONN_DST_PITCH: int;
    var CONN_DST_PAN: int;
    var CONN_DST_LFO_FREQUENCY: int;
    var CONN_DST_LFO_STARTDELAY: int;
    var CONN_DST_EG1_ATTACKTIME: int;
    var CONN_DST_EG1_DECAYTIME: int;
    var CONN_DST_EG1_RELEASETIME: int;
    var CONN_DST_EG1_SUSTAINLEVEL: int;
    var CONN_DST_EG2_ATTACKTIME: int;
    var CONN_DST_EG2_DECAYTIME: int;
    var CONN_DST_EG2_RELEASETIME: int;
    var CONN_DST_EG2_SUSTAINLEVEL: int;
    var CONN_DST_KEYNUMBER: int;
    var CONN_DST_LEFT: int;
    var CONN_DST_RIGHT: int;
    var CONN_DST_CENTER: int;
    var CONN_DST_LEFTREAR: int;
    var CONN_DST_RIGHTREAR: int;
    var CONN_DST_LFE_CHANNEL: int;
    var CONN_DST_CHORUS: int;
    var CONN_DST_REVERB: int;
    var CONN_DST_VIB_FREQUENCY: int;
    var CONN_DST_VIB_STARTDELAY: int;
    var CONN_DST_EG1_DELAYTIME: int;
    var CONN_DST_EG1_HOLDTIME: int;
    var CONN_DST_EG1_SHUTDOWNTIME: int;
    var CONN_DST_EG2_DELAYTIME: int;
    var CONN_DST_EG2_HOLDTIME: int;
    var CONN_DST_FILTER_CUTOFF: int;
    var CONN_DST_FILTER_Q: int;
    var CONN_SRC_NONE: int;
    var CONN_SRC_LFO: int;
    var CONN_SRC_KEYONVELOCITY: int;
    var CONN_SRC_KEYNUMBER: int;
    var CONN_SRC_EG1: int;
    var CONN_SRC_EG2: int;
    var CONN_SRC_PITCHWHEEL: int;
    var CONN_SRC_CC1: int;
    var CONN_SRC_CC7: int;
    var CONN_SRC_CC10: int;
    var CONN_SRC_CC11: int;
    var CONN_SRC_RPN0: int;
    var CONN_SRC_RPN1: int;
    var CONN_SRC_RPN2: int;
    var CONN_SRC_POLYPRESSURE: int;
    var CONN_SRC_CHANNELPRESSURE: int;
    var CONN_SRC_VIBRATO: int;
    var CONN_SRC_MONOPRESSURE: int;
    var CONN_SRC_CC91: int;
    var CONN_SRC_CC93: int;
    var CONN_TRN_NONE: int;
    var CONN_TRN_CONCAVE: int;
    var CONN_TRN_CONVEX: int;
    var CONN_TRN_SWITCH: int;
    var DST_FORMAT_CB: int;
    var DST_FORMAT_CENT: int;
    var DST_FORMAT_TIMECENT: int;
    var DST_FORMAT_PERCENT: int;
}

type com.sun.media.sound.SoftMixingDataLine {
}

type com.sun.media.sound.SoftCubicResampler {
}

type com.sun.media.sound.SoftMixingMainMixer {
    var CHANNEL_LEFT: int;
    var CHANNEL_RIGHT: int;
    var CHANNEL_EFFECT1: int;
    var CHANNEL_EFFECT2: int;
    var CHANNEL_EFFECT3: int;
    var CHANNEL_EFFECT4: int;
    var CHANNEL_LEFT_DRY: int;
    var CHANNEL_RIGHT_DRY: int;
    var CHANNEL_SCRATCH1: int;
    var CHANNEL_SCRATCH2: int;
    var CHANNEL_CHANNELMIXER_LEFT: int;
    var CHANNEL_CHANNELMIXER_RIGHT: int;
}

type com.sun.media.sound.AudioFloatConverter {
}

type com.sun.media.sound.AbstractLine {
}

type com.sun.media.sound.MidiUtils {
    var DEFAULT_TEMPO_MPQ: int;
    var META_END_OF_TRACK_TYPE: int;
    var META_TEMPO_TYPE: int;
}

type com.sun.media.sound.SoftEnvelopeGenerator {
    var EG_OFF: int;
    var EG_DELAY: int;
    var EG_ATTACK: int;
    var EG_HOLD: int;
    var EG_DECAY: int;
    var EG_SUSTAIN: int;
    var EG_RELEASE: int;
    var EG_SHUTDOWN: int;
    var EG_END: int;
}

type com.sun.media.sound.JARSoundbankReader {
}

type com.sun.media.sound.ModelWavetable {
    var LOOP_TYPE_OFF: int;
    var LOOP_TYPE_FORWARD: int;
    var LOOP_TYPE_RELEASE: int;
    var LOOP_TYPE_PINGPONG: int;
    var LOOP_TYPE_REVERSE: int;
}

type com.sun.media.sound.Toolkit {
}

type com.sun.media.sound.UlawCodec {
}

type com.sun.media.sound.SoftAbstractResampler {
}

type com.sun.media.sound.FFT {
}

type com.sun.media.sound.SimpleInstrument {
}

type com.sun.media.sound.WaveFloatFileWriter {
}

type com.sun.media.sound.AbstractMixer {
}

type com.sun.media.sound.DLSSampleLoop {
    var LOOP_TYPE_FORWARD: int;
    var LOOP_TYPE_RELEASE: int;
}

type com.sun.media.sound.ModelStandardIndexedDirector {
}

type com.sun.media.sound.SF2Instrument {
}

type com.sun.media.sound.SunFileReader {
}

type com.sun.media.sound.DLSRegion {
    var OPTION_SELFNONEXCLUSIVE: int;
}

type com.sun.media.sound.SoftInstrument {
}

type com.sun.media.sound.InvalidFormatException {
}

type com.sun.media.sound.RIFFInvalidFormatException {
}

type com.sun.media.sound.ModelAbstractOscillator {
}

type com.sun.media.sound.WaveExtensibleFileReader {
}

type com.sun.media.sound.MidiInDeviceProvider {
}

type com.sun.media.sound.FastShortMessage {
    var MIDI_TIME_CODE: int;
    var SONG_POSITION_POINTER: int;
    var SONG_SELECT: int;
    var TUNE_REQUEST: int;
    var END_OF_EXCLUSIVE: int;
    var TIMING_CLOCK: int;
    var START: int;
    var CONTINUE: int;
    var STOP: int;
    var ACTIVE_SENSING: int;
    var SYSTEM_RESET: int;
    var NOTE_OFF: int;
    var NOTE_ON: int;
    var POLY_PRESSURE: int;
    var CONTROL_CHANGE: int;
    var PROGRAM_CHANGE: int;
    var CHANNEL_PRESSURE: int;
    var PITCH_BEND: int;
}

type com.sun.media.sound.WaveFileFormat {
}

type com.sun.media.sound.SoftTuning {
}

type com.sun.media.sound.DirectAudioDeviceProvider {
}

type com.sun.media.sound.WaveFileReader {
}

type com.sun.media.sound.AbstractMidiDevice {
}

type com.sun.media.sound.SoftSincResampler {
}

type com.sun.media.sound.SF2SoundbankReader {
}

type com.sun.media.sound.AudioFileSoundbankReader {
}

type com.sun.media.sound.SF2Sample {
}

type com.sun.media.sound.SoftReceiver {
}

type com.sun.media.sound.ModelDestination {
    var DESTINATION_NONE: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_KEYNUMBER: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_VELOCITY: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_PITCH: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_GAIN: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_PAN: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_REVERB: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_CHORUS: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_LFO1_DELAY: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_LFO1_FREQ: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_LFO2_DELAY: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_LFO2_FREQ: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_EG1_DELAY: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_EG1_ATTACK: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_EG1_HOLD: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_EG1_DECAY: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_EG1_SUSTAIN: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_EG1_RELEASE: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_EG1_SHUTDOWN: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_EG2_DELAY: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_EG2_ATTACK: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_EG2_HOLD: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_EG2_DECAY: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_EG2_SUSTAIN: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_EG2_RELEASE: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_EG2_SHUTDOWN: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_FILTER_FREQ: com.sun.media.sound.ModelIdentifier;
    var DESTINATION_FILTER_Q: com.sun.media.sound.ModelIdentifier;
}

type com.sun.media.sound.AudioSynthesizer {
}

type com.sun.media.sound.DLSSampleOptions {
}

type com.sun.media.sound.SoftMixingSourceDataLine {
}

type com.sun.media.sound.DLSSample {
}

type com.sun.media.sound.ModelSource {
    var SOURCE_NONE: com.sun.media.sound.ModelIdentifier;
    var SOURCE_NOTEON_KEYNUMBER: com.sun.media.sound.ModelIdentifier;
    var SOURCE_NOTEON_VELOCITY: com.sun.media.sound.ModelIdentifier;
    var SOURCE_EG1: com.sun.media.sound.ModelIdentifier;
    var SOURCE_EG2: com.sun.media.sound.ModelIdentifier;
    var SOURCE_LFO1: com.sun.media.sound.ModelIdentifier;
    var SOURCE_LFO2: com.sun.media.sound.ModelIdentifier;
    var SOURCE_MIDI_PITCH: com.sun.media.sound.ModelIdentifier;
    var SOURCE_MIDI_CHANNEL_PRESSURE: com.sun.media.sound.ModelIdentifier;
    var SOURCE_MIDI_POLY_PRESSURE: com.sun.media.sound.ModelIdentifier;
    var SOURCE_MIDI_CC_0: com.sun.media.sound.ModelIdentifier;
    var SOURCE_MIDI_RPN_0: com.sun.media.sound.ModelIdentifier;
}

type com.sun.media.sound.AutoConnectSequencer {
}

type com.sun.media.sound.WaveFileWriter {
}

type com.sun.media.sound.SMFParser {
}

type com.sun.media.sound.ModelMappedInstrument {
}

type com.sun.media.sound.SoftChorus {
}

type com.sun.media.sound.ModelIdentifier {
}

type com.sun.media.sound.AudioSynthesizerPropertyInfo {
    var name: java.lang.String;
    var description: java.lang.String;
    var value: java.lang.Object;
    var valueClass: java.lang.Class;
    var choices: array<java.lang.Object>;
}

type com.sun.media.sound.StandardFileFormat {
}

type com.sun.media.sound.ModelOscillator {
}

type com.sun.media.sound.EmergencySoundbank {
}

type com.sun.media.sound.SoftMainMixer {
    var CHANNEL_LEFT: int;
    var CHANNEL_RIGHT: int;
    var CHANNEL_MONO: int;
    var CHANNEL_DELAY_LEFT: int;
    var CHANNEL_DELAY_RIGHT: int;
    var CHANNEL_DELAY_MONO: int;
    var CHANNEL_EFFECT1: int;
    var CHANNEL_EFFECT2: int;
    var CHANNEL_DELAY_EFFECT1: int;
    var CHANNEL_DELAY_EFFECT2: int;
    var CHANNEL_LEFT_DRY: int;
    var CHANNEL_RIGHT_DRY: int;
    var CHANNEL_SCRATCH1: int;
    var CHANNEL_SCRATCH2: int;
}

type com.sun.media.sound.FastSysexMessage {
    var SYSTEM_EXCLUSIVE: int;
    var SPECIAL_SYSTEM_EXCLUSIVE: int;
}

type com.sun.media.sound.SoftLowFrequencyOscillator {
}

type com.sun.media.sound.SoftLanczosResampler {
}

type com.sun.media.sound.MidiOutDeviceProvider {
}

type com.sun.media.sound.SoftProcess {
}

type com.sun.media.sound.SF2Layer {
}

type com.sun.media.sound.DLSSoundbank {
}

type com.sun.media.sound.Platform {
}

type com.sun.media.sound.JDK13Services {
}

type com.sun.media.sound.SoftMixingClip {
    var LOOP_CONTINUOUSLY: int;
}

type com.sun.media.sound.SF2Soundbank {
}

type com.sun.media.sound.ModelInstrumentComparator {
}

type com.sun.media.sound.DataPusher {
}

type com.sun.media.sound.ReferenceCountingDevice {
}

type com.sun.media.sound.MidiOutDevice {
}

type com.sun.media.sound.DLSInstrument {
}

type com.sun.media.sound.SoftSynthesizer {
}

type com.sun.media.sound.SoftShortMessage {
    var MIDI_TIME_CODE: int;
    var SONG_POSITION_POINTER: int;
    var SONG_SELECT: int;
    var TUNE_REQUEST: int;
    var END_OF_EXCLUSIVE: int;
    var TIMING_CLOCK: int;
    var START: int;
    var CONTINUE: int;
    var STOP: int;
    var ACTIVE_SENSING: int;
    var SYSTEM_RESET: int;
    var NOTE_OFF: int;
    var NOTE_ON: int;
    var POLY_PRESSURE: int;
    var CONTROL_CHANGE: int;
    var PROGRAM_CHANGE: int;
    var CHANNEL_PRESSURE: int;
    var PITCH_BEND: int;
}

type com.sun.media.sound.SF2Region {
    var GENERATOR_STARTADDRSOFFSET: int;
    var GENERATOR_ENDADDRSOFFSET: int;
    var GENERATOR_STARTLOOPADDRSOFFSET: int;
    var GENERATOR_ENDLOOPADDRSOFFSET: int;
    var GENERATOR_STARTADDRSCOARSEOFFSET: int;
    var GENERATOR_MODLFOTOPITCH: int;
    var GENERATOR_VIBLFOTOPITCH: int;
    var GENERATOR_MODENVTOPITCH: int;
    var GENERATOR_INITIALFILTERFC: int;
    var GENERATOR_INITIALFILTERQ: int;
    var GENERATOR_MODLFOTOFILTERFC: int;
    var GENERATOR_MODENVTOFILTERFC: int;
    var GENERATOR_ENDADDRSCOARSEOFFSET: int;
    var GENERATOR_MODLFOTOVOLUME: int;
    var GENERATOR_UNUSED1: int;
    var GENERATOR_CHORUSEFFECTSSEND: int;
    var GENERATOR_REVERBEFFECTSSEND: int;
    var GENERATOR_PAN: int;
    var GENERATOR_UNUSED2: int;
    var GENERATOR_UNUSED3: int;
    var GENERATOR_UNUSED4: int;
    var GENERATOR_DELAYMODLFO: int;
    var GENERATOR_FREQMODLFO: int;
    var GENERATOR_DELAYVIBLFO: int;
    var GENERATOR_FREQVIBLFO: int;
    var GENERATOR_DELAYMODENV: int;
    var GENERATOR_ATTACKMODENV: int;
    var GENERATOR_HOLDMODENV: int;
    var GENERATOR_DECAYMODENV: int;
    var GENERATOR_SUSTAINMODENV: int;
    var GENERATOR_RELEASEMODENV: int;
    var GENERATOR_KEYNUMTOMODENVHOLD: int;
    var GENERATOR_KEYNUMTOMODENVDECAY: int;
    var GENERATOR_DELAYVOLENV: int;
    var GENERATOR_ATTACKVOLENV: int;
    var GENERATOR_HOLDVOLENV: int;
    var GENERATOR_DECAYVOLENV: int;
    var GENERATOR_SUSTAINVOLENV: int;
    var GENERATOR_RELEASEVOLENV: int;
    var GENERATOR_KEYNUMTOVOLENVHOLD: int;
    var GENERATOR_KEYNUMTOVOLENVDECAY: int;
    var GENERATOR_INSTRUMENT: int;
    var GENERATOR_RESERVED1: int;
    var GENERATOR_KEYRANGE: int;
    var GENERATOR_VELRANGE: int;
    var GENERATOR_STARTLOOPADDRSCOARSEOFFSET: int;
    var GENERATOR_KEYNUM: int;
    var GENERATOR_VELOCITY: int;
    var GENERATOR_INITIALATTENUATION: int;
    var GENERATOR_RESERVED2: int;
    var GENERATOR_ENDLOOPADDRSCOARSEOFFSET: int;
    var GENERATOR_COARSETUNE: int;
    var GENERATOR_FINETUNE: int;
    var GENERATOR_SAMPLEID: int;
    var GENERATOR_SAMPLEMODES: int;
    var GENERATOR_RESERVED3: int;
    var GENERATOR_SCALETUNING: int;
    var GENERATOR_EXCLUSIVECLASS: int;
    var GENERATOR_OVERRIDINGROOTKEY: int;
    var GENERATOR_UNUSED5: int;
    var GENERATOR_ENDOPR: int;
}

type com.sun.media.sound.SoftControl {
}

type com.sun.media.sound.SunFileWriter {
}

type com.sun.media.sound.WaveFloatFileReader {
}

type com.sun.media.sound.AlawCodec {
}

type com.sun.media.sound.AudioFloatInputStream {
}

type com.sun.media.sound.SoftResamplerStreamer {
}

type com.sun.media.sound.SF2InstrumentRegion {
    var GENERATOR_STARTADDRSOFFSET: int;
    var GENERATOR_ENDADDRSOFFSET: int;
    var GENERATOR_STARTLOOPADDRSOFFSET: int;
    var GENERATOR_ENDLOOPADDRSOFFSET: int;
    var GENERATOR_STARTADDRSCOARSEOFFSET: int;
    var GENERATOR_MODLFOTOPITCH: int;
    var GENERATOR_VIBLFOTOPITCH: int;
    var GENERATOR_MODENVTOPITCH: int;
    var GENERATOR_INITIALFILTERFC: int;
    var GENERATOR_INITIALFILTERQ: int;
    var GENERATOR_MODLFOTOFILTERFC: int;
    var GENERATOR_MODENVTOFILTERFC: int;
    var GENERATOR_ENDADDRSCOARSEOFFSET: int;
    var GENERATOR_MODLFOTOVOLUME: int;
    var GENERATOR_UNUSED1: int;
    var GENERATOR_CHORUSEFFECTSSEND: int;
    var GENERATOR_REVERBEFFECTSSEND: int;
    var GENERATOR_PAN: int;
    var GENERATOR_UNUSED2: int;
    var GENERATOR_UNUSED3: int;
    var GENERATOR_UNUSED4: int;
    var GENERATOR_DELAYMODLFO: int;
    var GENERATOR_FREQMODLFO: int;
    var GENERATOR_DELAYVIBLFO: int;
    var GENERATOR_FREQVIBLFO: int;
    var GENERATOR_DELAYMODENV: int;
    var GENERATOR_ATTACKMODENV: int;
    var GENERATOR_HOLDMODENV: int;
    var GENERATOR_DECAYMODENV: int;
    var GENERATOR_SUSTAINMODENV: int;
    var GENERATOR_RELEASEMODENV: int;
    var GENERATOR_KEYNUMTOMODENVHOLD: int;
    var GENERATOR_KEYNUMTOMODENVDECAY: int;
    var GENERATOR_DELAYVOLENV: int;
    var GENERATOR_ATTACKVOLENV: int;
    var GENERATOR_HOLDVOLENV: int;
    var GENERATOR_DECAYVOLENV: int;
    var GENERATOR_SUSTAINVOLENV: int;
    var GENERATOR_RELEASEVOLENV: int;
    var GENERATOR_KEYNUMTOVOLENVHOLD: int;
    var GENERATOR_KEYNUMTOVOLENVDECAY: int;
    var GENERATOR_INSTRUMENT: int;
    var GENERATOR_RESERVED1: int;
    var GENERATOR_KEYRANGE: int;
    var GENERATOR_VELRANGE: int;
    var GENERATOR_STARTLOOPADDRSCOARSEOFFSET: int;
    var GENERATOR_KEYNUM: int;
    var GENERATOR_VELOCITY: int;
    var GENERATOR_INITIALATTENUATION: int;
    var GENERATOR_RESERVED2: int;
    var GENERATOR_ENDLOOPADDRSCOARSEOFFSET: int;
    var GENERATOR_COARSETUNE: int;
    var GENERATOR_FINETUNE: int;
    var GENERATOR_SAMPLEID: int;
    var GENERATOR_SAMPLEMODES: int;
    var GENERATOR_RESERVED3: int;
    var GENERATOR_SCALETUNING: int;
    var GENERATOR_EXCLUSIVECLASS: int;
    var GENERATOR_OVERRIDINGROOTKEY: int;
    var GENERATOR_UNUSED5: int;
    var GENERATOR_ENDOPR: int;
}

type com.sun.media.sound.AiffFileReader {
}

type com.sun.media.sound.AuFileWriter {
}

type com.sun.media.sound.SoftChannelProxy {
}

type com.sun.media.sound.AutoClosingClip {
    var LOOP_CONTINUOUSLY: int;
}

type com.sun.media.sound.AiffFileFormat {
}

type com.sun.media.sound.DLSInfo {
    var name: java.lang.String;
    var creationDate: java.lang.String;
    var engineers: java.lang.String;
    var product: java.lang.String;
    var copyright: java.lang.String;
    var comments: java.lang.String;
    var tools: java.lang.String;
    var archival_location: java.lang.String;
    var artist: java.lang.String;
    var commissioned: java.lang.String;
    var genre: java.lang.String;
    var keywords: java.lang.String;
    var medium: java.lang.String;
    var subject: java.lang.String;
    var source: java.lang.String;
    var source_form: java.lang.String;
    var technician: java.lang.String;
}

type com.sun.media.sound.ModelStandardTransform {
    var DIRECTION_MIN2MAX: boolean;
    var DIRECTION_MAX2MIN: boolean;
    var POLARITY_UNIPOLAR: boolean;
    var POLARITY_BIPOLAR: boolean;
    var TRANSFORM_LINEAR: int;
    var TRANSFORM_CONCAVE: int;
    var TRANSFORM_CONVEX: int;
    var TRANSFORM_SWITCH: int;
    var TRANSFORM_ABSOLUTE: int;
}

type com.sun.media.sound.PortMixer {
}

type com.sun.media.sound.StandardMidiFileReader {
}

type com.sun.media.sound.SoftFilter {
    var FILTERTYPE_LP6: int;
    var FILTERTYPE_LP12: int;
    var FILTERTYPE_HP12: int;
    var FILTERTYPE_BP12: int;
    var FILTERTYPE_NP12: int;
    var FILTERTYPE_LP24: int;
    var FILTERTYPE_HP24: int;
}

type com.sun.media.sound.Printer {
}

type com.sun.media.sound.ModelDirector {
}

type com.sun.media.sound.ModelChannelMixer {
}

type com.sun.media.sound.ModelStandardDirector {
}

type com.sun.media.sound.SoftVoice {
    var exclusiveClass: int;
    var releaseTriggered: boolean;
    var active: boolean;
    var channel: int;
    var bank: int;
    var program: int;
    var note: int;
    var volume: int;
}

type com.sun.media.sound.EventDispatcher {
}

type com.sun.media.sound.DirectAudioDevice {
}

type com.sun.media.sound.ModelAbstractChannelMixer {
}

type com.sun.media.sound.PortMixerProvider {
}

type com.sun.media.sound.RealTimeSequencerProvider {
}

type com.sun.media.sound.ModelConnectionBlock {
}

type com.sun.media.sound.SoftReverb {
}

type com.sun.media.sound.SoftLimiter {
}

type com.sun.media.sound.SimpleSoundbank {
}

type com.sun.media.sound.SoftMidiAudioFileReader {
}

type com.sun.media.sound.DLSSoundbankReader {
}

type com.sun.media.sound.JavaSoundAudioClip {
}

type com.sun.media.sound.SoftChannel {
}

type com.sun.media.sound.ModelPerformer {
}

type com.sun.media.sound.RIFFWriter {
}

type com.sun.media.sound.RealTimeSequencer {
    var LOOP_CONTINUOUSLY: int;
}

type com.sun.media.sound.AbstractMidiDeviceProvider {
}
