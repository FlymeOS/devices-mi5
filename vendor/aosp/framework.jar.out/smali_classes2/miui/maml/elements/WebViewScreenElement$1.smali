.class Lmiui/maml/elements/WebViewScreenElement$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/WebViewScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/WebViewScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/WebViewScreenElement;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lmiui/maml/elements/WebViewScreenElement$1;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    return v0
.end method
