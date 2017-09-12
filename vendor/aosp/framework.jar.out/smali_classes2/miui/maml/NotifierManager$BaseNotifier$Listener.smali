.class Lmiui/maml/NotifierManager$BaseNotifier$Listener;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager$BaseNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Listener"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public intent:Landroid/content/Intent;

.field public obj:Ljava/lang/Object;

.field private paused:Z

.field private pendingNotify:Z

.field public ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/NotifierManager$OnNotifyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/maml/NotifierManager$OnNotifyListener;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/NotifierManager$BaseNotifier$Listener;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    .prologue
    .line 131
    iget-boolean v0, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    return v0
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "inte"    # Landroid/content/Intent;
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 144
    iget-boolean v1, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    if-eqz v1, :cond_1

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->pendingNotify:Z

    .line 146
    iput-object p1, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->context:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->intent:Landroid/content/Intent;

    .line 148
    iput-object p3, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->obj:Ljava/lang/Object;

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/NotifierManager$OnNotifyListener;

    .line 151
    .local v0, "l":Lmiui/maml/NotifierManager$OnNotifyListener;
    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0, p1, p2, p3}, Lmiui/maml/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    .line 159
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 163
    iput-boolean v5, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    .line 164
    iget-boolean v1, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->pendingNotify:Z

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/NotifierManager$OnNotifyListener;

    .line 166
    .local v0, "l":Lmiui/maml/NotifierManager$OnNotifyListener;
    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->context:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->intent:Landroid/content/Intent;

    iget-object v3, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lmiui/maml/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 168
    iput-boolean v5, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->pendingNotify:Z

    .line 169
    iput-object v4, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->context:Landroid/content/Context;

    .line 170
    iput-object v4, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->intent:Landroid/content/Intent;

    .line 171
    iput-object v4, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->obj:Ljava/lang/Object;

    .line 174
    .end local v0    # "l":Lmiui/maml/NotifierManager$OnNotifyListener;
    :cond_0
    return-void
.end method
