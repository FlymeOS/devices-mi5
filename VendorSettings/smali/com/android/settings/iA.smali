.class Lcom/android/vendorsettings/iA;
.super Landroid/widget/SimpleCursorAdapter;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private BZ:Landroid/widget/AlphabetIndexer;

.field private final Ca:Landroid/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/android/vendorsettings/UserDictionarySettings;)V
    .locals 3

    .prologue
    .line 291
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 269
    new-instance v0, Lcom/android/vendorsettings/iB;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/iB;-><init>(Lcom/android/vendorsettings/iA;)V

    iput-object v0, p0, Lcom/android/vendorsettings/iA;->Ca:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    .line 293
    if-eqz p3, :cond_0

    .line 294
    const v0, 0x11070044

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string v1, "word"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 299
    new-instance v2, Landroid/widget/AlphabetIndexer;

    invoke-direct {v2, p3, v1, v0}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/android/vendorsettings/iA;->BZ:Landroid/widget/AlphabetIndexer;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/iA;->Ca:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/iA;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 302
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/vendorsettings/iA;->BZ:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/iA;->BZ:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/vendorsettings/iA;->BZ:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/iA;->BZ:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/vendorsettings/iA;->BZ:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/iA;->BZ:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
