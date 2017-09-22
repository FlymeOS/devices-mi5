.class public Lmiui/hybrid/HybridView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final yk:I = 0x0

.field private static final yl:I = 0x1

.field private static final ym:I = 0x2


# instance fields
.field private fh:Lcom/miui/internal/hybrid/HybridManager;

.field private fv:Z

.field private pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

.field private xZ:Lmiui/widget/ProgressBar;

.field private ya:Lcom/miui/internal/hybrid/HybridProgressView;

.field private yb:Landroid/view/ViewGroup;

.field private yc:Landroid/widget/Button;

.field private yd:Landroid/widget/TextView;

.field private ye:Lcom/miui/internal/hybrid/WebContainerView;

.field private yf:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

.field private yg:Lmiui/hybrid/HybridSettings;

.field private yh:I

.field private yi:Z

.field private yj:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    sget-object v0, Lmiui/R$styleable;->HybridViewStyle:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    sget v1, Lmiui/R$styleable;->HybridViewStyle_hybridProgressBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lmiui/hybrid/HybridView;->yh:I

    .line 69
    sget v1, Lmiui/R$styleable;->HybridViewStyle_hybridErrorPage:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/hybrid/HybridView;->yi:Z

    .line 70
    sget v1, Lmiui/R$styleable;->HybridViewStyle_hybridPullable:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/hybrid/HybridView;->fv:Z

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-virtual {p0}, Lmiui/hybrid/HybridView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 76
    sget v1, Lcom/miui/internal/R$layout;->hybrid_view_layout:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    invoke-static {p1}, Lcom/miui/internal/hybrid/provider/WebViewFactory;->getProvider(Landroid/content/Context;)Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    move-result-object v0

    iput-object v0, p0, Lmiui/hybrid/HybridView;->yf:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    .line 79
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yf:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;->createWebView(Landroid/content/Context;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object v0

    iput-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    .line 81
    sget v0, Lcom/miui/internal/R$id;->webContainer:I

    invoke-virtual {p0, v0}, Lmiui/hybrid/HybridView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/hybrid/WebContainerView;

    iput-object v0, p0, Lmiui/hybrid/HybridView;->ye:Lcom/miui/internal/hybrid/WebContainerView;

    .line 82
    iget-object v0, p0, Lmiui/hybrid/HybridView;->ye:Lcom/miui/internal/hybrid/WebContainerView;

    iget-object v1, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getBaseWebView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/WebContainerView;->setWebView(Landroid/view/View;)V

    .line 84
    iget v0, p0, Lmiui/hybrid/HybridView;->yh:I

    if-ne v0, v3, :cond_2

    .line 85
    sget v0, Lcom/miui/internal/R$id;->progress_circular:I

    invoke-virtual {p0, v0}, Lmiui/hybrid/HybridView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lmiui/hybrid/HybridView;->xZ:Lmiui/widget/ProgressBar;

    .line 90
    :cond_0
    :goto_0
    sget v0, Lcom/miui/internal/R$id;->hybrid_provider:I

    invoke-virtual {p0, v0}, Lmiui/hybrid/HybridView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/hybrid/HybridView;->yd:Landroid/widget/TextView;

    .line 91
    iget-boolean v0, p0, Lmiui/hybrid/HybridView;->fv:Z

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yd:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :cond_1
    return-void

    .line 86
    :cond_2
    iget v0, p0, Lmiui/hybrid/HybridView;->yh:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 87
    sget v0, Lcom/miui/internal/R$id;->progress_horizontal:I

    invoke-virtual {p0, v0}, Lmiui/hybrid/HybridView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/hybrid/HybridProgressView;

    iput-object v0, p0, Lmiui/hybrid/HybridView;->ya:Lcom/miui/internal/hybrid/HybridProgressView;

    goto :goto_0
.end method

.method private D(I)V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yb:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 244
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 245
    iget-object v2, p0, Lmiui/hybrid/HybridView;->yb:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method

.method static synthetic a(Lmiui/hybrid/HybridView;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lmiui/hybrid/HybridView;->D(I)V

    return-void
.end method


# virtual methods
.method A(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 250
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yd:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lmiui/hybrid/HybridView;->yd:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/hybrid/HybridView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$string;->hybrid_provider:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/hybrid/provider/AbsWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method bY()Lcom/miui/internal/hybrid/HybridManager;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lmiui/hybrid/HybridView;->fh:Lcom/miui/internal/hybrid/HybridManager;

    return-object v0
.end method

.method bZ()Lcom/miui/internal/hybrid/provider/AbsWebView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    return-object v0
.end method

.method ca()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-boolean v0, p0, Lmiui/hybrid/HybridView;->yi:Z

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yb:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 215
    sget v0, Lcom/miui/internal/R$id;->webview_reload_stub:I

    invoke-virtual {p0, v0}, Lmiui/hybrid/HybridView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 216
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiui/hybrid/HybridView;->yb:Landroid/view/ViewGroup;

    .line 217
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yb:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->reload:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiui/hybrid/HybridView;->yc:Landroid/widget/Button;

    .line 218
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yc:Landroid/widget/Button;

    new-instance v1, Lmiui/hybrid/HybridView$1;

    invoke-direct {v1, p0}, Lmiui/hybrid/HybridView$1;-><init>(Lmiui/hybrid/HybridView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :cond_1
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yb:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 227
    invoke-direct {p0, v2}, Lmiui/hybrid/HybridView;->D(I)V

    .line 228
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method cb()V
    .locals 2

    .prologue
    .line 232
    iget-boolean v0, p0, Lmiui/hybrid/HybridView;->yi:Z

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yb:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yb:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 239
    :cond_1
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->clearCache(Z)V

    .line 145
    return-void
.end method

.method public copyBackForwardList()Lmiui/hybrid/HybridBackForwardList;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->copyBackForwardList()Lmiui/hybrid/HybridBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->destroy()V

    .line 137
    return-void
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getScale()F

    move-result v0

    return v0
.end method

.method public getSettings()Lmiui/hybrid/HybridSettings;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yg:Lmiui/hybrid/HybridSettings;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getSettings()Lmiui/hybrid/HybridSettings;

    move-result-object v0

    iput-object v0, p0, Lmiui/hybrid/HybridView;->yg:Lmiui/hybrid/HybridSettings;

    .line 132
    :cond_0
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yg:Lmiui/hybrid/HybridSettings;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->goBack()V

    .line 153
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->loadUrl(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method p(Z)V
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lmiui/hybrid/HybridView;->yj:Z

    .line 207
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->reload()V

    .line 141
    return-void
.end method

.method public setHybridChromeClient(Lmiui/hybrid/HybridChromeClient;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lmiui/hybrid/HybridView;->fh:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridChromeClient;->setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V

    .line 116
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yf:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;->createWebChromeClient(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setWebChromeClient(Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;)V

    .line 118
    return-void
.end method

.method setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lmiui/hybrid/HybridView;->fh:Lcom/miui/internal/hybrid/HybridManager;

    .line 102
    return-void
.end method

.method public setHybridViewClient(Lmiui/hybrid/HybridViewClient;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lmiui/hybrid/HybridView;->fh:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridViewClient;->setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V

    .line 110
    iget-object v0, p0, Lmiui/hybrid/HybridView;->yf:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;->createWebViewClient(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebViewClient;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lmiui/hybrid/HybridView;->pa:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setWebViewClient(Lcom/miui/internal/hybrid/provider/AbsWebViewClient;)V

    .line 112
    return-void
.end method

.method setProgress(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 164
    const/16 v0, 0x50

    if-le p1, v0, :cond_0

    iget-boolean v0, p0, Lmiui/hybrid/HybridView;->yj:Z

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lmiui/hybrid/HybridView;->cb()V

    .line 168
    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 169
    iget-object v0, p0, Lmiui/hybrid/HybridView;->ye:Lcom/miui/internal/hybrid/WebContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/WebContainerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :cond_1
    iget-object v0, p0, Lmiui/hybrid/HybridView;->xZ:Lmiui/widget/ProgressBar;

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiui/hybrid/HybridView;->ya:Lcom/miui/internal/hybrid/HybridProgressView;

    if-nez v0, :cond_3

    .line 203
    :cond_2
    :goto_0
    return-void

    .line 176
    :cond_3
    iget v0, p0, Lmiui/hybrid/HybridView;->yh:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 177
    iget-object v0, p0, Lmiui/hybrid/HybridView;->xZ:Lmiui/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lmiui/hybrid/HybridView;->xZ:Lmiui/widget/ProgressBar;

    invoke-virtual {v0}, Lmiui/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 182
    iget-object v0, p0, Lmiui/hybrid/HybridView;->xZ:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v3}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 185
    :cond_4
    iget-object v0, p0, Lmiui/hybrid/HybridView;->xZ:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, p1}, Lmiui/widget/ProgressBar;->setProgress(I)V

    .line 186
    iget-object v0, p0, Lmiui/hybrid/HybridView;->xZ:Lmiui/widget/ProgressBar;

    invoke-virtual {v0}, Lmiui/widget/ProgressBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 187
    iget-object v0, p0, Lmiui/hybrid/HybridView;->xZ:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v2}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 189
    :cond_5
    iget v0, p0, Lmiui/hybrid/HybridView;->yh:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 190
    iget-object v0, p0, Lmiui/hybrid/HybridView;->ya:Lcom/miui/internal/hybrid/HybridProgressView;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lmiui/hybrid/HybridView;->ya:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 195
    iget-object v0, p0, Lmiui/hybrid/HybridView;->ya:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/hybrid/HybridProgressView;->setVisibility(I)V

    .line 198
    :cond_6
    iget-object v0, p0, Lmiui/hybrid/HybridView;->ya:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/HybridProgressView;->setProgress(I)V

    .line 199
    iget-object v0, p0, Lmiui/hybrid/HybridView;->ya:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 200
    iget-object v0, p0, Lmiui/hybrid/HybridView;->ya:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/hybrid/HybridProgressView;->setVisibility(I)V

    goto :goto_0
.end method
