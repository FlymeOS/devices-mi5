.class public Lcom/android/settings/SettingsFragment;
.super Lcom/android/settings/BasePreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static zL:Ljava/util/HashMap;


# instance fields
.field private IS_TABLET:Z

.field private bz:Landroid/widget/ListView;

.field private zD:Landroid/view/View;

.field private zE:Landroid/widget/EditText;

.field private zF:Lcom/android/settings/fq;

.field private zG:Ljava/lang/String;

.field private zH:Landroid/widget/ListView;

.field private zI:Landroid/widget/ListView;

.field private zJ:Ljava/util/List;

.field private zK:Lcom/android/settings/hC;

.field private zM:Lmiui/view/SearchActionMode$Callback;

.field private zN:Landroid/widget/TextView$OnEditorActionListener;

.field private zO:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/SettingsFragment;->zL:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/BasePreferenceFragment;-><init>()V

    .line 166
    new-instance v0, Lcom/android/settings/hx;

    invoke-direct {v0, p0}, Lcom/android/settings/hx;-><init>(Lcom/android/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->zM:Lmiui/view/SearchActionMode$Callback;

    .line 337
    new-instance v0, Lcom/android/settings/hz;

    invoke-direct {v0, p0}, Lcom/android/settings/hz;-><init>(Lcom/android/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->zN:Landroid/widget/TextView$OnEditorActionListener;

    .line 344
    new-instance v0, Lcom/android/settings/hA;

    invoke-direct {v0, p0}, Lcom/android/settings/hA;-><init>(Lcom/android/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->zO:Landroid/text/TextWatcher;

    .line 98
    return-void
.end method

.method private Q(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zG:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->zJ:Ljava/util/List;

    .line 242
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->R(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->zJ:Ljava/util/List;

    .line 244
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zK:Lcom/android/settings/hC;

    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->zJ:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/hC;->r(Ljava/util/List;)V

    .line 245
    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->zG:Ljava/lang/String;

    .line 247
    :cond_0
    return-void
.end method

.method private R(Ljava/lang/String;)Ljava/util/List;
    .locals 17

    .prologue
    .line 250
    const/4 v7, 0x0

    .line 251
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsFragment;->zJ:Ljava/util/List;

    .line 311
    :goto_0
    return-object v1

    .line 255
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.xiaomi.providers.appindex/search_suggest_query/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "is_settings = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "true"

    aput-object v8, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .line 256
    const/4 v15, 0x0

    .line 257
    const/4 v13, 0x0

    move-object/from16 v16, v15

    .line 258
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 259
    const-string v1, "suggest_text_1"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    const-string v1, "suggest_intent_action"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 261
    const-string v1, "suggest_intent_data"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 262
    const-string v1, "suggest_icon_1"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 263
    const-string v1, "suggest_shortcut_id"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 264
    const-string v1, "suggest_intent_extra_data"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v1, 0x0

    .line 266
    :goto_2
    const/4 v12, 0x0

    .line 267
    const/4 v9, 0x0

    .line 268
    const/4 v10, 0x0

    .line 269
    const/4 v11, 0x0

    .line 270
    if-eqz v1, :cond_3

    .line 271
    array-length v3, v1

    if-lez v3, :cond_7

    const/4 v3, 0x0

    aget-object v3, v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/android/settings/SettingsFragment;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 272
    :goto_3
    array-length v3, v1

    const/4 v7, 0x1

    if-le v3, v7, :cond_8

    const/4 v3, 0x1

    aget-object v9, v1, v3

    .line 273
    :goto_4
    array-length v3, v1

    const/4 v7, 0x2

    if-le v3, v7, :cond_9

    const/4 v3, 0x2

    aget-object v10, v1, v3

    .line 274
    :goto_5
    array-length v3, v1

    const/4 v7, 0x3

    if-le v3, v7, :cond_a

    const/4 v3, 0x3

    aget-object v1, v1, v3

    :goto_6
    move-object v11, v1

    .line 276
    :cond_3
    if-eqz v12, :cond_b

    const-string v1, "\\/"

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 277
    :goto_7
    if-eqz v1, :cond_c

    array-length v3, v1

    const/4 v7, 0x1

    if-le v3, v7, :cond_c

    const/4 v3, 0x1

    aget-object v3, v1, v3

    .line 278
    :goto_8
    if-eqz v1, :cond_d

    array-length v7, v1

    const/4 v15, 0x1

    if-le v7, v15, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v1, v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v15, 0x1

    aget-object v1, v1, v15

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    .line 279
    :goto_9
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsFragment;->zJ:Ljava/util/List;

    new-instance v7, Lcom/android/settings/hc;

    const/4 v13, 0x2

    invoke-direct {v7, v13}, Lcom/android/settings/hc;-><init>(I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    const/4 v13, 0x0

    .line 283
    :cond_4
    new-instance v1, Lcom/android/settings/hc;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v13}, Lcom/android/settings/hc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 288
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsFragment;->zJ:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    const/4 v13, 0x1

    move-object/from16 v16, v15

    .line 292
    goto/16 :goto_1

    .line 265
    :cond_6
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    goto/16 :goto_2

    .line 271
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 272
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 273
    :cond_9
    const/4 v10, 0x0

    goto :goto_5

    .line 274
    :cond_a
    const/4 v1, 0x0

    goto :goto_6

    .line 276
    :cond_b
    const/4 v1, 0x0

    goto :goto_7

    .line 277
    :cond_c
    const/4 v3, 0x0

    goto :goto_8

    .line 278
    :cond_d
    const/4 v1, 0x0

    move-object v15, v1

    goto :goto_9

    .line 296
    :cond_e
    if-eqz v14, :cond_f

    .line 297
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_f
    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsFragment;->zJ:Ljava/util/List;

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsFragment;->zJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsFragment;->zJ:Ljava/util/List;

    new-instance v2, Lcom/android/settings/hc;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/settings/hc;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsFragment;->zE:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 305
    const-string v2, "settings"

    const-string v3, "search_no_result"

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings;search_no_result;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->addCustomEvent(Ljava/lang/String;)V

    .line 311
    :cond_10
    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsFragment;->zJ:Ljava/util/List;

    goto/16 :goto_0

    .line 293
    :catch_0
    move-exception v1

    move-object v2, v7

    .line 294
    :goto_c
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 296
    if-eqz v2, :cond_f

    .line 297
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 296
    :catchall_0
    move-exception v1

    move-object v14, v7

    :goto_d
    if-eqz v14, :cond_11

    .line 297
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v1

    .line 309
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsFragment;->zJ:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsFragment;->q(Ljava/util/List;)V

    goto :goto_b

    .line 296
    :catchall_1
    move-exception v1

    goto :goto_d

    :catchall_2
    move-exception v1

    move-object v14, v2

    goto :goto_d

    .line 293
    :catch_1
    move-exception v1

    move-object v2, v14

    goto :goto_c
.end method

.method static synthetic a(Lcom/android/settings/SettingsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/SettingsFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 9

    .prologue
    const/16 v8, 0x21

    const/4 v0, 0x0

    const/high16 v7, -0x10000

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 418
    :goto_0
    return-object v0

    .line 389
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 390
    const-string v1, "zh_CN"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "zh_TW"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 391
    :cond_1
    const-string v1, "\\s*|\t|\n"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 393
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 395
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v4, v2

    invoke-static {p1, v2}, Lcom/android/settings/SettingsFragment;->f(Ljava/lang/String;I)[I

    move-result-object v4

    move v2, v1

    move v1, v0

    .line 397
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 398
    aget v5, v4, v0

    if-gt v5, v2, :cond_2

    .line 399
    add-int/lit8 v2, v2, 0x1

    .line 401
    :cond_2
    aget v5, v4, v0

    if-le v5, v2, :cond_3

    aget v5, v4, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    add-int/2addr v6, v1

    if-gt v5, v6, :cond_3

    .line 402
    add-int/lit8 v1, v1, 0x1

    .line 397
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 405
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v0, v4, :cond_5

    .line 406
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v1, v4

    invoke-virtual {v3, v0, v2, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    move-object v0, v3

    .line 418
    goto :goto_0

    .line 411
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 413
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 414
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/settings/SettingsFragment;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->zE:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->zG:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/SettingsFragment;)Lmiui/view/SearchActionMode$Callback;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zM:Lmiui/view/SearchActionMode$Callback;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/android/settings/hc;)V
    .locals 8

    .prologue
    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 439
    invoke-virtual {p2}, Lcom/android/settings/hc;->hq()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-virtual {p2}, Lcom/android/settings/hc;->hr()Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-virtual {p2}, Lcom/android/settings/hc;->hs()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-virtual {p2}, Lcom/android/settings/hc;->getIntentAction()Ljava/lang/String;

    move-result-object v4

    .line 443
    invoke-virtual {p2}, Lcom/android/settings/hc;->ho()Ljava/lang/String;

    move-result-object v5

    .line 445
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 446
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 447
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    :goto_0
    const-string v3, ":settings:show_fragment_title"

    invoke-virtual {p2}, Lcom/android/settings/hc;->hn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 456
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    :cond_0
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 464
    :cond_1
    :try_start_0
    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 465
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/hc;->hn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/SettingsFragment;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_2
    return-void

    .line 450
    :cond_2
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v4, ":android:show_fragment"

    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v3, ":android:no_headers"

    const/4 v4, 0x1

    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 457
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/settings/SettingsFragment;Landroid/view/View;Lcom/android/settings/hc;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SettingsFragment;->a(Landroid/view/View;Lcom/android/settings/hc;)V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/android/settings/SettingsFragment;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/SettingsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zD:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->Q(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/SettingsFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->bz:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/SettingsFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zI:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->hN()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/SettingsFragment;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zN:Landroid/widget/TextView$OnEditorActionListener;

    return-object v0
.end method

.method private static f(Ljava/lang/String;I)[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 372
    new-array v3, p1, [I

    .line 374
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v1, v0

    .line 376
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_1

    .line 377
    aget-char v2, v4, v0

    const/16 v5, 0x20

    if-ne v2, v5, :cond_0

    .line 378
    add-int/lit8 v2, v1, 0x1

    aput v0, v3, v1

    move v1, v2

    .line 376
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_1
    return-object v3
.end method

.method static synthetic g(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zE:Landroid/widget/EditText;

    return-object v0
.end method

.method private static getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 477
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 478
    const/4 v0, 0x0

    .line 480
    :try_start_0
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 481
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 485
    :goto_0
    return-object v0

    .line 482
    :catch_0
    move-exception v1

    .line 483
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/android/settings/SettingsFragment;)Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zO:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 422
    .line 424
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 428
    :goto_0
    if-eqz v1, :cond_0

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":string/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 430
    if-eqz v2, :cond_0

    .line 431
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    :cond_0
    return-object v0

    .line 425
    :catch_0
    move-exception v1

    .line 426
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0
.end method

.method private hM()V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 155
    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->zI:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 156
    return-void
.end method

.method private hN()V
    .locals 4

    .prologue
    .line 217
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->ct:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->ct:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 219
    iget v0, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->ct:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget v0, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->ct:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget v0, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 222
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 223
    sget-object v3, Lcom/android/settings/SettingsFragment;->zL:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 227
    :cond_1
    return-void
.end method

.method private hO()Z
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 231
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 232
    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic hP()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/settings/SettingsFragment;->zL:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->hM()V

    return-void
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 472
    const-string v0, "settings"

    const-string v1, "search_data"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings;search_data;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->addCustomEvent(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method static synthetic j(Lcom/android/settings/SettingsFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zJ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/hC;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zK:Lcom/android/settings/hC;

    return-object v0
.end method

.method static synthetic l(Lcom/android/settings/SettingsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zG:Ljava/lang/String;

    return-object v0
.end method

.method private q(Ljava/util/List;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 316
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hc;

    invoke-virtual {v0}, Lcom/android/settings/hc;->hp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 320
    :goto_1
    if-ge v1, v3, :cond_0

    .line 321
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hc;

    .line 322
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/hc;->hp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/hc;->hp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    move v1, v2

    .line 325
    :goto_2
    if-ge v0, v3, :cond_2

    .line 326
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 327
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 325
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    .line 330
    :cond_2
    add-int/lit8 v0, v3, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 331
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 320
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public aa()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 124
    invoke-super {p0}, Lcom/android/settings/BasePreferenceFragment;->aa()V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings;

    .line 126
    new-instance v1, Lcom/android/settings/fq;

    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->ct:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings;->fT()Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/settings/fq;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Z)V

    iput-object v1, p0, Lcom/android/settings/SettingsFragment;->zF:Lcom/android/settings/fq;

    .line 127
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->bz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->zF:Lcom/android/settings/fq;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->bz:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zI:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zI:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->zK:Lcom/android/settings/hC;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zH:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->ad()V

    .line 133
    return-void
.end method

.method protected ae()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f08009b

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/android/settings/SettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->zJ:Ljava/util/List;

    .line 108
    new-instance v0, Lcom/android/settings/hC;

    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->zJ:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/hC;-><init>(Lcom/android/settings/SettingsFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->zK:Lcom/android/settings/hC;

    .line 109
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 81
    const v0, 0x7f04013e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 82
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->bz:Landroid/widget/ListView;

    .line 83
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->bz:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->bz:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 85
    const v0, 0x7f1302ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->zH:Landroid/widget/ListView;

    .line 86
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zH:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zH:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 88
    const v0, 0x7f1302ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->zI:Landroid/widget/ListView;

    .line 89
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zI:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zI:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zI:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->hO()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SettingsFragment;->IS_TABLET:Z

    .line 93
    return-object v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zI:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->hM()V

    .line 163
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Lcom/android/settings/BasePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lmiui/R$layout;->search_stub:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->zD:Landroid/view/View;

    .line 140
    iget-boolean v0, p0, Lcom/android/settings/SettingsFragment;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->bz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->zD:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->zD:Landroid/view/View;

    new-instance v1, Lcom/android/settings/hw;

    invoke-direct {v1, p0}, Lcom/android/settings/hw;-><init>(Lcom/android/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method
