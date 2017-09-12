.class public final Landroid/juphoon/provider/RmsDefine$RmsGroupNotification;
.super Ljava/lang/Object;
.source "RmsDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/juphoon/provider/RmsDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RmsGroupNotification"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final GROUP_CHAT_ID:Ljava/lang/String; = "group_chat_id"

.field public static final INFO:Ljava/lang/String; = "info"

.field public static final INFO_ACCEPTED:I = 0x2

.field public static final INFO_DISSOLVE:I = 0x4

.field public static final INFO_GROUPS_FULL:I = 0x6

.field public static final INFO_INVITED:I = 0x0

.field public static final INFO_KICKOUT:I = 0x3

.field public static final INFO_MEMBER_FULL:I = 0x5

.field public static final INFO_REJECTED:I = 0x1

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final ORGANIZER_PHONE:Ljava/lang/String; = "organizer_phone"

.field public static final SESSION_IDENTITY:Ljava/lang/String; = "session_identity"

.field public static final TABLE_NAME:Ljava/lang/String; = "group_notifications"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 274
    const-string v0, "content://rms/rms_log_group_notification"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$RmsGroupNotification;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
