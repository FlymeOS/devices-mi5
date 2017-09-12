.class Lcom/android/server/policy/MiuiGlobalActions$7;
.super Landroid/os/Handler;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiGlobalActions;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$7;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 321
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 329
    :goto_0
    return-void

    .line 323
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$7;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiGlobalActions;->dismiss()V

    goto :goto_0

    .line 326
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$7;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    # invokes: Lcom/android/server/policy/MiuiGlobalActions;->updateVariables()V
    invoke-static {v0}, Lcom/android/server/policy/MiuiGlobalActions;->access$600(Lcom/android/server/policy/MiuiGlobalActions;)V

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
