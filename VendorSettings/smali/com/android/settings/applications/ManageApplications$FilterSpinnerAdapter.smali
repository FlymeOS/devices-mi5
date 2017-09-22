.class Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ManageApplications.java"


# instance fields
.field private final Kf:Lcom/android/vendorsettings/applications/ManageApplications;

.field private final Kl:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/applications/ManageApplications;)V
    .locals 2

    .prologue
    .line 637
    invoke-virtual {p1}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f040079

    invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kl:Ljava/util/ArrayList;

    .line 638
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->setDropDownViewResource(I)V

    .line 639
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    .line 640
    return-void
.end method

.method private aT(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    sget-object v1, Lcom/android/vendorsettings/applications/ManageApplications;->JT:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public aP(I)I
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public aQ(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 655
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kl:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    sget-boolean v0, Lcom/android/vendorsettings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kl:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kl:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 659
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->a(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_4

    move v0, v3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 661
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->notifyDataSetChanged()V

    .line 662
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 663
    sget-boolean v0, Lcom/android/vendorsettings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto selecting filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->b(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 665
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/applications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 659
    :cond_4
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public aR(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 670
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kl:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    sget-boolean v0, Lcom/android/vendorsettings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kl:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 675
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->a(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_4

    move v0, v3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 677
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->notifyDataSetChanged()V

    .line 678
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/vendorsettings/applications/ManageApplications;->HU:I

    if-ne v0, p1, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 680
    sget-boolean v0, Lcom/android/vendorsettings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto selecting filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kl:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications;->b(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 682
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kf:Lcom/android/vendorsettings/applications/ManageApplications;

    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/applications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 675
    :cond_4
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public aS(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->aT(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->Kl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->aS(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public i(IZ)V
    .locals 0

    .prologue
    .line 647
    if-eqz p2, :cond_0

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->aQ(I)V

    .line 652
    :goto_0
    return-void

    .line 650
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->aR(I)V

    goto :goto_0
.end method
