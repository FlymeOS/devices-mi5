.class Lmiui/maml/elements/WebViewScreenElement$8;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/WebViewScreenElement;->pauseWebView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/WebViewScreenElement;

.field final synthetic val$pause:Z


# direct methods
.method constructor <init>(Lmiui/maml/elements/WebViewScreenElement;Z)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lmiui/maml/elements/WebViewScreenElement$8;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    iput-boolean p2, p0, Lmiui/maml/elements/WebViewScreenElement$8;->val$pause:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement$8;->val$pause:Z

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$8;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    # getter for: Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lmiui/maml/elements/WebViewScreenElement;->access$100(Lmiui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$8;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    # getter for: Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lmiui/maml/elements/WebViewScreenElement;->access$100(Lmiui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    goto :goto_0
.end method
