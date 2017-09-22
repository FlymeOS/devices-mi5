.class Lcom/android/vendorsettings/w;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# instance fields
.field final synthetic aT:Lcom/android/vendorsettings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ApnSettings;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/vendorsettings/w;->aT:Lcom/android/vendorsettings/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p2}, Lcom/android/vendorsettings/ApnSettings;->d(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/android/vendorsettings/x;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    # getter for: Lcom/android/vendorsettings/ApnSettings;->aG:Z
    invoke-static {}, Lcom/android/vendorsettings/ApnSettings;->access$100()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/w;->aT:Lcom/android/vendorsettings/ApnSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/ApnSettings;->a(Lcom/android/vendorsettings/ApnSettings;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/w;->aT:Lcom/android/vendorsettings/ApnSettings;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
