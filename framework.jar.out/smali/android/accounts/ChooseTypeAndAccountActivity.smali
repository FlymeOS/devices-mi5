.class public Landroid/accounts/ChooseTypeAndAccountActivity;
.super Landroid/app/Activity;
.source "ChooseTypeAndAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_ADD_ACCOUNT_AUTH_TOKEN_TYPE_STRING:Ljava/lang/String; = "authTokenType"

.field public static final EXTRA_ADD_ACCOUNT_OPTIONS_BUNDLE:Ljava/lang/String; = "addAccountOptions"

.field public static final EXTRA_ADD_ACCOUNT_REQUIRED_FEATURES_STRING_ARRAY:Ljava/lang/String; = "addAccountRequiredFeatures"

.field public static final EXTRA_ALLOWABLE_ACCOUNTS_ARRAYLIST:Ljava/lang/String; = "allowableAccounts"

.field public static final EXTRA_ALLOWABLE_ACCOUNT_TYPES_STRING_ARRAY:Ljava/lang/String; = "allowableAccountTypes"

.field public static final EXTRA_ALWAYS_PROMPT_FOR_ACCOUNT:Ljava/lang/String; = "alwaysPromptForAccount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DESCRIPTION_TEXT_OVERRIDE:Ljava/lang/String; = "descriptionTextOverride"

.field public static final EXTRA_SELECTED_ACCOUNT:Ljava/lang/String; = "selectedAccount"

.field private static final KEY_INSTANCE_STATE_ACCOUNT_LIST:Ljava/lang/String; = "accountList"

.field private static final KEY_INSTANCE_STATE_EXISTING_ACCOUNTS:Ljava/lang/String; = "existingAccounts"

.field private static final KEY_INSTANCE_STATE_PENDING_REQUEST:Ljava/lang/String; = "pendingRequest"

.field private static final KEY_INSTANCE_STATE_SELECTED_ACCOUNT_NAME:Ljava/lang/String; = "selectedAccountName"

.field private static final KEY_INSTANCE_STATE_SELECTED_ADD_ACCOUNT:Ljava/lang/String; = "selectedAddAccount"

.field public static final REQUEST_ADD_ACCOUNT:I = 0x2

.field public static final REQUEST_CHOOSE_TYPE:I = 0x1

.field public static final REQUEST_NULL:I = 0x0

.field private static final SELECTED_ITEM_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AccountChooser"


# instance fields
.field private mAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mCallingPackage:Ljava/lang/String;

.field private mCallingUid:I

.field private mDescriptionOverride:Ljava/lang/String;

.field private mDisallowAddAccounts:Z

.field private mDontShowPicker:Z

.field private mExistingAccounts:[Landroid/os/Parcelable;

.field private mOkButton:Landroid/widget/Button;

.field private mPendingRequest:I

.field private mSelectedAccountName:Ljava/lang/String;

.field private mSelectedAddNewAccount:Z

.field private mSelectedItemIndex:I

.field private mSetOfAllowableAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mSetOfRelevantAccountTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    iput-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    .line 120
    iput-boolean v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    .line 124
    iput v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 125
    iput-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    return-void
.end method

.method static synthetic access$002(Landroid/accounts/ChooseTypeAndAccountActivity;I)I
    .locals 0
    .param p0, "x0"    # Landroid/accounts/ChooseTypeAndAccountActivity;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    return p1
.end method

.method static synthetic access$100(Landroid/accounts/ChooseTypeAndAccountActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Landroid/accounts/ChooseTypeAndAccountActivity;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getAcceptableAccountChoices(Landroid/accounts/AccountManager;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    iget v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    invoke-virtual {p1, v6, v7}, Landroid/accounts/AccountManager;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v1

    .line 490
    .local v1, "accounts":[Landroid/accounts/Account;
    new-instance v2, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 491
    .local v2, "accountsToPopulate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v3, v1

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v3, v4

    .line 492
    .local v0, "account":Landroid/accounts/Account;
    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 491
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 495
    :cond_1
    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 499
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 501
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_3
    return-object v2
.end method

.method private getAllowableAccountSet(Landroid/content/Intent;)Ljava/util/Set;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    const/4 v2, 0x0

    .line 534
    .local v2, "setOfAllowableAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    const-string v4, "allowableAccounts"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 536
    .local v3, "validAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_0

    .line 537
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "setOfAllowableAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 538
    .restart local v2    # "setOfAllowableAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 539
    .local v1, "parcelable":Landroid/os/Parcelable;
    check-cast v1, Landroid/accounts/Account;

    .end local v1    # "parcelable":Landroid/os/Parcelable;
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 542
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method

.method private getItemIndexToSelect(Ljava/util/ArrayList;Ljava/lang/String;Z)I
    .locals 2
    .param p2, "selectedAccountName"    # Ljava/lang/String;
    .param p3, "selectedAddNewAccount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    if-eqz p3, :cond_1

    .line 456
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 465
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 460
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 465
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getListOfDisplayableOptions(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-boolean v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/2addr v2, v3

    new-array v1, v2, [Ljava/lang/String;

    .line 472
    .local v1, "listItems":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 473
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 471
    .end local v0    # "i":I
    .end local v1    # "listItems":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 475
    .restart local v0    # "i":I
    .restart local v1    # "listItems":[Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    if-nez v2, :cond_2

    .line 476
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104046f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 479
    :cond_2
    return-object v1
.end method

.method private getReleventAccountTypes(Landroid/content/Intent;)Ljava/util/Set;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    const/4 v6, 0x0

    .line 512
    .local v6, "setOfRelevantAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v8, "allowableAccountTypes"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "allowedAccountTypes":[Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    .line 515
    .local v3, "descs":[Landroid/accounts/AuthenticatorDescription;
    new-instance v7, Ljava/util/HashSet;

    array-length v8, v3

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 516
    .local v7, "supportedAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, v3

    .local v1, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    .line 517
    .local v2, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v8, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 516
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 519
    .end local v2    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    if-eqz v0, :cond_1

    .line 520
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v6

    .line 521
    invoke-interface {v6, v7}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 525
    :goto_1
    return-object v6

    .line 523
    :cond_1
    move-object v6, v7

    goto :goto_1
.end method

.method private onAccountSelected(Landroid/accounts/Account;)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 409
    const-string v0, "AccountChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selected account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method private overrideDescriptionIfSupplied(Ljava/lang/String;)V
    .locals 2
    .param p1, "descriptionOverride"    # Ljava/lang/String;

    .prologue
    .line 550
    const v1, 0x102030a

    invoke-virtual {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 551
    .local v0, "descriptionView":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 552
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private final populateUIAccountList([Ljava/lang/String;)V
    .locals 4
    .param p1, "listItems"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 563
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 564
    .local v0, "list":Landroid/widget/ListView;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x109000f

    invoke-direct {v1, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 566
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 567
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 568
    new-instance v1, Landroid/accounts/ChooseTypeAndAccountActivity$1;

    invoke-direct {v1, p0}, Landroid/accounts/ChooseTypeAndAccountActivity$1;-><init>(Landroid/accounts/ChooseTypeAndAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 576
    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 577
    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 578
    const-string v1, "AccountChooser"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    const-string v1, "AccountChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be selected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    return-void
.end method

.method private setNonLabelThemeAndCallSuperCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 404
    const v0, 0x103023c

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->setTheme(I)V

    .line 405
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 406
    return-void
.end method

.method private setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 414
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 415
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v1, "accountType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 418
    const-string v1, "AccountChooser"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    const-string v1, "AccountChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChooseTypeAndAccountActivity.setResultAndFinish: selected account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 423
    return-void
.end method

.method private startChooseAccountTypeActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 426
    const-string v1, "AccountChooser"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    const-string v1, "AccountChooser"

    const-string v2, "ChooseAccountTypeActivity.startChooseAccountTypeActivity()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/accounts/ChooseTypeAndAccountActivityInjector;->toMiuiChooseAccountTypeActivity(Landroid/content/Intent;)V

    .line 434
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 435
    const-string v1, "allowableAccountTypes"

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "allowableAccountTypes"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v1, "addAccountOptions"

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "addAccountOptions"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 439
    const-string v1, "addAccountRequiredFeatures"

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "addAccountRequiredFeatures"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v1, "authTokenType"

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "authTokenType"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    invoke-virtual {p0, v0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 444
    iput v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 445
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 14
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 285
    const-string v11, "AccountChooser"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 286
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 287
    :cond_0
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 288
    .local v7, "extras":Landroid/os/Bundle;
    :goto_0
    const-string v11, "AccountChooser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ChooseTypeAndAccountActivity.onActivityResult(reqCode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", resCode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", extras="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v7    # "extras":Landroid/os/Bundle;
    :cond_1
    const/4 v11, 0x0

    iput v11, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 295
    if-nez p2, :cond_4

    .line 298
    iget-object v11, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 299
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    .line 300
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 354
    :cond_2
    :goto_1
    return-void

    .line 287
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 305
    :cond_4
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_7

    .line 306
    const/4 v11, 0x1

    if-ne p1, v11, :cond_9

    .line 307
    if-eqz p3, :cond_5

    .line 308
    const-string v11, "accountType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "accountType":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 310
    invoke-virtual {p0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->runAddAccountForAuthenticator(Ljava/lang/String;)V

    goto :goto_1

    .line 314
    .end local v4    # "accountType":Ljava/lang/String;
    :cond_5
    const-string v11, "AccountChooser"

    const-string v12, "ChooseTypeAndAccountActivity.onActivityResult: unable to find account type, pretending the request was canceled"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_6
    const-string v11, "AccountChooser"

    const-string v12, "ChooseTypeAndAccountActivity.onActivityResult: unable to find added account, pretending the request was canceled"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_7
    const-string v11, "AccountChooser"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 350
    const-string v11, "AccountChooser"

    const-string v12, "ChooseTypeAndAccountActivity.onActivityResult: canceled"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_8
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    .line 353
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    goto :goto_1

    .line 316
    :cond_9
    const/4 v11, 0x2

    if-ne p1, v11, :cond_6

    .line 317
    const/4 v2, 0x0

    .line 318
    .local v2, "accountName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 320
    .restart local v4    # "accountType":Ljava/lang/String;
    if-eqz p3, :cond_a

    .line 321
    const-string v11, "authAccount"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    const-string v11, "accountType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 325
    :cond_a
    if-eqz v2, :cond_b

    if-nez v4, :cond_d

    .line 326
    :cond_b
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v11

    iget-object v12, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    iget v13, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    invoke-virtual {v11, v12, v13}, Landroid/accounts/AccountManager;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v6

    .line 328
    .local v6, "currentAccounts":[Landroid/accounts/Account;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 329
    .local v10, "preExistingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    .local v5, "arr$":[Landroid/os/Parcelable;
    array-length v9, v5

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_c

    aget-object v3, v5, v8

    .line 330
    .local v3, "accountParcel":Landroid/os/Parcelable;
    check-cast v3, Landroid/accounts/Account;

    .end local v3    # "accountParcel":Landroid/os/Parcelable;
    invoke-interface {v10, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 332
    :cond_c
    move-object v5, v6

    .local v5, "arr$":[Landroid/accounts/Account;
    array-length v9, v5

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v9, :cond_d

    aget-object v1, v5, v8

    .line 333
    .local v1, "account":Landroid/accounts/Account;
    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 334
    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 335
    iget-object v4, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 341
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v5    # "arr$":[Landroid/accounts/Account;
    .end local v6    # "currentAccounts":[Landroid/accounts/Account;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "preExistingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    :cond_d
    if-nez v2, :cond_e

    if-eqz v4, :cond_6

    .line 342
    :cond_e
    invoke-direct {p0, v2, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 332
    .restart local v1    # "account":Landroid/accounts/Account;
    .restart local v5    # "arr$":[Landroid/accounts/Account;
    .restart local v6    # "currentAccounts":[Landroid/accounts/Account;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v10    # "preExistingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->onBackPressed()V

    .line 268
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 135
    const-string v7, "AccountChooser"

    invoke-static {v7, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    const-string v7, "AccountChooser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ChooseTypeAndAccountActivity.onCreate(savedInstanceState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    const/4 v3, 0x0

    .line 143
    .local v3, "message":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 144
    .local v0, "activityToken":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, v0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v7

    iput v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    .line 145
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, v0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    .line 147
    iget v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 148
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    new-instance v10, Landroid/os/UserHandle;

    iget v11, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v10}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v5

    .line 150
    .local v5, "restrictions":Landroid/os/Bundle;
    const-string/jumbo v7, "no_modify_accounts"

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "activityToken":Landroid/os/IBinder;
    .end local v5    # "restrictions":Landroid/os/Bundle;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 161
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_5

    .line 162
    const-string/jumbo v7, "pendingRequest"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 163
    const-string v7, "existingAccounts"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    .line 167
    const-string/jumbo v7, "selectedAccountName"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    .line 170
    const-string/jumbo v7, "selectedAddAccount"

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    .line 172
    const-string v7, "accountList"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    .line 184
    :cond_2
    :goto_1
    const-string v7, "AccountChooser"

    invoke-static {v7, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 185
    const-string v7, "AccountChooser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "selected account name is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_3
    invoke-direct {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->getAllowableAccountSet(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v7

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    .line 190
    invoke-direct {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->getReleventAccountTypes(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v7

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    .line 191
    const-string v7, "descriptionTextOverride"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDescriptionOverride:Ljava/lang/String;

    .line 193
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->getAcceptableAccountChoices(Landroid/accounts/AccountManager;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    .line 194
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    if-eqz v7, :cond_4

    .line 196
    invoke-virtual {p0, v8}, Landroid/accounts/ChooseTypeAndAccountActivity;->requestWindowFeature(I)Z

    .line 197
    const v7, 0x1090033

    invoke-virtual {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->setContentView(I)V

    .line 198
    iput-boolean v8, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDontShowPicker:Z

    .line 201
    :cond_4
    iget-boolean v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDontShowPicker:Z

    if-eqz v7, :cond_6

    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 237
    :goto_2
    return-void

    .line 153
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 155
    .local v4, "re":Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get caller identity \n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    .end local v4    # "re":Landroid/os/RemoteException;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_5
    iput v9, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 175
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    .line 178
    const-string/jumbo v7, "selectedAccount"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 179
    .local v6, "selectedAccount":Landroid/accounts/Account;
    if-eqz v6, :cond_2

    .line 180
    iget-object v7, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    goto/16 :goto_1

    .line 210
    .end local v6    # "selectedAccount":Landroid/accounts/Account;
    :cond_6
    iget v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    if-nez v7, :cond_7

    .line 213
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 214
    invoke-direct {p0, p1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setNonLabelThemeAndCallSuperCreate(Landroid/os/Bundle;)V

    .line 215
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v7, v8, :cond_8

    .line 217
    iput v8, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 218
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->runAddAccountForAuthenticator(Ljava/lang/String;)V

    .line 225
    :cond_7
    :goto_3
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->getListOfDisplayableOptions(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "listItems":[Ljava/lang/String;
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    iget-boolean v11, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    invoke-direct {p0, v7, v10, v11}, Landroid/accounts/ChooseTypeAndAccountActivity;->getItemIndexToSelect(Ljava/util/ArrayList;Ljava/lang/String;Z)I

    move-result v7

    iput v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 230
    const v7, 0x1090041

    invoke-virtual {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->setContentView(I)V

    .line 231
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDescriptionOverride:Ljava/lang/String;

    invoke-direct {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->overrideDescriptionIfSupplied(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->populateUIAccountList([Ljava/lang/String;)V

    .line 235
    const v7, 0x102001a

    invoke-virtual {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    .line 236
    iget-object v10, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    iget v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v11, -0x1

    if-eq v7, v11, :cond_9

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 220
    .end local v2    # "listItems":[Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->startChooseAccountTypeActivity()V

    goto :goto_3

    .restart local v2    # "listItems":[Ljava/lang/String;
    :cond_9
    move v7, v9

    .line 236
    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 241
    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "AccountChooser"

    const-string v1, "ChooseTypeAndAccountActivity.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 245
    return-void
.end method

.method public onOkButtonClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 271
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 273
    invoke-direct {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->startChooseAccountTypeActivity()V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-direct {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->onAccountSelected(Landroid/accounts/Account;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 250
    const-string/jumbo v0, "pendingRequest"

    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 252
    const-string v0, "existingAccounts"

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 254
    :cond_0
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 255
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 256
    const-string/jumbo v0, "selectedAddAccount"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    :cond_1
    :goto_0
    const-string v0, "accountList"

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 264
    return-void

    .line 258
    :cond_2
    const-string/jumbo v0, "selectedAddAccount"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    const-string/jumbo v1, "selectedAccountName"

    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    iget v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "accountManagerFuture":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 374
    .local v0, "accountManagerResult":Landroid/os/Bundle;
    const-string/jumbo v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 376
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 377
    const/4 v4, 0x2

    iput v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 378
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    iget v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    invoke-virtual {v4, v5, v6}, Landroid/accounts/AccountManager;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v4

    iput-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    .line 380
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const v5, -0x10000001

    and-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 381
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1

    .line 395
    .end local v0    # "accountManagerResult":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v2

    .line 385
    .local v2, "e":Landroid/accounts/OperationCanceledException;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    .line 386
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    goto :goto_0

    .line 389
    .end local v2    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v4

    .line 391
    :cond_0
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 392
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "errorMessage"

    const-string v5, "error communicating with server"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 394
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    goto :goto_0

    .line 388
    .end local v1    # "bundle":Landroid/os/Bundle;
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method protected runAddAccountForAuthenticator(Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 357
    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "AccountChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "runAddAccountForAuthenticator: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addAccountOptions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 362
    .local v4, "options":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addAccountRequiredFeatures"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "requiredFeatures":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authTokenType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "authTokenType":Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    move-object v1, p1

    move-object v6, p0

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 368
    return-void
.end method
