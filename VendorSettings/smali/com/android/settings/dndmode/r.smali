.class public Lcom/android/vendorsettings/dndmode/r;
.super Lcom/android/vendorsettings/dndmode/q;
.source "QuietActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aaK:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

.field private aaL:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

.field private aaM:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

.field private aaN:Landroid/database/ContentObserver;

.field private aav:Lmiui/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/vendorsettings/dndmode/q;-><init>()V

    .line 41
    new-instance v0, Lcom/android/vendorsettings/dndmode/s;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/dndmode/s;-><init>(Lcom/android/vendorsettings/dndmode/r;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaN:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/dndmode/r;)Lmiui/app/Activity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aav:Lmiui/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/dndmode/r;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/dndmode/r;->bX(I)V

    return-void
.end method

.method private bX(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaK:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->setChecked(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaL:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->setChecked(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaM:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->setChecked(Z)V

    .line 79
    packed-switch p1, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaK:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->setChecked(Z)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaM:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->setChecked(Z)V

    goto :goto_0

    .line 90
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaL:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->setChecked(Z)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v2, "silent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    const-string v0, "switch"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aav:Lmiui/app/Activity;

    invoke-virtual {v0, v1}, Lmiui/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void

    .line 113
    :cond_1
    const-string v2, "quiet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "switch"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/android/vendorsettings/dndmode/q;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/dndmode/r;->addPreferencesFromResource(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/vendorsettings/dndmode/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/app/Activity;

    iput-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aav:Lmiui/app/Activity;

    .line 57
    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/dndmode/r;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    iput-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaK:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    .line 58
    const-string v0, "silent"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/dndmode/r;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    iput-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaL:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    .line 59
    const-string v0, "quiet"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/dndmode/r;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    iput-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaM:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    .line 61
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaK:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaK:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->bY(I)V

    .line 63
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaL:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaL:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->b(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaM:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aaM:Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->b(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/vendorsettings/dndmode/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/dndmode/r;->aaN:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aav:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 72
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/dndmode/r;->bX(I)V

    .line 73
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    const-string v0, "off"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aav:Lmiui/app/Activity;

    invoke-static {v0, v2}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;I)V

    .line 104
    :cond_0
    :goto_0
    return v2

    .line 99
    :cond_1
    const-string v0, "silent"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aav:Lmiui/app/Activity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 101
    :cond_2
    const-string v0, "quiet"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/r;->aav:Lmiui/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;I)V

    goto :goto_0
.end method
