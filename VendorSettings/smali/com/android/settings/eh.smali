.class Lcom/android/vendorsettings/eh;
.super Landroid/content/BroadcastReceiver;
.source "MiuiCryptKeeperSettings.java"


# instance fields
.field final synthetic ql:Lcom/android/vendorsettings/MiuiCryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiCryptKeeperSettings;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/vendorsettings/eh;->ql:Lcom/android/vendorsettings/MiuiCryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const-string v0, "level"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 91
    const-string v3, "plugged"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 92
    const-string v3, "invalid_charger"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 94
    const-string v3, "vold.pfe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    const-string v6, "activated"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 96
    const/16 v3, 0x50

    if-lt v0, v3, :cond_2

    move v3, v1

    .line 97
    :goto_0
    and-int/lit8 v0, v4, 0x7

    if-eqz v0, :cond_3

    if-nez v5, :cond_3

    move v0, v1

    .line 102
    :goto_1
    iget-object v4, p0, Lcom/android/vendorsettings/eh;->ql:Lcom/android/vendorsettings/MiuiCryptKeeperSettings;

    invoke-static {v4}, Lcom/android/vendorsettings/MiuiCryptKeeperSettings;->a(Lcom/android/vendorsettings/MiuiCryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v4

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    if-nez v6, :cond_4

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    iget-object v1, p0, Lcom/android/vendorsettings/eh;->ql:Lcom/android/vendorsettings/MiuiCryptKeeperSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/MiuiCryptKeeperSettings;->b(Lcom/android/vendorsettings/MiuiCryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v3, :cond_5

    const v1, 0x7f0c021c

    :goto_3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/android/vendorsettings/eh;->ql:Lcom/android/vendorsettings/MiuiCryptKeeperSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/MiuiCryptKeeperSettings;->b(Lcom/android/vendorsettings/MiuiCryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :cond_1
    return-void

    :cond_2
    move v3, v2

    .line 96
    goto :goto_0

    :cond_3
    move v0, v2

    .line 97
    goto :goto_1

    :cond_4
    move v1, v2

    .line 102
    goto :goto_2

    .line 103
    :cond_5
    const v1, 0x7f0c021b

    goto :goto_3
.end method
