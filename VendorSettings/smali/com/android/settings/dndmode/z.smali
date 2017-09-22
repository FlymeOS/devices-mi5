.class Lcom/android/vendorsettings/dndmode/z;
.super Ljava/lang/Object;
.source "VipCallSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic abg:Ljava/lang/String;

.field final synthetic abh:Lcom/android/vendorsettings/dndmode/y;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/dndmode/y;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/vendorsettings/dndmode/z;->abh:Lcom/android/vendorsettings/dndmode/y;

    iput-object p2, p0, Lcom/android/vendorsettings/dndmode/z;->abg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/z;->abh:Lcom/android/vendorsettings/dndmode/y;

    iget-object v0, v0, Lcom/android/vendorsettings/dndmode/y;->abe:Lcom/android/vendorsettings/dndmode/v;

    invoke-static {v0}, Lcom/android/vendorsettings/dndmode/v;->a(Lcom/android/vendorsettings/dndmode/v;)Lmiui/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " _id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vendorsettings/dndmode/z;->abg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 254
    const/4 v0, -0x1

    .line 256
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    const-string v0, "sync_dirty"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 260
    :cond_0
    if-eqz v1, :cond_1

    .line 261
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 268
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 269
    const-string v1, "sync_dirty"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    iget-object v1, p0, Lcom/android/vendorsettings/dndmode/z;->abh:Lcom/android/vendorsettings/dndmode/y;

    iget-object v1, v1, Lcom/android/vendorsettings/dndmode/y;->abe:Lcom/android/vendorsettings/dndmode/v;

    invoke-static {v1}, Lcom/android/vendorsettings/dndmode/v;->a(Lcom/android/vendorsettings/dndmode/v;)Lmiui/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/vendorsettings/dndmode/z;->abg:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 280
    :goto_0
    return-void

    .line 260
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 261
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/z;->abh:Lcom/android/vendorsettings/dndmode/y;

    iget-object v0, v0, Lcom/android/vendorsettings/dndmode/y;->abe:Lcom/android/vendorsettings/dndmode/v;

    invoke-static {v0}, Lcom/android/vendorsettings/dndmode/v;->a(Lcom/android/vendorsettings/dndmode/v;)Lmiui/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/vendorsettings/dndmode/z;->abg:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
