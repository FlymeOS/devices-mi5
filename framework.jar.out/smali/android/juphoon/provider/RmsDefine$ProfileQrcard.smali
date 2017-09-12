.class public final Landroid/juphoon/provider/RmsDefine$ProfileQrcard;
.super Ljava/lang/Object;
.source "RmsDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/juphoon/provider/RmsDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileQrcard"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final AUTHORITY:Ljava/lang/String; = "profile_qrcard"

.field public static final BUSINESS_FLAG:Ljava/lang/String; = "business_flag"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ICON_MIME_TYPE:Ljava/lang/String; = "ICON_MIME_TYPE"

.field public static final ICON_PATH:Ljava/lang/String; = "icon_path"

.field public static final TABLE_NAME:Ljava/lang/String; = "profile_qrcard"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 539
    const-string v0, "content://profile_qrcard/profile_qrcard"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$ProfileQrcard;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
