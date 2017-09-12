.class public final Landroid/juphoon/provider/RmsDefine$Capability;
.super Ljava/lang/Object;
.source "RmsDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/juphoon/provider/RmsDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Capability"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "capability"

.field public static final CAPABILITY_BURN_AFTER_READ:Ljava/lang/String; = "CAPABILITY_BURN_AFTER_READ"

.field public static final CAPABILITY_EXTENSIONS:Ljava/lang/String; = "CAPABILITY_EXTENSIONS"

.field public static final CAPABILITY_FILE_TRANSFER:Ljava/lang/String; = "CAPABILITY_FILE_TRANSFER"

.field public static final CAPABILITY_GEOLOC_PUSH:Ljava/lang/String; = "CAPABILITY_GEOLOC_PUSH"

.field public static final CAPABILITY_IMAGE_SHARING:Ljava/lang/String; = "CAPABILITY_IMAGE_SHARING"

.field public static final CAPABILITY_IM_SESSION:Ljava/lang/String; = "CAPABILITY_IM_SESSION"

.field public static final CAPABILITY_IP_VIDEO_CALL:Ljava/lang/String; = "CAPABILITY_IP_VIDEO_CALL"

.field public static final CAPABILITY_IP_VOICE_CALL:Ljava/lang/String; = "CAPABILITY_IP_VOICE_CALL"

.field public static final CAPABILITY_PUBLIC_ACCOUNT:Ljava/lang/String; = "CAPABILITY_PUBLIC_ACCOUNT"

.field public static final CAPABILITY_VIDEO_SHARING:Ljava/lang/String; = "CAPABILITY_VIDEO_SHARING"

.field public static final CONTACT_NUMBER:Ljava/lang/String; = "CONTACT_NUMBER"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "capability"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 568
    const-string v0, "content://capability/capability"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$Capability;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
