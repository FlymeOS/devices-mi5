.class public Lcom/android/vendorsettings/ApnSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final aE:Landroid/net/Uri;

.field private static final aF:Landroid/net/Uri;

.field private static aG:Z


# instance fields
.field private aD:Ljava/util/HashMap;

.field private aH:Lcom/android/vendorsettings/z;

.field private aI:Lcom/android/vendorsettings/y;

.field private aJ:Landroid/os/HandlerThread;

.field private aK:Landroid/telephony/SubscriptionInfo;

.field private aL:Ljava/lang/String;

.field private aM:Ljava/lang/String;

.field private aN:Landroid/os/UserManager;

.field private aO:J

.field private aP:Ljava/lang/String;

.field private aQ:Landroid/content/IntentFilter;

.field private aR:Z

.field private final aS:Landroid/content/BroadcastReceiver;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/ApnSettings;->aE:Landroid/net/Uri;

    .line 118
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/ApnSettings;->aF:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aD:Ljava/util/HashMap;

    .line 139
    new-instance v0, Lcom/android/vendorsettings/w;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/w;-><init>(Lcom/android/vendorsettings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aS:Landroid/content/BroadcastReceiver;

    .line 606
    return-void
.end method

.method private E()V
    .locals 19

    .prologue
    .line 271
    const-string v1, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/ApnSettings;->aK:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_1

    const-string v1, ""

    .line 277
    :goto_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v2

    const-string v3, "gsm.apn.sim.operator.numeric"

    invoke-static {v2, v3, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mccmnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" AND NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND NOT (type =\'ims\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "apn"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "type"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "mvno_type"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "mvno_match_data"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "read_only"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    const-string v6, "bearer_bitmask"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 292
    if-eqz v17, :cond_a

    .line 293
    const/4 v5, 0x0

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/vendorsettings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/vendorsettings/ApnSettings;->aK:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/vendorsettings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/ApnSettings;->aK:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    .line 298
    :cond_0
    const-string v1, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/preference/PreferenceGroup;

    .line 299
    invoke-virtual {v15}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 306
    const/16 v16, 0x0

    .line 307
    const/4 v8, 0x0

    .line 308
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 309
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 310
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 311
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/android/vendorsettings/ApnSettings;->G()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/vendorsettings/ApnSettings;->aP:Ljava/lang/String;

    .line 315
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 316
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_9

    .line 317
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 318
    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/vendorsettings/ApnSettings;->aK:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/ApnSettings;->aK:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-static {v1, v2, v14}, Lmiui/telephony/VirtualSimUtils;->isValidApnForMiSim(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 322
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 275
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/ApnSettings;->aK:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 326
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 327
    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    const/4 v1, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 329
    const/4 v1, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 330
    const/4 v1, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_4

    const/4 v1, 0x1

    move v9, v1

    .line 332
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/vendorsettings/ApnSettings;->aD:Ljava/util/HashMap;

    const/4 v12, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    if-eqz v2, :cond_3

    const-string v1, "mms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    const/4 v1, 0x1

    move v12, v1

    .line 339
    :goto_3
    if-eqz v12, :cond_6

    .line 340
    new-instance v2, Lcom/android/vendorsettings/dZ;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/vendorsettings/dZ;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 341
    check-cast v1, Lcom/android/vendorsettings/dZ;

    invoke-virtual {v1, v9}, Lcom/android/vendorsettings/dZ;->D(Z)V

    .line 349
    :goto_4
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v2, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {v2, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 352
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 353
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 358
    if-eqz v12, :cond_8

    move-object v1, v2

    .line 365
    check-cast v1, Lcom/android/vendorsettings/dZ;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/vendorsettings/ApnSettings;->aP:Ljava/lang/String;

    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/vendorsettings/ApnSettings;->aP:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v1, v9}, Lcom/android/vendorsettings/dZ;->setChecked(Z)V

    .line 366
    if-nez v16, :cond_c

    .line 367
    new-instance v9, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 368
    const-string v1, "apn_general_list"

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceGroup;->setKey(Ljava/lang/String;)V

    .line 369
    const v1, 0x7f0c0d71

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 370
    invoke-virtual {v15, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 372
    :goto_6
    invoke-virtual {v9, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v1, p0

    .line 374
    invoke-direct/range {v1 .. v7}, Lcom/android/vendorsettings/ApnSettings;->a(Landroid/preference/Preference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v8

    move-object v2, v9

    .line 387
    :goto_7
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-object v8, v1

    move-object/from16 v16, v2

    .line 388
    goto/16 :goto_1

    .line 330
    :cond_4
    const/4 v1, 0x0

    move v9, v1

    goto/16 :goto_2

    .line 337
    :cond_5
    const/4 v1, 0x0

    move v12, v1

    goto :goto_3

    .line 343
    :cond_6
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 344
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    goto :goto_4

    .line 365
    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    .line 377
    :cond_8
    if-nez v8, :cond_b

    .line 378
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 379
    const-string v8, "apn_mms_list"

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceGroup;->setKey(Ljava/lang/String;)V

    .line 380
    const v8, 0x7f0c0d70

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 381
    invoke-virtual {v15, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 383
    :goto_8
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v8, p0

    move-object v9, v2

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 385
    invoke-direct/range {v8 .. v14}, Lcom/android/vendorsettings/ApnSettings;->a(Landroid/preference/Preference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v16

    goto :goto_7

    .line 389
    :cond_9
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 391
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 416
    :cond_a
    return-void

    :cond_b
    move-object v1, v8

    goto :goto_8

    :cond_c
    move-object/from16 v9, v16

    goto :goto_6
.end method

.method private F()V
    .locals 3

    .prologue
    .line 472
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 473
    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aK:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aK:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 475
    :goto_0
    const-string v2, "subscription_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aM:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    const-string v0, "mvno_type"

    iget-object v2, p0, Lcom/android/vendorsettings/ApnSettings;->aL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v0, "mvno_match_data"

    iget-object v2, p0, Lcom/android/vendorsettings/ApnSettings;->aM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 481
    return-void

    .line 473
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private G()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 546
    .line 548
    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/vendorsettings/ApnSettings;->aF:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 552
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 553
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 554
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 556
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 557
    return-object v3
.end method

.method private H()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 561
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ApnSettings;->showDialog(I)V

    .line 562
    sput-boolean v3, Lcom/android/vendorsettings/ApnSettings;->aG:Z

    .line 564
    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aH:Lcom/android/vendorsettings/z;

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Lcom/android/vendorsettings/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/z;-><init>(Lcom/android/vendorsettings/ApnSettings;Lcom/android/vendorsettings/w;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aH:Lcom/android/vendorsettings/z;

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aI:Lcom/android/vendorsettings/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aJ:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 570
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aJ:Landroid/os/HandlerThread;

    .line 572
    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aJ:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 573
    new-instance v0, Lcom/android/vendorsettings/y;

    iget-object v1, p0, Lcom/android/vendorsettings/ApnSettings;->aJ:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/ApnSettings;->aH:Lcom/android/vendorsettings/z;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/vendorsettings/y;-><init>(Lcom/android/vendorsettings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aI:Lcom/android/vendorsettings/y;

    .line 577
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aI:Lcom/android/vendorsettings/y;

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/y;->sendEmptyMessage(I)Z

    .line 579
    return v3
.end method

.method static synthetic I()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/vendorsettings/ApnSettings;->aE:Landroid/net/Uri;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/vendorsettings/ApnSettings;->aO:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/ApnSettings;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/preference/Preference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 423
    if-eqz p4, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 424
    invoke-static {p4, p5, p6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iput-object p5, p0, Lcom/android/vendorsettings/ApnSettings;->aL:Ljava/lang/String;

    .line 428
    iput-object p6, p0, Lcom/android/vendorsettings/ApnSettings;->aM:Ljava/lang/String;

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/ApnSettings;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/vendorsettings/ApnSettings;->E()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/vendorsettings/ApnSettings;->aG:Z

    return v0
.end method

.method private static c(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2

    .prologue
    .line 159
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 163
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method static synthetic d(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/vendorsettings/ApnSettings;->c(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Z)Z
    .locals 0

    .prologue
    .line 74
    sput-boolean p0, Lcom/android/vendorsettings/ApnSettings;->aG:Z

    return p0
.end method

.method private j(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 537
    iput-object p1, p0, Lcom/android/vendorsettings/ApnSettings;->aP:Ljava/lang/String;

    .line 538
    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 540
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 541
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/vendorsettings/ApnSettings;->aP:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    sget-object v2, Lcom/android/vendorsettings/ApnSettings;->aF:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 543
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 206
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 209
    if-eqz v0, :cond_0

    .line 210
    const v1, 0x7f0c0653

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 211
    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aN:Landroid/os/UserManager;

    const-string v1, "no_config_mobile_networks"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    :cond_1
    iput-boolean v2, p0, Lcom/android/vendorsettings/ApnSettings;->aR:Z

    .line 217
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ApnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_2
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ApnSettings;->addPreferencesFromResource(I)V

    .line 223
    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 185
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 189
    int-to-long v4, v2

    iput-wide v4, p0, Lcom/android/vendorsettings/ApnSettings;->aO:J

    .line 191
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aN:Landroid/os/UserManager;

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aQ:Landroid/content/IntentFilter;

    .line 196
    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aN:Landroid/os/UserManager;

    const-string v3, "no_config_mobile_networks"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ApnSettings;->setHasOptionsMenu(Z)V

    .line 200
    :cond_0
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aK:Landroid/telephony/SubscriptionInfo;

    .line 201
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 202
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 629
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 630
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 631
    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 632
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 635
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 437
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 438
    iget-boolean v0, p0, Lcom/android/vendorsettings/ApnSettings;->aR:Z

    if-nez v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aK:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/ApnSettings;->aK:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/VirtualSimUtils;->isMiSimEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c04bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_new_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 447
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 455
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 261
    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aJ:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aJ:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aD:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 266
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 459
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 468
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 461
    :pswitch_0
    invoke-direct {p0}, Lcom/android/vendorsettings/ApnSettings;->F()V

    goto :goto_0

    .line 465
    :pswitch_1
    invoke-direct {p0}, Lcom/android/vendorsettings/ApnSettings;->H()Z

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 248
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 250
    iget-boolean v0, p0, Lcom/android/vendorsettings/ApnSettings;->aR:Z

    if-eqz v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/ApnSettings;->aS:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 526
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 530
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/vendorsettings/ApnSettings;->j(Ljava/lang/String;)V

    .line 533
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 490
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 492
    instance-of v0, p2, Lcom/android/vendorsettings/dZ;

    if-eqz v0, :cond_6

    .line 493
    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    .line 494
    :goto_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 495
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    move v4, v0

    .line 496
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aD:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v4}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v0

    .line 497
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 498
    check-cast p2, Lcom/android/vendorsettings/dZ;

    .line 499
    invoke-virtual {p2, v3}, Lcom/android/vendorsettings/dZ;->setChecked(Z)V

    .line 500
    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0b86

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 521
    :goto_2
    return v3

    :cond_0
    move v1, v3

    .line 493
    goto :goto_0

    :cond_1
    move v4, v3

    .line 495
    goto :goto_1

    .line 503
    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/vendorsettings/ApnSettings;->aP:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 504
    :cond_3
    if-eqz v1, :cond_4

    .line 505
    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/ApnSettings;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 506
    instance-of v1, v0, Lcom/android/vendorsettings/dZ;

    if-eqz v1, :cond_4

    .line 507
    check-cast v0, Lcom/android/vendorsettings/dZ;

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/dZ;->setChecked(Z)V

    .line 510
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/vendorsettings/ApnSettings;->j(Ljava/lang/String;)V

    .line 521
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_2

    :cond_5
    move-object v0, p2

    .line 512
    check-cast v0, Lcom/android/vendorsettings/dZ;

    .line 513
    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/dZ;->setChecked(Z)V

    goto :goto_3

    .line 516
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 517
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 518
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 228
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 230
    iget-boolean v0, p0, Lcom/android/vendorsettings/ApnSettings;->aR:Z

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/ApnSettings;->aS:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/vendorsettings/ApnSettings;->aQ:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    sget-boolean v0, Lcom/android/vendorsettings/ApnSettings;->aG:Z

    if-nez v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/android/vendorsettings/ApnSettings;->E()V

    goto :goto_0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0xc

    return v0
.end method
