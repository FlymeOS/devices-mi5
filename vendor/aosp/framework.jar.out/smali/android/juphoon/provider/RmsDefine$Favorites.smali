.class public final Landroid/juphoon/provider/RmsDefine$Favorites;
.super Ljava/lang/Object;
.source "RmsDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/juphoon/provider/RmsDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Favorites"
.end annotation


# static fields
.field public static final FAVORITE_CONTENT_URI_MMS:Landroid/net/Uri;

.field public static final FAVORITE_CONTENT_URI_MMSSMS:Landroid/net/Uri;

.field public static final FAVORITE_CONTENT_URI_RMS:Landroid/net/Uri;

.field public static final FAVORITE_CONTENT_URI_RMS_LOG:Landroid/net/Uri;

.field public static final FAVORITE_CONTENT_URI_RMS_LOGGROUP:Landroid/net/Uri;

.field public static final FAVORITE_CONTENT_URI_SMS:Landroid/net/Uri;

.field public static final FAVORITE_MMSSMS_AUTHORITY:Ljava/lang/String; = "favorite-mms-sms"

.field public static final FAVORITE_MMS_AUTHORITY:Ljava/lang/String; = "favorite-mms"

.field public static final FAVORITE_RMS_AUTHORITY:Ljava/lang/String; = "favorite-rms"

.field public static final FAVORITE_SMS_AUTHORITY:Ljava/lang/String; = "favorite-sms"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "content://favorite-rms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$Favorites;->FAVORITE_CONTENT_URI_RMS:Landroid/net/Uri;

    .line 38
    const-string v0, "content://favorite-rms/rms_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$Favorites;->FAVORITE_CONTENT_URI_RMS_LOG:Landroid/net/Uri;

    .line 39
    const-string v0, "content://favorite-rms/rms_log_group"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$Favorites;->FAVORITE_CONTENT_URI_RMS_LOGGROUP:Landroid/net/Uri;

    .line 40
    const-string v0, "content://favorite-sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$Favorites;->FAVORITE_CONTENT_URI_SMS:Landroid/net/Uri;

    .line 41
    const-string v0, "content://favorite-mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$Favorites;->FAVORITE_CONTENT_URI_MMS:Landroid/net/Uri;

    .line 42
    const-string v0, "content://favorite-mms-sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$Favorites;->FAVORITE_CONTENT_URI_MMSSMS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
