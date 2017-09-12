.class public final Landroid/juphoon/provider/RmsDefine$CallLogBlack;
.super Ljava/lang/Object;
.source "RmsDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/juphoon/provider/RmsDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallLogBlack"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "calllog_black"

.field public static final CALLID:Ljava/lang/String; = "call_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "number"

.field public static final TABLE_NAME:Ljava/lang/String; = "calllog_black"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 600
    const-string v0, "content://calllog_black/logs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$CallLogBlack;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
