.class public Lcom/miui/internal/webkit/WebViewClientDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;
    }
.end annotation


# static fields
.field public static final FEATURE_AUTO_LOGIN:I = 0x2

.field public static final FEATURE_DEEP_LINK:I = 0x1

.field private static final pf:I = -0x1


# instance fields
.field private pg:Z

.field private ph:Z

.field private pi:Lcom/miui/internal/webkit/DeviceAccountLogin;

.field private pj:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/webkit/WebViewClientDelegate;-><init>(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/webkit/WebViewClientDelegate;-><init>(II)V

    .line 49
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pn:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pj:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    .line 52
    and-int v0, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/lit8 v3, v3, -0x1

    or-int/2addr v3, v0

    .line 53
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pg:Z

    .line 54
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->ph:Z

    .line 55
    return-void

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0

    :cond_1
    move v1, v2

    .line 54
    goto :goto_1
.end method


# virtual methods
.method public onPageFinished(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->ph:Z

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pj:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    sget-object v1, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pl:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    if-ne v0, v1, :cond_0

    .line 94
    sget-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pn:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pj:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    .line 95
    iget-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pi:Lcom/miui/internal/webkit/DeviceAccountLogin;

    invoke-virtual {v0}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginPageFinished()V

    goto :goto_0
.end method

.method public onPageStarted(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->ph:Z

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pj:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    sget-object v1, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pk:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    if-ne v0, v1, :cond_0

    .line 85
    sget-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pl:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pj:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    goto :goto_0
.end method

.method public onReceivedLoginRequest(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->ph:Z

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 105
    iget-object v1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pi:Lcom/miui/internal/webkit/DeviceAccountLogin;

    if-nez v1, :cond_1

    .line 106
    new-instance v1, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    invoke-direct {v1, v0, p1}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;-><init>(Landroid/app/Activity;Lcom/miui/internal/hybrid/provider/AbsWebView;)V

    iput-object v1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pi:Lcom/miui/internal/webkit/DeviceAccountLogin;

    .line 108
    :cond_1
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->goBack()V

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 115
    :cond_3
    sget-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->pk:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pj:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    .line 116
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pi:Lcom/miui/internal/webkit/DeviceAccountLogin;

    invoke-virtual {v0, p2, p3, p4}, Lcom/miui/internal/webkit/DeviceAccountLogin;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 58
    iget-boolean v1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->pg:Z

    if-nez v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    invoke-static {p2}, Lcom/miui/internal/util/UrlResolverHelper;->isMiUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 65
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 66
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-static {v1, v2, v3}, Lmiui/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    .line 72
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
