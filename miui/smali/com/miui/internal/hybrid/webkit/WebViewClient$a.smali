.class Lcom/miui/internal/hybrid/webkit/WebViewClient$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/hybrid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;


# direct methods
.method constructor <init>(Lcom/miui/internal/hybrid/webkit/WebViewClient;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;->fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;->fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;->fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {v1}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->b(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;->fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;->fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {v1}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->a(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 74
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;->fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;->fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {v1}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->f(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;->fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;->fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {v1}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->g(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/miui/internal/hybrid/webkit/SslErrorHandler;

    invoke-direct {v0, p2}, Lcom/miui/internal/hybrid/webkit/SslErrorHandler;-><init>(Landroid/webkit/SslErrorHandler;)V

    .line 95
    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;->fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    iget-object v2, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;->fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {v2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->e(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p3}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 96
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;->fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;->fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {v1}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->c(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;

    move-result-object v1

    .line 84
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebResourceResponce;

    invoke-direct {v0, v1}, Lcom/miui/internal/hybrid/webkit/WebResourceResponce;-><init>(Lmiui/hybrid/HybridResourceResponse;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;->fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;->fX:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {v1}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->d(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
