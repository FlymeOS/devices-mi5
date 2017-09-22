.class public Lcom/android/vendorsettings/notification/SettingPref;
.super Ljava/lang/Object;
.source "SettingPref.java"


# instance fields
.field protected final akn:Ljava/lang/String;

.field protected final ako:I

.field private final akp:[I

.field protected akq:Landroid/preference/TwoStatePreference;

.field protected akr:Lcom/android/vendorsettings/DropDownPreference;

.field private final mKey:Ljava/lang/String;

.field protected final mType:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/vendorsettings/notification/SettingPref;->mType:I

    .line 49
    iput-object p2, p0, Lcom/android/vendorsettings/notification/SettingPref;->mKey:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/android/vendorsettings/notification/SettingPref;->akn:Ljava/lang/String;

    .line 51
    iput p4, p0, Lcom/android/vendorsettings/notification/SettingPref;->ako:I

    .line 52
    iput-object p5, p0, Lcom/android/vendorsettings/notification/SettingPref;->akp:[I

    .line 53
    iget v0, p0, Lcom/android/vendorsettings/notification/SettingPref;->mType:I

    iget-object v1, p0, Lcom/android/vendorsettings/notification/SettingPref;->akn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/notification/SettingPref;->g(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/SettingPref;->mUri:Landroid/net/Uri;

    .line 54
    return-void
.end method

.method protected static a(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 134
    packed-switch p0, :pswitch_data_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 136
    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 138
    :goto_0
    return v0

    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static b(ILandroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 144
    packed-switch p0, :pswitch_data_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 146
    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 148
    :goto_0
    return v0

    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static g(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 124
    packed-switch p0, :pswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 126
    :pswitch_0
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected b(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bN(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public bQ(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 115
    iget v0, p0, Lcom/android/vendorsettings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/notification/SettingPref;->akn:Ljava/lang/String;

    iget v3, p0, Lcom/android/vendorsettings/notification/SettingPref;->ako:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/vendorsettings/notification/SettingPref;->b(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/android/vendorsettings/notification/SettingPref;->akq:Landroid/preference/TwoStatePreference;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/android/vendorsettings/notification/SettingPref;->akq:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 121
    :cond_0
    :goto_1
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/notification/SettingPref;->akr:Lcom/android/vendorsettings/DropDownPreference;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/vendorsettings/notification/SettingPref;->akr:Lcom/android/vendorsettings/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/DropDownPreference;->o(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public c(Lcom/android/vendorsettings/SettingsPreferenceFragment;)Landroid/preference/Preference;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 66
    invoke-virtual {p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/notification/SettingPref;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/notification/SettingPref;->bN(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object v1, v2

    .line 71
    :cond_0
    instance-of v0, v1, Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 72
    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/SettingPref;->akq:Landroid/preference/TwoStatePreference;

    .line 79
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/notification/SettingPref;->bQ(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/android/vendorsettings/notification/SettingPref;->akq:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_4

    .line 81
    new-instance v0, Lcom/android/vendorsettings/notification/SettingPref$1;

    invoke-direct {v0, p0, v3}, Lcom/android/vendorsettings/notification/SettingPref$1;-><init>(Lcom/android/vendorsettings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    iget-object v2, p0, Lcom/android/vendorsettings/notification/SettingPref;->akq:Landroid/preference/TwoStatePreference;

    .line 99
    :cond_2
    :goto_0
    return-object v2

    .line 73
    :cond_3
    instance-of v0, v1, Lcom/android/vendorsettings/DropDownPreference;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 74
    check-cast v0, Lcom/android/vendorsettings/DropDownPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/SettingPref;->akr:Lcom/android/vendorsettings/DropDownPreference;

    .line 75
    iget-object v4, p0, Lcom/android/vendorsettings/notification/SettingPref;->akp:[I

    array-length v5, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    aget v6, v4, v0

    .line 76
    iget-object v7, p0, Lcom/android/vendorsettings/notification/SettingPref;->akr:Lcom/android/vendorsettings/DropDownPreference;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0, v8, v6}, Lcom/android/vendorsettings/notification/SettingPref;->b(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lcom/android/vendorsettings/DropDownPreference;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/notification/SettingPref;->akr:Lcom/android/vendorsettings/DropDownPreference;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/android/vendorsettings/notification/SettingPref;->akr:Lcom/android/vendorsettings/DropDownPreference;

    new-instance v1, Lcom/android/vendorsettings/notification/SettingPref$2;

    invoke-direct {v1, p0, v3}, Lcom/android/vendorsettings/notification/SettingPref$2;-><init>(Lcom/android/vendorsettings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/DropDownPreference;->a(Lcom/android/vendorsettings/cO;)V

    .line 97
    iget-object v2, p0, Lcom/android/vendorsettings/notification/SettingPref;->akr:Lcom/android/vendorsettings/DropDownPreference;

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/vendorsettings/notification/SettingPref;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/vendorsettings/notification/SettingPref;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected r(Landroid/content/Context;I)Z
    .locals 3

    .prologue
    .line 103
    iget v0, p0, Lcom/android/vendorsettings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/notification/SettingPref;->akn:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/android/vendorsettings/notification/SettingPref;->a(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
