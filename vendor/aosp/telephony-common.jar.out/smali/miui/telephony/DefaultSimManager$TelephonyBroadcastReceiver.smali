.class Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DefaultSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/DefaultSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/DefaultSimManager;


# direct methods
.method private constructor <init>(Lmiui/telephony/DefaultSimManager;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/DefaultSimManager;Lmiui/telephony/DefaultSimManager$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/telephony/DefaultSimManager;
    .param p2, "x1"    # Lmiui/telephony/DefaultSimManager$1;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;-><init>(Lmiui/telephony/DefaultSimManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 270
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-virtual {v0}, Lmiui/telephony/DefaultSimManager;->onDefaultDataSubscriptionChanged()V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v0, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;->this$0:Lmiui/telephony/DefaultSimManager;

    # invokes: Lmiui/telephony/DefaultSimManager;->onDefaultVoiceSubscriptionChanged()V
    invoke-static {v0}, Lmiui/telephony/DefaultSimManager;->access$800(Lmiui/telephony/DefaultSimManager;)V

    goto :goto_0
.end method

.method register(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 263
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    return-void
.end method
