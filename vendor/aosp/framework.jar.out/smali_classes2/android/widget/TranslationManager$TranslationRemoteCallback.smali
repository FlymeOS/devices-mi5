.class Landroid/widget/TranslationManager$TranslationRemoteCallback;
.super Lcom/miui/translationservice/ITranslationRemoteCallback$Stub;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslationRemoteCallback"
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Landroid/widget/TranslationManager;


# direct methods
.method private constructor <init>(Landroid/widget/TranslationManager;)V
    .locals 1

    .prologue
    .line 105
    iput-object p1, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback;->this$0:Landroid/widget/TranslationManager;

    invoke-direct {p0}, Lcom/miui/translationservice/ITranslationRemoteCallback$Stub;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback;->mCancelled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/TranslationManager;
    .param p2, "x1"    # Landroid/widget/TranslationManager$1;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/widget/TranslationManager$TranslationRemoteCallback;-><init>(Landroid/widget/TranslationManager;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback;->mCancelled:Z

    .line 111
    return-void
.end method

.method public onTranslationFinished(Lcom/miui/translationservice/provider/TranslationResult;)V
    .locals 4
    .param p1, "result"    # Lcom/miui/translationservice/provider/TranslationResult;

    .prologue
    .line 115
    iget-boolean v1, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback;->mCancelled:Z

    if-eqz v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback;->this$0:Landroid/widget/TranslationManager;

    # getter for: Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/widget/TranslationManager;->access$600(Landroid/widget/TranslationManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 122
    if-nez p1, :cond_1

    .line 123
    iget-object v1, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback;->this$0:Landroid/widget/TranslationManager;

    # getter for: Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/widget/TranslationManager;->access$600(Landroid/widget/TranslationManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 127
    .local v0, "msg":Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback;->this$0:Landroid/widget/TranslationManager;

    # getter for: Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/widget/TranslationManager;->access$600(Landroid/widget/TranslationManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 125
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback;->this$0:Landroid/widget/TranslationManager;

    # getter for: Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/widget/TranslationManager;->access$600(Landroid/widget/TranslationManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_1
.end method
