.class public Lcom/android/vendorsettings/EdgeModeGuideActivity;
.super Lmiui/preference/PreferenceActivity;
.source "EdgeModeGuideActivity.java"


# static fields
.field private static final mp:[I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mq:I

.field private mr:Landroid/preference/CheckBoxPreference;

.field private ms:Landroid/preference/CheckBoxPreference;

.field private mt:Landroid/preference/CheckBoxPreference;

.field private mu:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mp:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c10ed
        0x7f0c10ee
        0x7f0c10ec
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/android/vendorsettings/cP;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/cP;-><init>(Lcom/android/vendorsettings/EdgeModeGuideActivity;)V

    iput-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/EdgeModeGuideActivity;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mu:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/EdgeModeGuideActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dK()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 149
    const v0, 0x7f1300e7

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mu:Landroid/widget/VideoView;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    iget v1, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mq:I

    if-ne v1, v2, :cond_1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mu:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 158
    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mu:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/vendorsettings/cR;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/cR;-><init>(Lcom/android/vendorsettings/EdgeModeGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mu:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mu:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 166
    return-void

    .line 153
    :cond_1
    iget v1, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mq:I

    if-nez v1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mr:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "edge_handgrip_photo"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mt:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 111
    iget-object v3, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "edge_handgrip_clean"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->ms:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->ms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "edge_handgrip_back"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 107
    goto :goto_0

    :cond_4
    move v0, v2

    .line 111
    goto :goto_1

    :cond_5
    move v1, v2

    .line 115
    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f040070

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->setContentView(I)V

    .line 65
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    const-string v1, "edge_mode_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mq:I

    .line 71
    :cond_0
    const v0, 0x7f130061

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mp:[I

    iget v3, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mq:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v0, 0x7f1300e6

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/cQ;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/cQ;-><init>(Lcom/android/vendorsettings/EdgeModeGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 80
    const-string v0, "edge_mode_photo"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mr:Landroid/preference/CheckBoxPreference;

    .line 81
    const-string v0, "edge_mode_back"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->ms:Landroid/preference/CheckBoxPreference;

    .line 82
    const-string v0, "edge_mode_clean"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mt:Landroid/preference/CheckBoxPreference;

    .line 84
    iget v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mq:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mr:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    iput-object v4, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mr:Landroid/preference/CheckBoxPreference;

    .line 88
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mq:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mt:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    iput-object v4, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mt:Landroid/preference/CheckBoxPreference;

    .line 92
    :cond_2
    iget v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mq:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->ms:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->ms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    iput-object v4, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->ms:Landroid/preference/CheckBoxPreference;

    .line 96
    :cond_3
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 123
    const-string v3, "edge_mode_photo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "edge_handgrip_photo"

    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "edge_handgrip_photo"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "edge_handgrip_clean"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "edge_handgrip_back"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    or-int/2addr v0, v3

    if-ne v0, v1, :cond_7

    move v3, v1

    .line 142
    :goto_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "edge_handgrip"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    const-string v0, "input"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 144
    if-ne v3, v1, :cond_1

    const/4 v2, 0x2

    :cond_1
    invoke-static {v0, v2}, Lcom/android/vendorsettings/fs;->a(Landroid/hardware/input/InputManager;I)V

    .line 145
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_2
    move v0, v2

    .line 124
    goto :goto_0

    .line 126
    :cond_3
    const-string v3, "edge_mode_clean"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 127
    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "edge_handgrip_clean"

    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->mt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_3

    .line 129
    :cond_5
    const-string v3, "edge_mode_back"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "edge_handgrip_back"

    iget-object v0, p0, Lcom/android/vendorsettings/EdgeModeGuideActivity;->ms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v3, v2

    .line 140
    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 101
    invoke-direct {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->dK()V

    .line 102
    invoke-direct {p0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->init()V

    .line 103
    return-void
.end method
