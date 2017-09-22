.class public final Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;
.super Ljava/lang/Object;
.source "MiuiBluetoothEnabler.java"


# instance fields
.field private final Qu:Lcom/android/b/b/Q;

.field private Sc:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler$1;-><init>(Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0, p2}, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->b(Landroid/preference/CheckBoxPreference;)V

    .line 59
    invoke-static {p1}, Lcom/android/vendorsettings/bluetooth/Utils;->ax(Landroid/content/Context;)Lcom/android/b/b/R;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Qu:Lcom/android/b/b/Q;

    .line 63
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Sc:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 67
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 68
    return-void

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/android/b/b/R;->Af()Lcom/android/b/b/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Qu:Lcom/android/b/b/Q;

    goto :goto_0
.end method


# virtual methods
.method public aD(Z)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Qu:Lcom/android/b/b/Q;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0, p1}, Lcom/android/b/b/Q;->bS(Z)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Sc:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 114
    return-void
.end method

.method public b(Landroid/preference/CheckBoxPreference;)V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Sc:Landroid/preference/CheckBoxPreference;

    .line 93
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Qu:Lcom/android/b/b/Q;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->Ad()I

    move-result v0

    .line 94
    :goto_0
    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    move v3, v1

    .line 95
    :goto_1
    if-ne v0, v4, :cond_3

    move v0, v1

    .line 96
    :goto_2
    iget-object v4, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 97
    iget-object v4, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Sc:Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 98
    return-void

    :cond_2
    move v3, v2

    .line 94
    goto :goto_1

    :cond_3
    move v0, v2

    .line 95
    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_0
.end method

.method bg(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 117
    packed-switch p1, :pswitch_data_0

    .line 133
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 136
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 129
    :pswitch_3
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Qu:Lcom/android/b/b/Q;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Qu:Lcom/android/b/b/Q;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Sc:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->Ad()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->bg(I)V

    .line 79
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/MiuiBluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
