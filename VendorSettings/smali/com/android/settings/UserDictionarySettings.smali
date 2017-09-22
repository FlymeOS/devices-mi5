.class public Lcom/android/vendorsettings/UserDictionarySettings;
.super Lcom/android/vendorsettings/BaseListFragment;
.source "UserDictionarySettings.java"


# static fields
.field private static final BX:[Ljava/lang/String;


# instance fields
.field protected BY:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "word"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vendorsettings/UserDictionarySettings;->BX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/vendorsettings/BaseListFragment;-><init>()V

    .line 265
    return-void
.end method

.method private X(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 162
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/vendorsettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/vendorsettings/UserDictionarySettings;->BX:[Ljava/lang/String;

    const-string v3, "locale is null"

    const/4 v4, 0x0

    const-string v5, "UPPER(word)"

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 168
    :cond_0
    if-eqz p1, :cond_1

    .line 169
    :goto_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/vendorsettings/UserDictionarySettings;->BX:[Ljava/lang/String;

    const-string v3, "locale=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, "UPPER(word)"

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "word=? AND shortcut is null OR shortcut=\'\'"

    new-array v2, v4, [Ljava/lang/String;

    aput-object p0, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void

    .line 259
    :cond_0
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "word=? AND shortcut=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ap(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 233
    iget-object v1, p0, Lcom/android/vendorsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-object v0

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 236
    iget-object v1, p0, Lcom/android/vendorsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/vendorsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/vendorsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v2, "word"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private aq(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 243
    iget-object v1, p0, Lcom/android/vendorsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-object v0

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 246
    iget-object v1, p0, Lcom/android/vendorsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/vendorsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/vendorsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v2, "shortcut"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private it()Landroid/widget/ListAdapter;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 176
    new-instance v0, Lcom/android/vendorsettings/iA;

    invoke-virtual {p0}, Lcom/android/vendorsettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f04018e

    iget-object v3, p0, Lcom/android/vendorsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "word"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "shortcut"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/vendorsettings/iA;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/android/vendorsettings/UserDictionarySettings;)V

    return-object v0

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method private j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 219
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 220
    const-string v1, "mode"

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string v0, "word"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "shortcut"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/vendorsettings/UserDictionarySettings;->BY:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/vendorsettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    .line 227
    const-class v1, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c062a

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 230
    return-void

    :cond_0
    move v0, v6

    .line 220
    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 107
    const v0, 0x7f0400e3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/vendorsettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 118
    if-nez v0, :cond_1

    move-object v0, v1

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/UserDictionarySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 122
    if-nez v2, :cond_2

    move-object v2, v1

    .line 126
    :goto_1
    if-eqz v2, :cond_3

    move-object v0, v2

    .line 134
    :cond_0
    :goto_2
    iput-object v0, p0, Lcom/android/vendorsettings/UserDictionarySettings;->BY:Ljava/lang/String;

    .line 135
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/UserDictionarySettings;->X(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 136
    invoke-virtual {p0}, Lcom/android/vendorsettings/UserDictionarySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    const v1, 0x7f0c0637

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/vendorsettings/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 140
    invoke-direct {p0}, Lcom/android/vendorsettings/UserDictionarySettings;->it()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 142
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 144
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/UserDictionarySettings;->setHasOptionsMenu(Z)V

    .line 149
    return-void

    .line 118
    :cond_1
    const-string v2, "locale"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_2
    const-string v3, "locale"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 128
    :cond_3
    if-nez v0, :cond_0

    move-object v0, v1

    .line 131
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    const/4 v0, 0x1

    const v1, 0x7f0c0629

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_new_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 198
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 200
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 184
    invoke-direct {p0, p3}, Lcom/android/vendorsettings/UserDictionarySettings;->ap(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-direct {p0, p3}, Lcom/android/vendorsettings/UserDictionarySettings;->aq(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/UserDictionarySettings;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 205
    invoke-direct {p0, v2, v2}, Lcom/android/vendorsettings/UserDictionarySettings;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/vendorsettings/BaseListFragment;->onStart()V

    .line 98
    invoke-virtual {p0}, Lcom/android/vendorsettings/UserDictionarySettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c0627

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    .line 99
    return-void
.end method
