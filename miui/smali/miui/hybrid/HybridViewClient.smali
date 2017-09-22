.class public Lmiui/hybrid/HybridViewClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final yo:Ljava/lang/String; = "hybrid/"

.field private static final yp:Ljava/lang/String; = "android_asset/hybrid/"


# instance fields
.field private fh:Lcom/miui/internal/hybrid/HybridManager;

.field private yq:Lcom/miui/internal/webkit/WebViewClientDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-direct {v0}, Lcom/miui/internal/webkit/WebViewClientDelegate;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/HybridViewClient;->yq:Lcom/miui/internal/webkit/WebViewClientDelegate;

    .line 26
    return-void
.end method


# virtual methods
.method public onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->fh:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->fh:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->yq:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->bZ()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/webkit/WebViewClientDelegate;->onPageFinished(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lmiui/hybrid/PageContext;

    invoke-direct {v0}, Lmiui/hybrid/PageContext;-><init>()V

    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/hybrid/PageContext;->setId(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p2}, Lmiui/hybrid/PageContext;->setUrl(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lmiui/hybrid/HybridViewClient;->fh:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v1, v0}, Lcom/miui/internal/hybrid/HybridManager;->setPageContext(Lmiui/hybrid/PageContext;)V

    .line 40
    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->fh:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->onPageChange()V

    .line 42
    invoke-virtual {p1, p2}, Lmiui/hybrid/HybridView;->A(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridView;->p(Z)V

    .line 45
    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->yq:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->bZ()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/miui/internal/webkit/WebViewClientDelegate;->onPageStarted(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method

.method public onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridView;->p(Z)V

    .line 84
    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->ca()V

    .line 85
    return-void
.end method

.method public onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->yq:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->bZ()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/miui/internal/webkit/WebViewClientDelegate;->onReceivedLoginRequest(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p2}, Lmiui/hybrid/SslErrorHandler;->cancel()V

    .line 79
    return-void
.end method

.method public setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lmiui/hybrid/HybridViewClient;->fh:Lcom/miui/internal/hybrid/HybridManager;

    .line 33
    return-void
.end method

.method public shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 57
    .line 58
    if-eqz p2, :cond_0

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "android_asset/hybrid/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 60
    if-ltz v0, :cond_0

    const-string v2, "android_asset/hybrid/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 61
    const-string v2, "android_asset/hybrid/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    :try_start_0
    new-instance v0, Lmiui/hybrid/HybridResourceResponse;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lmiui/hybrid/HybridViewClient;->fh:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v5}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hybrid/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v3, v4, v2}, Lmiui/hybrid/HybridResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 66
    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->yq:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->bZ()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/webkit/WebViewClientDelegate;->shouldOverrideUrlLoading(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
