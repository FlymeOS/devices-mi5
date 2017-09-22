.class public Lcom/android/settings/dndmode/v;
.super Lcom/android/settings/dndmode/q;
.source "VipCallSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# static fields
.field private static final aaX:Ljava/util/HashMap;


# instance fields
.field aaY:Ljava/util/concurrent/ExecutorService;

.field aaZ:Ljava/util/concurrent/Future;

.field private aah:Landroid/service/notification/ZenModeConfig;

.field private aan:Landroid/preference/PreferenceScreen;

.field private aav:Lmiui/app/Activity;

.field private aba:Lmiui/preference/RadioButtonPreferenceCategory;

.field private abb:Landroid/preference/PreferenceCategory;

.field private abc:Landroid/view/MenuItem;

.field abd:Lcom/android/settings/dndmode/C;

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/dndmode/v;->aaX:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/dndmode/q;-><init>()V

    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/v;->aaY:Ljava/util/concurrent/ExecutorService;

    .line 239
    new-instance v0, Lcom/android/settings/dndmode/y;

    invoke-direct {v0, p0}, Lcom/android/settings/dndmode/y;-><init>(Lcom/android/settings/dndmode/v;)V

    iput-object v0, p0, Lcom/android/settings/dndmode/v;->abd:Lcom/android/settings/dndmode/C;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/android/settings/dndmode/v;)Lmiui/app/Activity;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->aav:Lmiui/app/Activity;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/dndmode/v;->aaX:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/dndmode/v;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/dndmode/v;->qd()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/dndmode/v;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/dndmode/v;->qe()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/dndmode/v;)Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->aah:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method private qb()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/android/settings/dndmode/w;

    invoke-direct {v0, p0}, Lcom/android/settings/dndmode/w;-><init>(Lcom/android/settings/dndmode/v;)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/dndmode/v;->aaY:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/v;->aaZ:Ljava/util/concurrent/Future;

    .line 149
    return-void
.end method

.method private qc()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lcom/android/settings/dndmode/v;->aav:Lmiui/app/Activity;

    invoke-virtual {v1}, Lmiui/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v0, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 153
    iget-object v1, p0, Lcom/android/settings/dndmode/v;->aah:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/android/settings/dndmode/v;->qd()V

    .line 159
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dndmode/v;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 160
    new-instance v2, Lcom/android/settings/dndmode/x;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/dndmode/x;-><init>(Lcom/android/settings/dndmode/v;[Ljava/lang/String;)V

    .line 180
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 181
    new-instance v3, Lmiui/preference/RadioButtonPreference;

    iget-object v4, p0, Lcom/android/settings/dndmode/v;->aav:Lmiui/app/Activity;

    invoke-direct {v3, v4, v5}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v3, v2}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 184
    iget-object v4, p0, Lcom/android/settings/dndmode/v;->aba:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v4, v3}, Lmiui/preference/RadioButtonPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dndmode/v;->qe()V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->aba:Lmiui/preference/RadioButtonPreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/dndmode/v;->aah:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-virtual {v0, v1}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPosition(I)V

    .line 187
    return-void
.end method

.method private qd()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->aan:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/dndmode/v;->abb:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 191
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->abc:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->abc:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 194
    :cond_0
    return-void
.end method

.method private qe()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->aan:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/dndmode/v;->abb:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->abc:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->abc:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 201
    :cond_0
    return-void
.end method

.method private qf()V
    .locals 3

    .prologue
    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v1, "android.intent.extra.include_unknown_numbers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dndmode/v;->startActivityForResult(Landroid/content/Intent;I)V

    .line 310
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 219
    if-nez p2, :cond_1

    .line 230
    :cond_0
    return-void

    .line 222
    :cond_1
    iput-object p2, p0, Lcom/android/settings/dndmode/v;->mCursor:Landroid/database/Cursor;

    .line 223
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->abb:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Lcom/android/settings/dndmode/A;

    iget-object v1, p0, Lcom/android/settings/dndmode/v;->aav:Lmiui/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dndmode/A;-><init>(Lcom/android/settings/dndmode/v;Landroid/content/Context;)V

    .line 226
    iget-object v1, p0, Lcom/android/settings/dndmode/v;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/A;->d(Landroid/database/Cursor;)V

    .line 227
    iget-object v1, p0, Lcom/android/settings/dndmode/v;->abd:Lcom/android/settings/dndmode/C;

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/A;->a(Lcom/android/settings/dndmode/C;)V

    .line 228
    iget-object v1, p0, Lcom/android/settings/dndmode/v;->abb:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 314
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    if-nez p3, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    const-string v0, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_0

    array-length v0, v2

    if-eqz v0, :cond_0

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 325
    array-length v5, v2

    move v1, v6

    :goto_1
    if-ge v1, v5, :cond_5

    aget-object v0, v2, v1

    .line 326
    check-cast v0, Landroid/net/Uri;

    .line 327
    const-string v8, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 328
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 329
    const/16 v8, 0x2c

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 331
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 333
    :cond_4
    const-string v8, "tel"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 334
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 340
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 342
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->aav:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "data1"

    aput-object v5, v2, v6

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 347
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    if-eqz v4, :cond_0

    .line 352
    :cond_7
    if-eqz v4, :cond_9

    .line 354
    :goto_3
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 355
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 358
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/settings/dndmode/v;->aav:Lmiui/app/Activity;

    new-array v0, v6, [Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/settings/dndmode/m;->a(Landroid/content/Context;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/dndmode/q;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/v;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/dndmode/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/app/Activity;

    iput-object v0, p0, Lcom/android/settings/dndmode/v;->aav:Lmiui/app/Activity;

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/dndmode/v;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/v;->aah:Landroid/service/notification/ZenModeConfig;

    .line 101
    const-string v0, "key_vip_setting_root"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/v;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/dndmode/v;->aan:Landroid/preference/PreferenceScreen;

    .line 102
    const-string v0, "key_vip_options_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/v;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/dndmode/v;->aba:Lmiui/preference/RadioButtonPreferenceCategory;

    .line 103
    const-string v0, "key_vip_list_custom_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/v;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/dndmode/v;->abb:Landroid/preference/PreferenceCategory;

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/v;->setHasOptionsMenu(Z)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/dndmode/v;->qc()V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/dndmode/v;->qb()V

    .line 108
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 205
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/settings/dndmode/v;->aav:Lmiui/app/Activity;

    sget-object v2, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v8

    const-string v4, "number"

    aput-object v4, v3, v7

    const-string v4, "type = ? and sync_dirty <> ?"

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "3"

    aput-object v6, v5, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 287
    const v2, 0x7f0c0ba1

    invoke-interface {p1, v1, v1, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dndmode/v;->abc:Landroid/view/MenuItem;

    .line 288
    iget-object v2, p0, Lcom/android/settings/dndmode/v;->abc:Landroid/view/MenuItem;

    const v3, 0x7f020082

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 289
    iget-object v2, p0, Lcom/android/settings/dndmode/v;->abc:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/settings/dndmode/v;->aah:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 290
    return-void

    :cond_0
    move v0, v1

    .line 289
    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dndmode/v;->a(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 294
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 301
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/dndmode/q;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 296
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/dndmode/v;->qf()V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/settings/dndmode/q;->onResume()V

    .line 113
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/settings/dndmode/q;->onStop()V

    .line 118
    iget-object v0, p0, Lcom/android/settings/dndmode/v;->aaZ:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 119
    return-void
.end method
