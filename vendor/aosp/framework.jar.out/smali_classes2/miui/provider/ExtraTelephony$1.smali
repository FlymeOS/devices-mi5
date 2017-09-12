.class final Lmiui/provider/ExtraTelephony$1;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/provider/ExtraTelephony;->getCallBlockType(Landroid/content/Context;Ljava/lang/String;ZZZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isForwardCall:Z

.field final synthetic val$isRepeated:Z

.field final synthetic val$isRepeatedBlocked:Z

.field final synthetic val$num:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZZ)V
    .locals 0

    .prologue
    .line 1623
    iput-object p1, p0, Lmiui/provider/ExtraTelephony$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/provider/ExtraTelephony$1;->val$num:Ljava/lang/String;

    iput-boolean p3, p0, Lmiui/provider/ExtraTelephony$1;->val$isForwardCall:Z

    iput-boolean p4, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeated:Z

    iput-boolean p5, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeatedBlocked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1627
    iget-object v2, p0, Lmiui/provider/ExtraTelephony$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1628
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lmiui/provider/ExtraTelephony$Judge;->CALL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v7, p0, Lmiui/provider/ExtraTelephony$1;->val$num:Ljava/lang/String;

    aput-object v7, v6, v2

    const/4 v7, 0x1

    iget-boolean v2, p0, Lmiui/provider/ExtraTelephony$1;->val$isForwardCall:Z

    if-eqz v2, :cond_0

    const-string v2, "is_forward_call"

    :goto_0
    aput-object v2, v6, v7

    const/4 v7, 0x2

    iget-boolean v2, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeated:Z

    if-eqz v2, :cond_1

    const-string v2, "is_repeated_normal_call"

    :goto_1
    aput-object v2, v6, v7

    const/4 v7, 0x3

    iget-boolean v2, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeatedBlocked:Z

    if-eqz v2, :cond_2

    const-string v2, "is_repeated_blocked_call"

    :goto_2
    aput-object v2, v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1635
    .local v0, "callBlockType":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 1628
    .end local v0    # "callBlockType":I
    :cond_0
    const-string v2, ""

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    :cond_2
    const-string v2, ""

    goto :goto_2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1623
    invoke-virtual {p0}, Lmiui/provider/ExtraTelephony$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
