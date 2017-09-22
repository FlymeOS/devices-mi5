.class public Lcom/android/vendorsettings/screenkey/ScreenKeySettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "ScreenKeySettings.java"

# interfaces
.implements Landroid/widget/SortableListView$OnOrderChangedListener;


# instance fields
.field private aoN:Landroid/widget/SortableListView;

.field private aoO:Lcom/android/vendorsettings/screenkey/c;

.field private aoP:Ljava/util/ArrayList;

.field private aoQ:Landroid/preference/PreferenceGroup;

.field private aoR:Lcom/android/vendorsettings/screenkey/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoP:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/screenkey/ScreenKeySettings;)Landroid/widget/SortableListView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoN:Landroid/widget/SortableListView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/screenkey/ScreenKeySettings;Landroid/widget/SortableListView;)Landroid/widget/SortableListView;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoN:Landroid/widget/SortableListView;

    return-object p1
.end method

.method static synthetic b(Lcom/android/vendorsettings/screenkey/ScreenKeySettings;)Lcom/android/vendorsettings/screenkey/c;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoO:Lcom/android/vendorsettings/screenkey/c;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/screenkey/ScreenKeySettings;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoP:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public OnOrderChanged(II)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoP:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoP:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoR:Lcom/android/vendorsettings/screenkey/a;

    iget-object v1, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoP:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/screenkey/a;->d(Ljava/util/ArrayList;)V

    .line 115
    iget-object v0, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoO:Lcom/android/vendorsettings/screenkey/c;

    invoke-virtual {v0}, Lcom/android/vendorsettings/screenkey/c;->notifyDataSetChanged()V

    .line 116
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoP:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->addPreferencesFromResource(I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getScreenKeyOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoP:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/android/vendorsettings/screenkey/a;

    invoke-virtual {p0}, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/screenkey/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoR:Lcom/android/vendorsettings/screenkey/a;

    .line 44
    iget-object v0, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoR:Lcom/android/vendorsettings/screenkey/a;

    iget-object v1, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoP:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/screenkey/a;->d(Ljava/util/ArrayList;)V

    .line 46
    new-instance v0, Lcom/android/vendorsettings/screenkey/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/screenkey/c;-><init>(Lcom/android/vendorsettings/screenkey/ScreenKeySettings;Lcom/android/vendorsettings/screenkey/b;)V

    iput-object v0, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoO:Lcom/android/vendorsettings/screenkey/c;

    .line 47
    const-string v0, "key_position_custom"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoQ:Landroid/preference/PreferenceGroup;

    .line 48
    iget-object v0, p0, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->aoQ:Landroid/preference/PreferenceGroup;

    new-instance v1, Lcom/android/vendorsettings/screenkey/d;

    invoke-virtual {p0}, Lcom/android/vendorsettings/screenkey/ScreenKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/vendorsettings/screenkey/d;-><init>(Lcom/android/vendorsettings/screenkey/ScreenKeySettings;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V

    .line 49
    return-void
.end method
