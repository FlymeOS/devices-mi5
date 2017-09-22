.class public Lmiui/hybrid/HybridChromeClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fh:Lcom/miui/internal/hybrid/HybridManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiui/hybrid/GeolocationPermissions$Callback;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onJsAlert(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmiui/hybrid/HybridChromeClient;->fh:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v1}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lmiui/hybrid/HybridChromeClient$3;

    invoke-direct {v2, p0, p4}, Lmiui/hybrid/HybridChromeClient$3;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmiui/hybrid/HybridChromeClient$2;

    invoke-direct {v1, p0, p4}, Lmiui/hybrid/HybridChromeClient$2;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmiui/hybrid/HybridChromeClient$1;

    invoke-direct {v1, p0, p4}, Lmiui/hybrid/HybridChromeClient$1;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmiui/hybrid/HybridChromeClient;->fh:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v1}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lmiui/hybrid/HybridChromeClient$7;

    invoke-direct {v2, p0, p4}, Lmiui/hybrid/HybridChromeClient$7;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lmiui/hybrid/HybridChromeClient$6;

    invoke-direct {v2, p0, p4}, Lmiui/hybrid/HybridChromeClient$6;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmiui/hybrid/HybridChromeClient$5;

    invoke-direct {v1, p0, p4}, Lmiui/hybrid/HybridChromeClient$5;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmiui/hybrid/HybridChromeClient$4;

    invoke-direct {v1, p0, p4}, Lmiui/hybrid/HybridChromeClient$4;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Lmiui/hybrid/HybridView;I)V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p1, p2}, Lmiui/hybrid/HybridView;->setProgress(I)V

    .line 90
    return-void
.end method

.method public onReceivedTitle(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public openFileChooser(Lmiui/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/hybrid/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lmiui/hybrid/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lmiui/hybrid/HybridChromeClient;->fh:Lcom/miui/internal/hybrid/HybridManager;

    .line 23
    return-void
.end method
