.class public Lmiui/provider/KeyguardNotification;
.super Ljava/lang/Object;
.source "KeyguardNotification.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "keyguard.notification"

.field private static final BASE_URI_STRING:Ljava/lang/String; = "content://keyguard.notification"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_INDEX:I = 0x3

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final ICON_INDEX:I = 0x1

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final ID_INDEX:I = 0x0

.field public static final INFO:Ljava/lang/String; = "info"

.field public static final INFO_INDEX:I = 0x5

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final KEY_INDEX:I = 0x7

.field public static final PKG:Ljava/lang/String; = "pkg"

.field public static final PKG_INDEX:I = 0x8

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SUBTEXT:Ljava/lang/String; = "subtext"

.field public static final SUBTEXT_INDEX:I = 0x6

.field public static final TABLE:Ljava/lang/String; = "notifications"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TIME_INDEX:I = 0x4

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TITLE_INDEX:I = 0x2

.field public static final URI:Landroid/net/Uri;

.field public static final USERID:Ljava/lang/String; = "user_id"

.field public static final USERID_INDEX:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const-string v0, "content://keyguard.notification/notifications"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    .line 38
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "info"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "subtext"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "key"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pkg"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "user_id"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/KeyguardNotification;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
