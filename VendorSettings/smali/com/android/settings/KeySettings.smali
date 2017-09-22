.class public Lcom/android/settings/KeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KeySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private jb:Landroid/view/IWindowManager;

.field private oA:Landroid/preference/CheckBoxPreference;

.field private oB:Landroid/preference/ListPreference;

.field private on:Landroid/preference/Preference;

.field private oo:Landroid/preference/ListPreference;

.field private op:Landroid/preference/ListPreference;

.field private oq:Landroid/preference/ListPreference;

.field private or:Landroid/preference/ListPreference;

.field private os:Landroid/preference/ListPreference;

.field private ot:Landroid/preference/ListPreference;

.field private ou:Landroid/preference/ListPreference;

.field private ov:Landroid/preference/CheckBoxPreference;

.field private ow:Landroid/preference/CheckBoxPreference;

.field private ox:Landroid/preference/CheckBoxPreference;

.field private oy:Landroid/preference/CheckBoxPreference;

.field private oz:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_key_press_app_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 332
    iget-object v3, p0, Lcom/android/settings/KeySettings;->oo:Landroid/preference/ListPreference;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/KeySettings;->oo:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v2

    :goto_0
    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oo:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/KeySettings;->oo:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_key_long_press_timeout"

    const/16 v4, 0x1f4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 341
    iget-object v3, p0, Lcom/android/settings/KeySettings;->os:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/KeySettings;->os:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/KeySettings;->os:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->et()V

    .line 345
    const-string v0, "screen_key_long_press_app_switch"

    iget-object v3, p0, Lcom/android/settings/KeySettings;->op:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/KeySettings;->b(Ljava/lang/String;Landroid/preference/ListPreference;)V

    .line 346
    const-string v0, "screen_key_long_press_home"

    iget-object v3, p0, Lcom/android/settings/KeySettings;->oq:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/KeySettings;->b(Ljava/lang/String;Landroid/preference/ListPreference;)V

    .line 347
    const-string v0, "screen_key_long_press_back"

    iget-object v3, p0, Lcom/android/settings/KeySettings;->or:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/KeySettings;->b(Ljava/lang/String;Landroid/preference/ListPreference;)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ou:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "persist.sys.handswap"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v3, p0, Lcom/android/settings/KeySettings;->ou:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ou:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/KeySettings;->ou:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oB:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_buttons_timeout"

    const/16 v4, 0x1388

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 360
    iget-object v3, p0, Lcom/android/settings/KeySettings;->oB:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oB:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/KeySettings;->oB:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ov:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 365
    iget-object v3, p0, Lcom/android/settings/KeySettings;->ov:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "screen_buttons_turn_on"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ow:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "fingerprint_nav_center_action"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 373
    iget-object v3, p0, Lcom/android/settings/KeySettings;->ow:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "single_key_use_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 379
    iget-object v3, p0, Lcom/android/settings/KeySettings;->ox:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_b

    :goto_3
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oy:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 383
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->ev()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 385
    :cond_5
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oz:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 386
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->eu()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 388
    :cond_6
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oA:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    .line 389
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->ew()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 391
    :cond_7
    return-void

    .line 332
    :cond_8
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oo:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 365
    goto :goto_1

    :cond_a
    move v0, v2

    .line 373
    goto :goto_2

    :cond_b
    move v1, v2

    .line 379
    goto :goto_3
.end method


# virtual methods
.method A(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 399
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 400
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "can_nav_bar_hide"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 401
    if-eqz p1, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hide_nav_bar"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 399
    goto :goto_0
.end method

.method B(Z)V
    .locals 3

    .prologue
    .line 416
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 417
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_assistant_button"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method C(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    if-eqz p1, :cond_0

    .line 423
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->g(Ljava/util/List;)V

    .line 432
    return-void

    .line 427
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Landroid/preference/ListPreference;)V
    .locals 5

    .prologue
    .line 273
    const-string v0, "none"

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/MiuiSettings$System;->getScreenKeyLongPressAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 277
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 278
    invoke-virtual {p2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 283
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    return-void

    .line 276
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public et()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 286
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ot:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 287
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ot:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 288
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 289
    array-length v6, v3

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v0, v3, v1

    .line 290
    check-cast v0, Ljava/lang/String;

    .line 291
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 293
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 294
    array-length v6, v4

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_1

    aget-object v0, v4, v1

    .line 295
    check-cast v0, Ljava/lang/String;

    .line 296
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_trans_card_in_ese"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    .line 299
    const-string v0, "public_transportation_shortcuts"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 300
    if-ltz v0, :cond_2

    .line 301
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 302
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 303
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/KeySettings;->on:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 314
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/settings/KeySettings;->ot:Landroid/preference/ListPreference;

    new-array v0, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 315
    iget-object v1, p0, Lcom/android/settings/KeySettings;->ot:Landroid/preference/ListPreference;

    new-array v0, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_long_press_volume_down"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_3

    .line 321
    iget-object v1, p0, Lcom/android/settings/KeySettings;->ot:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ot:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/KeySettings;->ot:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    :cond_3
    return-void

    .line 308
    :cond_4
    const-string v0, "public_transportation_shortcuts"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    const-string v0, "public_transportation_shortcuts"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/KeySettings;->on:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method eu()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getScreenKeyOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method ev()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "can_nav_bar_hide"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method ew()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_assistant_button"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 412
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 436
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 437
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_key_order"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 444
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/android/settings/KeySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/high16 v10, 0x10000

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f080050

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->addPreferencesFromResource(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    const v0, 0x7f0a008e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v3

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 97
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    const v0, 0x7f0a008f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v0, v3

    :goto_1
    if-ge v0, v6, :cond_1

    aget-object v7, v5, v0

    .line 101
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    const v0, 0x7f0a0092

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v0, v3

    :goto_2
    if-ge v0, v7, :cond_2

    aget-object v8, v6, v0

    .line 105
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 107
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 108
    const v0, 0x7f0a0093

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    move v0, v3

    :goto_3
    if-ge v0, v7, :cond_3

    aget-object v8, v1, v0

    .line 109
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 114
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.ASSIST"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {v0, v1, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 117
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_5

    .line 118
    :cond_4
    const-string v1, "voice_assistant"

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 119
    if-ltz v1, :cond_5

    .line 120
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 121
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 126
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v7, "com.google.android.googlequicksearchbox"

    const-string v8, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {v0, v1, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 129
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_6

    .line 130
    const-string v1, "google_now"

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 131
    if-ltz v1, :cond_6

    .line 132
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 133
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 137
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    const-string v7, "com.android.quicksearchbox"

    const-string v8, "com.android.quicksearchbox.SearchActivity"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {v0, v1, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_7

    .line 141
    const-string v0, "quick_search"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 142
    if-ltz v0, :cond_7

    .line 143
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 144
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 148
    :cond_7
    const-string v0, "under_keyguard"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KeySettings;->on:Landroid/preference/Preference;

    .line 149
    const-string v0, "long_press_volume_down"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->ot:Landroid/preference/ListPreference;

    .line 150
    const-string v0, "support_camera_quick_snap"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 151
    const-string v0, "Street-snap"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 152
    if-ltz v0, :cond_8

    .line 153
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 154
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 157
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_trans_card_in_ese"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9

    .line 158
    const-string v0, "public_transportation_shortcuts"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 159
    if-ltz v0, :cond_9

    .line 160
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 161
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 162
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/KeySettings;->on:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :cond_9
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ot:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    iget-object v1, p0, Lcom/android/settings/KeySettings;->ot:Landroid/preference/ListPreference;

    new-array v0, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/KeySettings;->ot:Landroid/preference/ListPreference;

    new-array v0, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 172
    const-string v0, "menu_press"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->oo:Landroid/preference/ListPreference;

    .line 173
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oo:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    const-string v0, "menu_long_press"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->op:Landroid/preference/ListPreference;

    .line 176
    iget-object v0, p0, Lcom/android/settings/KeySettings;->op:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/KeySettings;->op:Landroid/preference/ListPreference;

    new-array v0, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, p0, Lcom/android/settings/KeySettings;->op:Landroid/preference/ListPreference;

    new-array v0, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 180
    const-string v0, "show_menu"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 181
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 182
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 184
    new-array v0, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 185
    new-array v1, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 187
    const-string v2, "home_long_press"

    invoke-virtual {p0, v2}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/KeySettings;->oq:Landroid/preference/ListPreference;

    .line 188
    iget-object v2, p0, Lcom/android/settings/KeySettings;->oq:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 189
    iget-object v2, p0, Lcom/android/settings/KeySettings;->oq:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 190
    iget-object v2, p0, Lcom/android/settings/KeySettings;->oq:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    const-string v2, "back_long_press"

    invoke-virtual {p0, v2}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/KeySettings;->or:Landroid/preference/ListPreference;

    .line 193
    iget-object v2, p0, Lcom/android/settings/KeySettings;->or:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/KeySettings;->or:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/KeySettings;->or:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 197
    const-string v0, "screen_key_long_press_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->os:Landroid/preference/ListPreference;

    .line 198
    iget-object v0, p0, Lcom/android/settings/KeySettings;->os:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    const-string v0, "key_position_cat"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 201
    const-string v1, "support_screen_key_swap"

    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 202
    const-string v1, "screen_key_position"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->ou:Landroid/preference/ListPreference;

    .line 203
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ou:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    :goto_4
    const-string v0, "pref_button_light"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->ov:Landroid/preference/CheckBoxPreference;

    .line 209
    const-string v0, "button_light_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->oB:Landroid/preference/ListPreference;

    .line 211
    const-string v0, "support_button_light"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_f

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_button_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 214
    if-eqz v0, :cond_c

    .line 215
    iget-object v1, p0, Lcom/android/settings/KeySettings;->ov:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    .line 216
    iget-object v1, p0, Lcom/android/settings/KeySettings;->ov:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 217
    iput-object v9, p0, Lcom/android/settings/KeySettings;->ov:Landroid/preference/CheckBoxPreference;

    .line 219
    :cond_a
    iget-object v1, p0, Lcom/android/settings/KeySettings;->oB:Landroid/preference/ListPreference;

    if-eqz v1, :cond_b

    .line 220
    iget-object v1, p0, Lcom/android/settings/KeySettings;->oB:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    iput-object v9, p0, Lcom/android/settings/KeySettings;->oB:Landroid/preference/ListPreference;

    .line 223
    :cond_b
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_c

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    :cond_c
    :goto_5
    const-string v0, "convenience_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 234
    const-string v1, "support_tap_fingerprint_sensor_to_home"

    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_10

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    :cond_d
    :goto_6
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KeySettings;->jb:Landroid/view/IWindowManager;

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/KeySettings;->jb:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v1

    .line 250
    const-string v0, "screen_button_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 251
    if-nez v1, :cond_11

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_7
    return-void

    .line 205
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 228
    :cond_f
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oB:Landroid/preference/ListPreference;

    if-eqz v0, :cond_c

    .line 229
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oB:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_5

    .line 237
    :cond_10
    const-string v1, "pref_fingerprint_nav_center_to_home"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/KeySettings;->ow:Landroid/preference/CheckBoxPreference;

    .line 238
    const-string v1, "pref_single_key_use"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/KeySettings;->ox:Landroid/preference/CheckBoxPreference;

    .line 239
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/KeySettings;->ox:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_d

    .line 240
    iget-object v1, p0, Lcom/android/settings/KeySettings;->ox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 242
    iput-object v9, p0, Lcom/android/settings/KeySettings;->ox:Landroid/preference/CheckBoxPreference;

    goto :goto_6

    .line 254
    :cond_11
    :try_start_1
    const-string v1, "screen_button_hide"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/KeySettings;->oy:Landroid/preference/CheckBoxPreference;

    .line 255
    iget-object v1, p0, Lcom/android/settings/KeySettings;->oy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 256
    const-string v1, "switch_screen_button_order"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/KeySettings;->oz:Landroid/preference/CheckBoxPreference;

    .line 257
    iget-object v1, p0, Lcom/android/settings/KeySettings;->oz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 258
    const-string v1, "suspension_ball_enable"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->oA:Landroid/preference/CheckBoxPreference;

    .line 259
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 261
    :catch_0
    move-exception v0

    goto :goto_7
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/settings/KeySettings;->os:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 486
    check-cast p2, Ljava/lang/String;

    .line 487
    iget-object v0, p0, Lcom/android/settings/KeySettings;->os:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/android/settings/KeySettings;->os:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/KeySettings;->os:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_key_long_press_timeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ou:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 495
    check-cast p2, Ljava/lang/String;

    .line 496
    const-string v0, "persist.sys.handswap"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ou:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ou:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/KeySettings;->ou:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oo:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_3

    .line 501
    check-cast p2, Ljava/lang/String;

    .line 502
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oo:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oo:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/KeySettings;->oo:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_key_press_app_switch"

    iget-object v2, p0, Lcom/android/settings/KeySettings;->oo:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/android/settings/KeySettings;->op:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_4

    .line 510
    check-cast p2, Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lcom/android/settings/KeySettings;->op:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/android/settings/KeySettings;->op:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/KeySettings;->op:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_key_long_press_app_switch"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 518
    :cond_4
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oq:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_5

    .line 519
    check-cast p2, Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oq:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oq:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/KeySettings;->oq:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_key_long_press_home"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 527
    :cond_5
    iget-object v0, p0, Lcom/android/settings/KeySettings;->or:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_6

    .line 528
    check-cast p2, Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/android/settings/KeySettings;->or:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/android/settings/KeySettings;->or:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/KeySettings;->or:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_key_long_press_back"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 536
    :cond_6
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oB:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_7

    .line 537
    check-cast p2, Ljava/lang/String;

    .line 538
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oB:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oB:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/KeySettings;->oB:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 540
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_timeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 545
    :cond_7
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ot:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 546
    check-cast p2, Ljava/lang/String;

    .line 547
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ot:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/android/settings/KeySettings;->ot:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/KeySettings;->ot:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_long_press_volume_down"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 449
    iget-object v2, p0, Lcom/android/settings/KeySettings;->ov:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/android/settings/KeySettings;->ov:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_buttons_turn_on"

    if-eqz v2, :cond_1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 480
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 451
    goto :goto_0

    .line 453
    :cond_2
    iget-object v2, p0, Lcom/android/settings/KeySettings;->ow:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 454
    iget-object v2, p0, Lcom/android/settings/KeySettings;->ow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fingerprint_nav_center_action"

    if-eqz v2, :cond_3

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 458
    :cond_4
    iget-object v2, p0, Lcom/android/settings/KeySettings;->oy:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    .line 459
    iget-object v2, p0, Lcom/android/settings/KeySettings;->oy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 460
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "show_guide"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 461
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 462
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 463
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.ScreenButtonAlertActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 465
    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->startActivity(Landroid/content/Intent;)V

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "show_guide"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 468
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/settings/KeySettings;->A(Z)V

    goto :goto_1

    .line 469
    :cond_6
    iget-object v2, p0, Lcom/android/settings/KeySettings;->oz:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 470
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->C(Z)V

    goto :goto_1

    .line 471
    :cond_7
    iget-object v2, p0, Lcom/android/settings/KeySettings;->oA:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_8

    .line 472
    iget-object v0, p0, Lcom/android/settings/KeySettings;->oA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->B(Z)V

    goto/16 :goto_1

    .line 473
    :cond_8
    iget-object v2, p0, Lcom/android/settings/KeySettings;->ox:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/android/settings/KeySettings;->ox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "single_key_use_enable"

    if-eqz v2, :cond_9

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto :goto_3
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 269
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/KeySettings;->updateState(Z)V

    .line 270
    return-void
.end method
