.class final Lcom/android/settings/notification/ZenModeConditionSelection$H;
.super Landroid/os/Handler;
.source "ZenModeConditionSelection.java"


# instance fields
.field final synthetic akR:Lcom/android/settings/notification/ZenModeConditionSelection;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeConditionSelection$H;->akR:Lcom/android/settings/notification/ZenModeConditionSelection;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/service/notification/Condition;

    check-cast v0, [Landroid/service/notification/Condition;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->a([Landroid/service/notification/Condition;)V

    .line 163
    :cond_0
    return-void
.end method
