.class public Lcom/android/settings/backup/b;
.super Ljava/lang/Object;
.source "AccountRestoreManager.java"


# static fields
.field private static PE:Ljava/util/HashSet;

.field static final PF:Ljava/lang/String;

.field private static final PG:I

.field private static final PH:[Ljava/lang/String;

.field private static final PI:[Ljava/lang/String;


# instance fields
.field private PA:Ljava/util/ArrayList;

.field private PB:Ljava/util/HashMap;

.field private PC:Ljava/util/HashMap;

.field private PD:Ljava/util/HashSet;

.field private Py:Ljava/io/File;

.field private Pz:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v0, v2, :cond_0

    const-string v0, "/users/0/"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accounts.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/backup/b;->PF:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/backup/b;->PE:Ljava/util/HashSet;

    .line 58
    sget-object v0, Lcom/android/settings/backup/b;->PE:Ljava/util/HashSet;

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/settings/backup/b;->PE:Ljava/util/HashSet;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/settings/backup/b;->PE:Ljava/util/HashSet;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/settings/backup/b;->PE:Ljava/util/HashSet;

    const-string v1, "com.android.exchange"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-static {}, Lcom/android/settings/backup/b;->lI()I

    move-result v0

    sput v0, Lcom/android/settings/backup/b;->PG:I

    .line 325
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/backup/b;->PH:[Ljava/lang/String;

    .line 331
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "type"

    aput-object v1, v0, v3

    const-string v1, "authtoken"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/backup/b;->PI:[Ljava/lang/String;

    return-void

    .line 54
    :cond_0
    const-string v0, "/"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/settings/backup/b;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/backup/b;->PA:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/backup/b;->PB:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/backup/b;->PC:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/backup/b;->PD:Ljava/util/HashSet;

    .line 70
    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/android/settings/backup/b;->PG:I

    return v0
.end method

.method private lE()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 107
    iget-object v0, p0, Lcom/android/settings/backup/b;->PD:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/backup/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 110
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 111
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 112
    array-length v2, v1

    move v0, v8

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v1, v0

    .line 113
    iget-object v5, p0, Lcom/android/settings/backup/b;->PD:Ljava/util/HashSet;

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/b;->PA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/backup/b;->Pz:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v4, "type"

    aput-object v4, v2, v10

    const-string v4, "name"

    aput-object v4, v2, v11

    const-string v4, "password"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 128
    if-nez v0, :cond_1

    .line 151
    :goto_1
    return-void

    .line 132
    :cond_1
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 133
    new-instance v1, Lcom/android/settings/backup/d;

    invoke-direct {v1, v3}, Lcom/android/settings/backup/d;-><init>(Lcom/android/settings/backup/c;)V

    .line 134
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/settings/backup/d;->id:J

    .line 135
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/backup/d;->type:Ljava/lang/String;

    .line 136
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/backup/d;->name:Ljava/lang/String;

    .line 137
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/backup/d;->password:Ljava/lang/String;

    .line 138
    iget-object v2, p0, Lcom/android/settings/backup/b;->PD:Ljava/util/HashSet;

    iget-object v4, v1, Lcom/android/settings/backup/d;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.xiaomi"

    iget-object v4, v1, Lcom/android/settings/backup/d;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/settings/backup/d;->type:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    :cond_2
    sget-object v2, Lcom/android/settings/backup/b;->PE:Ljava/util/HashSet;

    iget-object v4, v1, Lcom/android/settings/backup/d;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    const-string v2, "com.android.email"

    iget-object v4, v1, Lcom/android/settings/backup/d;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.android.exchange"

    iget-object v4, v1, Lcom/android/settings/backup/d;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    :cond_3
    iget-object v2, p0, Lcom/android/settings/backup/b;->PA:Ljava/util/ArrayList;

    invoke-virtual {v2, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 146
    :cond_4
    iget-object v2, p0, Lcom/android/settings/backup/b;->PA:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 150
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private lF()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 159
    iget-object v0, p0, Lcom/android/settings/backup/b;->PC:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/backup/b;->PA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/settings/backup/d;

    .line 161
    iget-object v0, p0, Lcom/android/settings/backup/b;->PD:Ljava/util/HashSet;

    iget-object v1, v6, Lcom/android/settings/backup/d;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-wide v10, v6, Lcom/android/settings/backup/d;->id:J

    .line 165
    iget-object v0, p0, Lcom/android/settings/backup/b;->Pz:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "extras"

    sget-object v2, Lcom/android/settings/backup/b;->PH:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v7, v6, Lcom/android/settings/backup/d;->name:Ljava/lang/String;

    aput-object v7, v4, v9

    iget-object v6, v6, Lcom/android/settings/backup/d;->type:Ljava/lang/String;

    aput-object v6, v4, v12

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 178
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 179
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 186
    iget-object v0, p0, Lcom/android/settings/backup/b;->PC:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    :cond_2
    return-void
.end method

.method private lG()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 191
    iget-object v0, p0, Lcom/android/settings/backup/b;->PB:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 192
    iget-object v0, p0, Lcom/android/settings/backup/b;->PA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/settings/backup/d;

    .line 193
    iget-wide v10, v6, Lcom/android/settings/backup/d;->id:J

    .line 195
    iget-object v0, p0, Lcom/android/settings/backup/b;->Pz:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "authtokens"

    sget-object v2, Lcom/android/settings/backup/b;->PI:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v7, v6, Lcom/android/settings/backup/d;->name:Ljava/lang/String;

    aput-object v7, v4, v9

    iget-object v6, v6, Lcom/android/settings/backup/d;->type:Ljava/lang/String;

    aput-object v6, v4, v12

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    new-instance v2, Lcom/android/settings/backup/e;

    invoke-direct {v2, v5}, Lcom/android/settings/backup/e;-><init>(Lcom/android/settings/backup/c;)V

    .line 211
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/backup/e;->type:Ljava/lang/String;

    .line 212
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/backup/e;->PJ:Ljava/lang/String;

    .line 213
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 215
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/backup/b;->PB:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 218
    :cond_2
    return-void
.end method

.method private static lI()I
    .locals 2

    .prologue
    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 284
    const/16 v0, 0x8

    .line 290
    :goto_0
    return v0

    .line 285
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 286
    const/4 v0, 0x6

    goto :goto_0

    .line 287
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 288
    const/4 v0, 0x5

    goto :goto_0

    .line 290
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lcom/android/settings/backup/f;

    iget-object v1, p0, Lcom/android/settings/backup/b;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/backup/f;-><init>(Lcom/android/settings/backup/b;Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lcom/android/settings/backup/f;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/b;->Pz:Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    invoke-direct {p0}, Lcom/android/settings/backup/b;->lE()V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/backup/b;->lF()V

    .line 77
    invoke-direct {p0}, Lcom/android/settings/backup/b;->lG()V

    .line 78
    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/settings/backup/b;->Py:Ljava/io/File;

    .line 429
    return-void
.end method

.method public lD()V
    .locals 9

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/backup/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 82
    iget-object v0, p0, Lcom/android/settings/backup/b;->PA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/backup/d;

    .line 83
    iget-wide v4, v0, Lcom/android/settings/backup/d;->id:J

    .line 84
    new-instance v6, Landroid/accounts/Account;

    iget-object v1, v0, Lcom/android/settings/backup/d;->name:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/settings/backup/d;->type:Ljava/lang/String;

    invoke-direct {v6, v1, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    .line 87
    :try_start_0
    iget-object v7, v0, Lcom/android/settings/backup/d;->password:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/backup/b;->PC:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v2, v6, v7, v0}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 93
    :goto_0
    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings/backup/b;->PB:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/backup/e;

    .line 96
    iget-object v4, v0, Lcom/android/settings/backup/e;->type:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settings/backup/e;->PJ:Ljava/lang/String;

    invoke-virtual {v2, v6, v4, v0}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v7, "AccountRestoreManager"

    const-string v8, "add account error!"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.backup.ACCOUNT_RESTORED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    const-string v1, "com.miui.cloudservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/android/settings/backup/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/backup/b;->Pz:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 104
    return-void
.end method

.method public lH()V
    .locals 5

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings/backup/b;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 252
    sget-boolean v1, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v1, :cond_1

    .line 253
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.email"

    const-string v3, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_0
    const/4 v2, 0x0

    .line 259
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/backup/b;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 263
    :goto_1
    if-eqz v1, :cond_0

    .line 264
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 265
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 267
    :try_start_1
    new-instance v1, Landroid/app/admin/DeviceAdminInfo;

    iget-object v3, p0, Lcom/android/settings/backup/b;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 268
    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 277
    :cond_0
    :goto_2
    return-void

    .line 255
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.email"

    const-string v3, "com.kingsoft.email.SecurityPolicy$PolicyAdmin"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_1

    .line 273
    :catch_1
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 271
    :catch_2
    move-exception v0

    goto :goto_2

    .line 269
    :catch_3
    move-exception v0

    goto :goto_2
.end method
