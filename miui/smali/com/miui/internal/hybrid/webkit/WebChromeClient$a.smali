.class Lcom/miui/internal/hybrid/webkit/WebChromeClient$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/hybrid/webkit/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic fU:Lcom/miui/internal/hybrid/webkit/WebChromeClient;


# direct methods
.method constructor <init>(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$a;->fU:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$a;->fU:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    new-instance v1, Lcom/miui/internal/hybrid/webkit/GeolocationPermissionsCallback;

    invoke-direct {v1, p2}, Lcom/miui/internal/hybrid/webkit/GeolocationPermissionsCallback;-><init>(Landroid/webkit/GeolocationPermissions$Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiui/hybrid/GeolocationPermissions$Callback;)V

    .line 85
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/miui/internal/hybrid/webkit/JsResult;

    invoke-direct {v0, p4}, Lcom/miui/internal/hybrid/webkit/JsResult;-><init>(Landroid/webkit/JsResult;)V

    .line 65
    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$a;->fU:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    iget-object v2, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$a;->fU:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-static {v2}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->a(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, v0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onJsAlert(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/miui/internal/hybrid/webkit/JsResult;

    invoke-direct {v0, p4}, Lcom/miui/internal/hybrid/webkit/JsResult;-><init>(Landroid/webkit/JsResult;)V

    .line 72
    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$a;->fU:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    iget-object v2, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$a;->fU:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-static {v2}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->b(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, v0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onJsConfirm(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$a;->fU:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$a;->fU:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-static {v1}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->c(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onProgressChanged(Lmiui/hybrid/HybridView;I)V

    .line 78
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$a;->fU:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$a;->fU:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-static {v1}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->d(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onReceivedTitle(Lmiui/hybrid/HybridView;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/miui/internal/hybrid/webkit/ValueCallback;

    invoke-direct {v0, p1}, Lcom/miui/internal/hybrid/webkit/ValueCallback;-><init>(Landroid/webkit/ValueCallback;)V

    .line 95
    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$a;->fU:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-virtual {v1, v0, p2, p3}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->openFileChooser(Lmiui/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method
