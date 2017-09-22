.class public abstract Lcom/miui/internal/hybrid/provider/AbsWebView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHybridView:Lmiui/hybrid/HybridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/hybrid/HybridView;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/miui/internal/hybrid/provider/AbsWebView;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/miui/internal/hybrid/provider/AbsWebView;->mHybridView:Lmiui/hybrid/HybridView;

    .line 22
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public clearCache(Z)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public copyBackForwardList()Lmiui/hybrid/HybridBackForwardList;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public getBaseWebView()Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getSettings()Lmiui/hybrid/HybridSettings;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public goBack()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public reload()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public setWebChromeClient(Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public setWebViewClient(Lcom/miui/internal/hybrid/provider/AbsWebViewClient;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method
