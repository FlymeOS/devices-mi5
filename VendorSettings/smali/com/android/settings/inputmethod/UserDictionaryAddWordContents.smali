.class public Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordContents.java"


# static fields
.field private static final agV:[Ljava/lang/String;


# instance fields
.field private BY:Ljava/lang/String;

.field private final agP:Landroid/widget/EditText;

.field private final agQ:Landroid/widget/EditText;

.field private final agR:Ljava/lang/String;

.field private final agS:Ljava/lang/String;

.field private agT:Ljava/lang/String;

.field private agU:Ljava/lang/String;

.field private final mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 171
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "word"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agV:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const v0, 0x7f130307

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agP:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f13030a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agQ:Landroid/widget/EditText;

    .line 66
    const-string v0, "word"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agP:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agP:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agP:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 73
    :cond_0
    const-string v0, "shortcut"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agQ:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agQ:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_1
    const-string v0, "mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    .line 78
    const-string v0, "word"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agR:Ljava/lang/String;

    .line 79
    const-string v0, "shortcut"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agS:Ljava/lang/String;

    .line 80
    const-string v0, "locale"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->bf(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method constructor <init>(Landroid/view/View;Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const v0, 0x7f130307

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agP:Landroid/widget/EditText;

    .line 86
    const v0, 0x7f13030a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agQ:Landroid/widget/EditText;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    .line 88
    iget-object v0, p2, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agT:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agR:Ljava/lang/String;

    .line 89
    iget-object v0, p2, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agU:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agS:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->BY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->bf(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 226
    if-eqz p2, :cond_0

    .line 227
    new-instance v0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    invoke-direct {v0, p0, p2}, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 180
    const-string v0, ""

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->BY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agV:[Ljava/lang/String;

    const-string v3, "word=? AND locale is null"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 190
    :goto_0
    if-nez v1, :cond_2

    .line 193
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v7

    .line 185
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agV:[Ljava/lang/String;

    const-string v3, "word=? AND locale=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v7

    iget-object v8, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->BY:Ljava/lang/String;

    aput-object v8, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 191
    :cond_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    move v0, v6

    .line 193
    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move v7, v0

    goto :goto_1

    :cond_4
    move v0, v7

    .line 191
    goto :goto_2

    .line 193
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 121
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->h(Landroid/os/Bundle;)V

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 123
    iget v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agR:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agS:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/android/vendorsettings/UserDictionarySettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agP:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agQ:Landroid/widget/EditText;

    if-nez v0, :cond_3

    move-object v0, v1

    .line 139
    :cond_2
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 141
    const/4 v0, 0x1

    .line 168
    :goto_1
    return v0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agQ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v1

    .line 134
    goto :goto_0

    .line 143
    :cond_4
    iput-object v3, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agT:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agU:Ljava/lang/String;

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v3, p1}, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 150
    const/4 v0, 0x2

    goto :goto_1

    .line 156
    :cond_5
    invoke-static {v3, v1, v2}, Lcom/android/vendorsettings/UserDictionarySettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 159
    invoke-static {v3, v0, v2}, Lcom/android/vendorsettings/UserDictionarySettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 164
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xfa

    iget-object v4, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->BY:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_2
    invoke-static {p1, v2, v3, v0, v1}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V

    .line 168
    const/4 v0, 0x0

    goto :goto_1

    .line 164
    :cond_7
    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->BY:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/vendorsettings/iC;->Y(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    goto :goto_2
.end method

.method bE(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 112
    iget v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agR:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agS:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/vendorsettings/UserDictionarySettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 118
    :cond_0
    return-void
.end method

.method bf(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->BY:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public d(Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 233
    invoke-static {p1}, Lcom/android/vendorsettings/inputmethod/UserDictionaryList;->bF(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->BY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 236
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 239
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    iget-object v3, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->BY:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->BY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    invoke-static {p1, v2, v1}, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 247
    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    invoke-static {p1, v2, v0}, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_1
    const-string v0, ""

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->BY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    const-string v0, ""

    invoke-static {p1, v2, v0}, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 255
    :cond_2
    new-instance v0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    return-object v2
.end method

.method h(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 100
    const-string v0, "word"

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agP:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "originalWord"

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agR:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agQ:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "shortcut"

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agQ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agS:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 106
    const-string v0, "originalShortcut"

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->agS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/UserDictionaryAddWordContents;->BY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
