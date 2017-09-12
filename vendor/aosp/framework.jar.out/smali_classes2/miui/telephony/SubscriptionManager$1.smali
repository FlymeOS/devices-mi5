.class Lmiui/telephony/SubscriptionManager$1;
.super Landroid/os/AsyncTask;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/SubscriptionManager;->onSubscriptionInfoChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/SubscriptionManager;


# direct methods
.method constructor <init>(Lmiui/telephony/SubscriptionManager;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lmiui/telephony/SubscriptionManager$1;->this$0:Lmiui/telephony/SubscriptionManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 171
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 174
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager$1;->this$0:Lmiui/telephony/SubscriptionManager;

    const/4 v1, 0x1

    # invokes: Lmiui/telephony/SubscriptionManager;->ensureSubscriptionInfoCache(Z)V
    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->access$000(Lmiui/telephony/SubscriptionManager;Z)V

    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 171
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 180
    iget-object v2, p0, Lmiui/telephony/SubscriptionManager$1;->this$0:Lmiui/telephony/SubscriptionManager;

    # getter for: Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lmiui/telephony/SubscriptionManager;->access$100(Lmiui/telephony/SubscriptionManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 181
    :try_start_0
    iget-object v2, p0, Lmiui/telephony/SubscriptionManager$1;->this$0:Lmiui/telephony/SubscriptionManager;

    # getter for: Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/telephony/SubscriptionManager;->access$200(Lmiui/telephony/SubscriptionManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 182
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isDbg()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MiuiSubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPostExecute size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/telephony/SubscriptionManager$1;->this$0:Lmiui/telephony/SubscriptionManager;

    # getter for: Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lmiui/telephony/SubscriptionManager;->access$200(Lmiui/telephony/SubscriptionManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    iget-object v2, p0, Lmiui/telephony/SubscriptionManager$1;->this$0:Lmiui/telephony/SubscriptionManager;

    # getter for: Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/telephony/SubscriptionManager;->access$200(Lmiui/telephony/SubscriptionManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 184
    .local v1, "l":Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    invoke-interface {v1}, Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    goto :goto_0

    .line 187
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    return-void
.end method
