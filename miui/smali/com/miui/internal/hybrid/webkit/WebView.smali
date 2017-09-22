.class public Lcom/miui/internal/hybrid/webkit/WebView;
.super Lcom/miui/internal/hybrid/provider/AbsWebView;
.source "SourceFile"


# instance fields
.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/hybrid/HybridView;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/provider/AbsWebView;-><init>(Landroid/content/Context;Lmiui/hybrid/HybridView;)V

    .line 26
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 27
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public clearCache(Z)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 72
    return-void
.end method

.method public copyBackForwardList()Lmiui/hybrid/HybridBackForwardList;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;-><init>(Landroid/webkit/WebBackForwardList;)V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 62
    return-void
.end method

.method public getBaseWebView()Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    return v0
.end method

.method public getSettings()Lmiui/hybrid/HybridSettings;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebSettings;

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/hybrid/webkit/WebSettings;-><init>(Landroid/webkit/WebSettings;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 87
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 67
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public setWebChromeClient(Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;)V
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;->getWebChromeClient()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 42
    return-void
.end method

.method public setWebViewClient(Lcom/miui/internal/hybrid/provider/AbsWebViewClient;)V
    .locals 2

    .prologue
    .line 36
    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->getWebViewClient()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 37
    return-void
.end method
