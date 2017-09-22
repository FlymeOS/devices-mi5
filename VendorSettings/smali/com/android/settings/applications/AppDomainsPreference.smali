.class public Lcom/android/vendorsettings/applications/AppDomainsPreference;
.super Lcom/android/vendorsettings/accessibility/ListDialogPreference;
.source "AppDomainsPreference.java"


# instance fields
.field private Ff:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const v0, 0x7f04000b

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/AppDomainsPreference;->setDialogLayoutResource(I)V

    .line 34
    const v0, 0x7f04000c

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/AppDomainsPreference;->au(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public a([Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 39
    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    iput v0, p0, Lcom/android/vendorsettings/applications/AppDomainsPreference;->Ff:I

    .line 40
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->a([Ljava/lang/CharSequence;)V

    .line 41
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0, p2}, Lcom/android/vendorsettings/applications/AppDomainsPreference;->at(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    const v0, 0x7f13001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    return-void
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppDomainsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 46
    iget v0, p0, Lcom/android/vendorsettings/applications/AppDomainsPreference;->Ff:I

    if-nez v0, :cond_0

    .line 47
    const v0, 0x7f0c0b11

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/android/vendorsettings/accessibility/ListDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 52
    iget v0, p0, Lcom/android/vendorsettings/applications/AppDomainsPreference;->Ff:I

    if-ne v0, v3, :cond_1

    const v0, 0x7f0c0b12

    .line 55
    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_1
    const v0, 0x7f0c0b13

    goto :goto_1
.end method
