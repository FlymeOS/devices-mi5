.class public final Lmiui/log/MiuiTags;
.super Ljava/lang/Object;
.source "MiuiTags.java"


# static fields
.field public static final TAG_ID_SEND_BROADCAST:I = 0x0

.field public static final TAG_SEND_BROADCAST:Ljava/lang/String; = "SendBroadcast"

.field public static final TAG_SEND_BROADCAST_DEFAULT:Z

.field public static final TagSendBroadcast:Lmiui/log/MiuiTag;

.field private static final allMiuiTags:[Lmiui/log/MiuiTag;

.field private static final miuiTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/MiuiTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final miuiTagSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lmiui/log/MiuiTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 16
    new-instance v2, Lmiui/log/MiuiTag;

    const-string v3, "SendBroadcast"

    invoke-direct {v2, v4, v3, v4}, Lmiui/log/MiuiTag;-><init>(ILjava/lang/String;Z)V

    sput-object v2, Lmiui/log/MiuiTags;->TagSendBroadcast:Lmiui/log/MiuiTag;

    .line 18
    const/4 v2, 0x1

    new-array v2, v2, [Lmiui/log/MiuiTag;

    sget-object v3, Lmiui/log/MiuiTags;->TagSendBroadcast:Lmiui/log/MiuiTag;

    aput-object v3, v2, v4

    sput-object v2, Lmiui/log/MiuiTags;->allMiuiTags:[Lmiui/log/MiuiTag;

    .line 21
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lmiui/log/MiuiTags;->miuiTagMap:Ljava/util/HashMap;

    .line 22
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lmiui/log/MiuiTags;->miuiTagSparseArray:Landroid/util/SparseArray;

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lmiui/log/MiuiTags;->allMiuiTags:[Lmiui/log/MiuiTag;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 26
    sget-object v2, Lmiui/log/MiuiTags;->allMiuiTags:[Lmiui/log/MiuiTag;

    aget-object v1, v2, v0

    .line 27
    .local v1, "tag":Lmiui/log/MiuiTag;
    sget-object v2, Lmiui/log/MiuiTags;->miuiTagMap:Ljava/util/HashMap;

    iget-object v3, v1, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v2, Lmiui/log/MiuiTags;->miuiTagSparseArray:Landroid/util/SparseArray;

    iget v3, v1, Lmiui/log/MiuiTag;->id:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "tag":Lmiui/log/MiuiTag;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(I)Lmiui/log/MiuiTag;
    .locals 1
    .param p0, "tagID"    # I

    .prologue
    .line 33
    sget-object v0, Lmiui/log/MiuiTags;->miuiTagSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/MiuiTag;

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lmiui/log/MiuiTag;
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lmiui/log/MiuiTags;->miuiTagMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/MiuiTag;

    return-object v0
.end method

.method public static isOn(I)Z
    .locals 2
    .param p0, "tagID"    # I

    .prologue
    .line 41
    sget-object v1, Lmiui/log/MiuiTags;->miuiTagSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/MiuiTag;

    .line 42
    .local v0, "tag":Lmiui/log/MiuiTag;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v1

    goto :goto_0
.end method

.method public static isOn(Ljava/lang/String;)Z
    .locals 2
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v1, Lmiui/log/MiuiTags;->miuiTagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/MiuiTag;

    .line 47
    .local v0, "tag":Lmiui/log/MiuiTag;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v1

    goto :goto_0
.end method

.method public static switchOff(I)V
    .locals 2
    .param p0, "tagID"    # I

    .prologue
    .line 65
    sget-object v1, Lmiui/log/MiuiTags;->miuiTagSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/MiuiTag;

    .line 66
    .local v0, "tag":Lmiui/log/MiuiTag;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lmiui/log/MiuiTag;->switchOff()V

    .line 69
    :cond_0
    return-void
.end method

.method public static switchOff(Ljava/lang/String;)V
    .locals 2
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v1, Lmiui/log/MiuiTags;->miuiTagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/MiuiTag;

    .line 73
    .local v0, "tag":Lmiui/log/MiuiTag;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lmiui/log/MiuiTag;->switchOff()V

    .line 76
    :cond_0
    return-void
.end method

.method public static switchOn(I)V
    .locals 2
    .param p0, "tagID"    # I

    .prologue
    .line 51
    sget-object v1, Lmiui/log/MiuiTags;->miuiTagSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/MiuiTag;

    .line 52
    .local v0, "tag":Lmiui/log/MiuiTag;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lmiui/log/MiuiTag;->switchOn()V

    .line 55
    :cond_0
    return-void
.end method

.method public static switchOn(Ljava/lang/String;)V
    .locals 2
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v1, Lmiui/log/MiuiTags;->miuiTagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/MiuiTag;

    .line 59
    .local v0, "tag":Lmiui/log/MiuiTag;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lmiui/log/MiuiTag;->switchOn()V

    .line 62
    :cond_0
    return-void
.end method
