.class Landroid/widget/TranslationManager$1;
.super Landroid/os/AsyncTask;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TranslationManager;


# direct methods
.method constructor <init>(Landroid/widget/TranslationManager;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Landroid/widget/TranslationManager$1;->this$0:Landroid/widget/TranslationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/TranslationManager$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 46
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.miui.translationservice"

    const-string v4, "com.miui.translationservice.TranslationService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/widget/TranslationManager$1;->this$0:Landroid/widget/TranslationManager;

    # getter for: Landroid/widget/TranslationManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/widget/TranslationManager;->access$300(Landroid/widget/TranslationManager;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/widget/TranslationManager$1$1;

    invoke-direct {v3, p0, p1}, Landroid/widget/TranslationManager$1$1;-><init>(Landroid/widget/TranslationManager$1;[Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 63
    .local v1, "isBound":Z
    if-nez v1, :cond_0

    .line 64
    iget-object v2, p0, Landroid/widget/TranslationManager$1;->this$0:Landroid/widget/TranslationManager;

    # invokes: Landroid/widget/TranslationManager;->onTranslationFailed()V
    invoke-static {v2}, Landroid/widget/TranslationManager;->access$400(Landroid/widget/TranslationManager;)V

    .line 67
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
