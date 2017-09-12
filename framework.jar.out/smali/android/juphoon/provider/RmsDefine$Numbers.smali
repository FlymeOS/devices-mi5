.class public final Landroid/juphoon/provider/RmsDefine$Numbers;
.super Ljava/lang/Object;
.source "RmsDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/juphoon/provider/RmsDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Numbers"
.end annotation


# static fields
.field public static final ATTRIBUTION:Ljava/lang/String; = "attribution"

.field public static final AUTHORITY:Ljava/lang/String; = "numbers"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final IS_BLACK:Ljava/lang/String; = "is_black"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final RCS_CAPABILITY:Ljava/lang/String; = "rcs_capability"

.field public static final TABLE_NAME:Ljava/lang/String; = "numbers"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 554
    const-string v0, "content://numbers/numbers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$Numbers;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
