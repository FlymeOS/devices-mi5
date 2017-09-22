.class Lcom/android/vendorsettings/sound/m;
.super Ljava/lang/Object;
.source "AudioSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aqt:Lcom/android/vendorsettings/sound/k;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sound/k;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/vendorsettings/sound/m;->aqt:Lcom/android/vendorsettings/sound/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 250
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 251
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-object v2, p0, Lcom/android/vendorsettings/sound/m;->aqt:Lcom/android/vendorsettings/sound/k;

    iget-object v2, v2, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v2}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->c(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-object v2, p0, Lcom/android/vendorsettings/sound/m;->aqt:Lcom/android/vendorsettings/sound/k;

    iget-object v2, v2, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v2}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->d(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget-object v2, p0, Lcom/android/vendorsettings/sound/m;->aqt:Lcom/android/vendorsettings/sound/k;

    iget-object v2, v2, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v2}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->b(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string v0, "android.intent.extra.ringtone.TITLE"

    iget-object v2, p0, Lcom/android/vendorsettings/sound/m;->aqt:Lcom/android/vendorsettings/sound/k;

    iget-object v2, v2, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-virtual {v2}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 255
    const-string v0, "com.android.thememanager"

    const-string v2, "com.android.thememanager.activity.ThemeTabActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v0, p0, Lcom/android/vendorsettings/sound/m;->aqt:Lcom/android/vendorsettings/sound/k;

    iget-object v0, v0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->b(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 268
    :pswitch_0
    const-string v0, "notification"

    .line 271
    :goto_0
    const-string v2, "REQUEST_RESOURCE_CODE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    iget-object v0, p0, Lcom/android/vendorsettings/sound/m;->aqt:Lcom/android/vendorsettings/sound/k;

    iget-object v0, v0, Lcom/android/vendorsettings/sound/k;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 273
    return-void

    .line 259
    :pswitch_1
    const-string v0, "ringtone"

    goto :goto_0

    .line 262
    :pswitch_2
    const-string v0, "notification"

    goto :goto_0

    .line 265
    :pswitch_3
    const-string v0, "alarm"

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
