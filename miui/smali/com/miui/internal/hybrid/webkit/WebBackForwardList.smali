.class public Lcom/miui/internal/hybrid/webkit/WebBackForwardList;
.super Lmiui/hybrid/HybridBackForwardList;
.source "SourceFile"


# instance fields
.field private fT:Landroid/webkit/WebBackForwardList;


# direct methods
.method public constructor <init>(Landroid/webkit/WebBackForwardList;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lmiui/hybrid/HybridBackForwardList;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;->fT:Landroid/webkit/WebBackForwardList;

    .line 16
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;->fT:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentItem()Lmiui/hybrid/HybridHistoryItem;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebHistoryItem;

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;->fT:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/hybrid/webkit/WebHistoryItem;-><init>(Landroid/webkit/WebHistoryItem;)V

    return-object v0
.end method

.method public getItemAtIndex(I)Lmiui/hybrid/HybridHistoryItem;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebHistoryItem;

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;->fT:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v1, p1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/hybrid/webkit/WebHistoryItem;-><init>(Landroid/webkit/WebHistoryItem;)V

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;->fT:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    return v0
.end method
