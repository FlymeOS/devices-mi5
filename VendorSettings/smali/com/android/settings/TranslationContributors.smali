.class public Lcom/android/vendorsettings/TranslationContributors;
.super Lmiui/app/Activity;
.source "TranslationContributors.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method private im()Ljava/lang/String;
    .locals 5

    .prologue
    .line 38
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    const/4 v0, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/TranslationContributors;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09001e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 42
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 43
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 44
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 45
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    goto :goto_0

    .line 52
    :cond_0
    if-eqz v0, :cond_1

    .line 54
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 59
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :catch_0
    move-exception v1

    .line 52
    if-eqz v0, :cond_1

    .line 54
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 55
    :catch_1
    move-exception v0

    goto :goto_1

    .line 49
    :catch_2
    move-exception v1

    .line 52
    if-eqz v0, :cond_1

    .line 54
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 55
    :catch_3
    move-exception v0

    goto :goto_1

    .line 52
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_2

    .line 54
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 56
    :cond_2
    :goto_3
    throw v0

    .line 55
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_3

    .line 52
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 22
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/vendorsettings/TranslationContributors;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/android/vendorsettings/TranslationContributors;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    const v1, 0x7f0c1043

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 27
    const v0, 0x7f04017f

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/TranslationContributors;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/android/vendorsettings/TranslationContributors;->im()Ljava/lang/String;

    move-result-object v1

    .line 30
    const v0, 0x7f1302e2

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/TranslationContributors;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const v0, 0x7f1302e1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/TranslationContributors;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    return-void

    .line 34
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
