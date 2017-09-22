.class Lcom/android/settings/aj;
.super Landroid/content/BroadcastReceiver;
.source "BatteryInfo.java"


# instance fields
.field final synthetic cJ:Lcom/android/settings/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/BatteryInfo;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "plugged"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    invoke-static {v1}, Lcom/android/settings/BatteryInfo;->b(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "level"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    invoke-static {v1}, Lcom/android/settings/BatteryInfo;->c(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scale"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    invoke-static {v1}, Lcom/android/settings/BatteryInfo;->d(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "voltage"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const v4, 0x7f0c1126

    invoke-virtual {v3, v4}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    invoke-static {v1}, Lcom/android/settings/BatteryInfo;->e(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const-string v4, "temperature"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/BatteryInfo;->a(Lcom/android/settings/BatteryInfo;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const v4, 0x7f0c1128    # 1.86181E38f

    invoke-virtual {v3, v4}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    invoke-static {v1}, Lcom/android/settings/BatteryInfo;->f(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "technology"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    invoke-static {v1}, Lcom/android/settings/BatteryInfo;->g(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    invoke-virtual {v2}, Lcom/android/settings/BatteryInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/settings/iC;->a(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    packed-switch v0, :pswitch_data_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    invoke-static {v0}, Lcom/android/settings/BatteryInfo;->h(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const v2, 0x7f0c1132

    invoke-virtual {v1, v2}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    const-string v0, "health"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 121
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const v1, 0x7f0c1134

    invoke-virtual {v0, v1}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_1
    iget-object v1, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    invoke-static {v1}, Lcom/android/settings/BatteryInfo;->i(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    invoke-static {v0}, Lcom/android/settings/BatteryInfo;->h(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const v2, 0x7f0c112d

    invoke-virtual {v1, v2}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    invoke-static {v0}, Lcom/android/settings/BatteryInfo;->h(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const v2, 0x7f0c112e

    invoke-virtual {v1, v2}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    invoke-static {v0}, Lcom/android/settings/BatteryInfo;->h(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const v2, 0x7f0c112f

    invoke-virtual {v1, v2}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    invoke-static {v0}, Lcom/android/settings/BatteryInfo;->h(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const v2, 0x7f0c1130

    invoke-virtual {v1, v2}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    invoke-static {v0}, Lcom/android/settings/BatteryInfo;->h(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const v2, 0x7f0c1131

    invoke-virtual {v1, v2}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 124
    iget-object v0, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const v1, 0x7f0c1135

    invoke-virtual {v0, v1}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 125
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 126
    iget-object v0, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const v1, 0x7f0c1136

    invoke-virtual {v0, v1}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 127
    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 128
    iget-object v0, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const v1, 0x7f0c1137

    invoke-virtual {v0, v1}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 129
    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 130
    iget-object v0, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const v1, 0x7f0c1138

    invoke-virtual {v0, v1}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 131
    :cond_5
    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 132
    iget-object v0, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const v1, 0x7f0c1139

    invoke-virtual {v0, v1}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 134
    :cond_6
    iget-object v0, p0, Lcom/android/settings/aj;->cJ:Lcom/android/settings/BatteryInfo;

    const v1, 0x7f0c1133

    invoke-virtual {v0, v1}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
