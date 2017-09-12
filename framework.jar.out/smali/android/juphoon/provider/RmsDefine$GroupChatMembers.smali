.class public final Landroid/juphoon/provider/RmsDefine$GroupChatMembers;
.super Ljava/lang/Object;
.source "RmsDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/juphoon/provider/RmsDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupChatMembers"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ETYPE:Ljava/lang/String; = "etype"

.field public static final GROUP_CHAT_ID:Ljava/lang/String; = "group_chat_id"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PROTRAIT:Ljava/lang/String; = "protrait"

.field public static final PROTRAIT_TYPE:Ljava/lang/String; = "protrait_type"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TABLE_NAME:Ljava/lang/String; = "group_chat_members"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    const-string v0, "content://rcsgroup/group_chat_members"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$GroupChatMembers;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
