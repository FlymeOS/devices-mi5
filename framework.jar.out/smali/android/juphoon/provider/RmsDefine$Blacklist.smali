.class public final Landroid/juphoon/provider/RmsDefine$Blacklist;
.super Ljava/lang/Object;
.source "RmsDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/juphoon/provider/RmsDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Blacklist"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "blacklist"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final NAME:Ljava/lang/String; = "BLACKLIST_NAME"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "BLACKLIST_PHONE_NUMBER"

.field public static final TABLE_NAME:Ljava/lang/String; = "blacklist"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 588
    const-string v0, "content://blacklist/blacklist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
