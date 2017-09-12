.class public final Landroid/juphoon/provider/RmsDefine$Menus;
.super Ljava/lang/Object;
.source "RmsDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/juphoon/provider/RmsDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Menus"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "menus"

.field public static final COMMAND_ID:Ljava/lang/String; = "command_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PARENT_MENU_ID:Ljava/lang/String; = "parent_menu_id"

.field public static final PA_UUID:Ljava/lang/String; = "pa_uuid"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final TABLE_NAME:Ljava/lang/String; = "menus"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_APP:I = 0x3

.field public static final TYPE_DEVICE_API:I = 0x2

.field public static final TYPE_LINK:I = 0x1

.field public static final TYPE_SEND_MSG:I = 0x0

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 365
    const-string v0, "content://menus/menus"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$Menus;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
