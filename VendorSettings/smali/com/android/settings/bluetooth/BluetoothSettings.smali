.class public Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings/search/k;


# static fields
.field private static QT:Landroid/view/View;

.field public static final ig:Lcom/android/settings/search/l;


# instance fields
.field private Cm:Landroid/widget/TextView;

.field protected QU:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

.field QV:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

.field QW:Landroid/preference/CheckBoxPreference;

.field private QX:Landroid/preference/PreferenceGroup;

.field private QY:Landroid/preference/PreferenceGroup;

.field private QZ:Z

.field private Ra:Z

.field private Rb:Z

.field Rc:Landroid/preference/CheckBoxPreference;

.field private final Rd:Landroid/view/View$OnClickListener;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->QT:Landroid/view/View;

    .line 575
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$4;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->ig:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 533
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Rd:Landroid/view/View$OnClickListener;

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 157
    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;ILcom/android/b/b/n;Z)V
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 344
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Lcom/android/b/b/n;)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->b(Landroid/preference/PreferenceGroup;)V

    .line 346
    if-eqz p4, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->nM()V

    .line 349
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 350
    return-void
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/BluetoothSettings;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Rb:Z

    return p1
.end method

.method private nK()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->hj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QZ:Z

    if-nez v0, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QY:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 315
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QZ:Z

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QY:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QY:Landroid/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QY:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->b(Landroid/preference/PreferenceGroup;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->nL()V

    .line 326
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QY:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Rj:Lcom/android/b/b/R;

    invoke-virtual {v0}, Lcom/android/b/b/R;->Ai()Lcom/android/b/b/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/b/b/J;->zZ()V

    .line 330
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Ra:Z

    .line 331
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0, v2}, Lcom/android/b/b/Q;->bR(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/b/b/H;I)V
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->b(Landroid/preference/PreferenceGroup;)V

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->nL()V

    .line 530
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->Ad()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->bi(I)V

    .line 531
    return-void
.end method

.method public aB(Z)V
    .locals 0

    .prologue
    .line 519
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->aB(Z)V

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->invalidateOptionsMenu()V

    .line 524
    return-void
.end method

.method protected ay()I
    .locals 1

    .prologue
    .line 572
    const v0, 0x7f0c09b1

    return v0
.end method

.method protected bi(I)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 358
    packed-switch p1, :pswitch_data_0

    .line 458
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->b(Landroid/preference/PreferenceGroup;)V

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->nL()V

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->hj()Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->invalidateOptionsMenu()V

    .line 469
    :cond_1
    :goto_1
    return-void

    .line 362
    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 363
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Rl:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->hj()Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QX:Landroid/preference/PreferenceGroup;

    if-nez v1, :cond_7

    .line 372
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QX:Landroid/preference/PreferenceGroup;

    .line 376
    :goto_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QX:Landroid/preference/PreferenceGroup;

    const v2, 0x7f0c028b

    sget-object v3, Lcom/android/b/b/h;->aJm:Lcom/android/b/b/n;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;ILcom/android/b/b/n;Z)V

    .line 379
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QX:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->hj()Z

    move-result v2

    if-nez v2, :cond_2

    if-gtz v1, :cond_3

    .line 382
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QX:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QY:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_8

    .line 389
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QY:Landroid/preference/PreferenceGroup;

    .line 390
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QY:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    .line 394
    :goto_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QY:Landroid/preference/PreferenceGroup;

    const v2, 0x7f0c028c

    sget-object v3, Lcom/android/b/b/h;->aJn:Lcom/android/b/b/n;

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Ra:Z

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;ILcom/android/b/b/n;Z)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QY:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    .line 399
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Ra:Z

    if-nez v0, :cond_4

    .line 400
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->nK()V

    .line 403
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Rc:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_5

    .line 406
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Rc:Landroid/preference/CheckBoxPreference;

    .line 415
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QV:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    if-eqz v0, :cond_6

    .line 416
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QV:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->be(I)V

    .line 418
    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Rc:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1}, Lcom/android/b/b/Q;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->invalidateOptionsMenu()V

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 426
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Rb:Z

    if-eqz v0, :cond_1

    .line 430
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Rb:Z

    goto/16 :goto_1

    .line 374
    :cond_7
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QX:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_2

    .line 392
    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QY:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 447
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->hj()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 454
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Ra:Z

    goto/16 :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bj(I)V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->bj(I)V

    .line 512
    const/16 v0, 0xc

    if-ne v0, p1, :cond_0

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Rb:Z

    .line 514
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->bi(I)V

    .line 515
    return-void
.end method

.method d(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->Ac()V

    .line 337
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->d(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 338
    return-void
.end method

.method e(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 2

    .prologue
    .line 563
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->nm()Lcom/android/b/b/H;

    move-result-object v0

    .line 564
    invoke-virtual {v0}, Lcom/android/b/b/H;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Rd:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a(Landroid/view/View$OnClickListener;)V

    .line 568
    :cond_0
    return-void
.end method

.method nJ()V
    .locals 1

    .prologue
    .line 207
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 210
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 179
    if-eqz p1, :cond_0

    const-string v0, "scan_started"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Ra:Z

    .line 181
    if-eqz p1, :cond_1

    const-string v0, "initiate_discoverable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Rb:Z

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Cm:Landroid/widget/TextView;

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Cm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Cm:Landroid/widget/TextView;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 195
    return-void

    :cond_0
    move v0, v1

    .line 179
    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 258
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Qu:Lcom/android/b/b/Q;

    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->hj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->Ad()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 263
    :goto_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v3}, Lcom/android/b/b/Q;->isDiscovering()Z

    move-result v4

    .line 264
    if-eqz v4, :cond_3

    const v3, 0x7f0c0280

    .line 266
    :goto_2
    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    :goto_3
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 269
    const/4 v1, 0x2

    const v3, 0x7f0c0122

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 272
    const/4 v0, 0x3

    const v1, 0x7f0c0133

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 274
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 262
    goto :goto_1

    .line 264
    :cond_3
    const v3, 0x7f0c027f

    goto :goto_2

    :cond_4
    move v1, v2

    .line 266
    goto :goto_3
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    .line 203
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 279
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 305
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 281
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1}, Lcom/android/b/b/Q;->Ad()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 284
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1}, Lcom/android/b/b/Q;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1}, Lcom/android/b/b/Q;->Ac()V

    goto :goto_0

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->nK()V

    goto :goto_0

    .line 294
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 295
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "rename device"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 301
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 241
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QU:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QU:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->pause()V

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->hj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QU:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->QU:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->resume()V

    .line 221
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Rb:Z

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->hj()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->b(Landroid/preference/PreferenceGroup;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->nL()V

    .line 228
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Cm:Landroid/widget/TextView;

    const v1, 0x7f0c0126

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 236
    :cond_1
    :goto_0
    return-void

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Qu:Lcom/android/b/b/Q;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->Ad()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->bi(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 168
    const-string v0, "scan_started"

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Ra:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    const-string v0, "initiate_discoverable"

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->Rb:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 161
    const/16 v0, 0x18

    return v0
.end method
