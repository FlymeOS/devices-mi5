.class public final Landroid/juphoon/provider/RmsDefine$Threads;
.super Ljava/lang/Object;
.source "RmsDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/juphoon/provider/RmsDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threads"
.end annotation


# static fields
.field public static final DATE:Ljava/lang/String; = "date"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final HAS_ATTACHMENT:Ljava/lang/String; = "has_attachment"

.field public static final IS_LAST_MESSAGE_BURN:Ljava/lang/String; = "is_last_message_burn"

.field public static final LAST_FILE_MIME_TYPE:Ljava/lang/String; = "last_file_mime_type"

.field public static final LAST_MESSAGE_TYPE:Ljava/lang/String; = "last_message_type"

.field public static final LAST_MESSAGE_TYPE_CLOUD_FILE:Ljava/lang/String; = "cloud_file"

.field public static final LAST_MESSAGE_TYPE_EMOTICON:Ljava/lang/String; = "emoticon"

.field public static final LAST_MESSAGE_TYPE_FILE:Ljava/lang/String; = "file"

.field public static final LAST_MESSAGE_TYPE_GEO:Ljava/lang/String; = "geo"

.field public static final LAST_MESSAGE_TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final LAST_MESSAGE_TYPE_MART:Ljava/lang/String; = "mart"

.field public static final LAST_MESSAGE_TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final LAST_MESSAGE_TYPE_OTHER:Ljava/lang/String; = "other"

.field public static final LAST_MESSAGE_TYPE_RMS_SMS:Ljava/lang/String; = "rms_sms"

.field public static final LAST_MESSAGE_TYPE_SART:Ljava/lang/String; = "sart"

.field public static final LAST_MESSAGE_TYPE_SMS:Ljava/lang/String; = "sms"

.field public static final LAST_MESSAGE_TYPE_SYSTEM:Ljava/lang/String; = "text"

.field public static final LAST_MESSAGE_TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final LAST_MESSAGE_TYPE_VCARD:Ljava/lang/String; = "vcard"

.field public static final LAST_MESSAGE_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final LAST_MESSAGE_TYPE_VOICE:Ljava/lang/String; = "voice"

.field public static final MESSAGE_COUNT:Ljava/lang/String; = "message_count"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final PRIORITY_ORDER:Ljava/lang/String; = "priority desc, date desc"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final RECIPIENTS:Ljava/lang/String; = "recipients"

.field public static final RECIPIENT_IDS:Ljava/lang/String; = "recipient_ids"

.field public static final RMS_THREAD_TYPE:Ljava/lang/String; = "rms_type"

.field public static final SNIPPET:Ljava/lang/String; = "snippet"

.field public static final SNIPPET_CHARSET:Ljava/lang/String; = "snippet_cs"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UNREAD_MESSAGE_COUNT:Ljava/lang/String; = "unread_message_count"

.field public static final URI_DELETE_THREAD_MESSAGES:Landroid/net/Uri;

.field public static final URI_THREAD_PRIORITY:Landroid/net/Uri;

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "content://mms-sms/conversations/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$Threads;->URI_DELETE_THREAD_MESSAGES:Landroid/net/Uri;

    .line 48
    const-string v0, "content://mms-sms/threadPriority"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$Threads;->URI_THREAD_PRIORITY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
