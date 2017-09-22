.class public Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;
.super Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebChromeClient(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-direct {v0, p1, p2}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)V

    return-object v0
.end method

.method public createWebView(Landroid/content/Context;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebView;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebView;

    invoke-direct {v0, p1, p2}, Lcom/miui/internal/hybrid/webkit/WebView;-><init>(Landroid/content/Context;Lmiui/hybrid/HybridView;)V

    return-object v0
.end method

.method public createWebViewClient(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebViewClient;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-direct {v0, p1, p2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;-><init>(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)V

    return-object v0
.end method
