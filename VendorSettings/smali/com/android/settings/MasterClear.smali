.class public Lcom/android/settings/MasterClear;
.super Lcom/android/settings/InstrumentedFragment;
.source "MasterClear.java"


# instance fields
.field private gC:Landroid/view/View;

.field private gH:Landroid/widget/Button;

.field private final gK:Landroid/view/View$OnClickListener;

.field private pJ:Landroid/view/View;

.field private pK:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 111
    new-instance v0, Lcom/android/settings/dQ;

    invoke-direct {v0, p0}, Lcom/android/settings/dQ;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->gK:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(Landroid/os/UserManager;)V
    .locals 24

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MasterClear;->gC:Landroid/view/View;

    const v3, 0x7f13012e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MasterClear;->gC:Landroid/view/View;

    const v3, 0x7f13012f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 199
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 202
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v12

    .line 203
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 205
    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v14

    .line 207
    const-string v3, "layout_inflater"

    invoke-virtual {v11, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 210
    const/4 v5, 0x0

    .line 211
    const/4 v4, 0x0

    move v9, v4

    :goto_0
    if-ge v9, v13, :cond_5

    .line 212
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 213
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    .line 214
    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 215
    invoke-virtual {v14, v7}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v16

    .line 216
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    .line 217
    if-nez v17, :cond_0

    move v4, v5

    .line 211
    :goto_1
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move v5, v4

    goto :goto_0

    .line 220
    :cond_0
    add-int v6, v5, v17

    .line 222
    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v18

    .line 224
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    .line 226
    invoke-static {v3, v2}, Lcom/android/settings/iC;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 227
    const v5, 0x1020016

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 228
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0c03be

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    .line 230
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    const/4 v4, 0x0

    move v8, v4

    :goto_3
    move/from16 v0, v17

    if-ge v8, v0, :cond_b

    .line 233
    aget-object v20, v16, v8

    .line 234
    const/4 v4, 0x0

    .line 235
    const/4 v5, 0x0

    :goto_4
    move/from16 v0, v19

    if-ge v5, v0, :cond_a

    .line 236
    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aget-object v21, v18, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 237
    aget-object v4, v18, v5

    move-object v7, v4

    .line 241
    :goto_5
    if-nez v7, :cond_3

    .line 242
    const-string v4, "MasterClear"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No descriptor for account name="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " type="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_6
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_3

    .line 228
    :cond_1
    const v4, 0x7f0c03bd

    goto :goto_2

    .line 235
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 246
    :cond_3
    const/4 v4, 0x0

    .line 248
    :try_start_0
    iget v5, v7, Landroid/accounts/AuthenticatorDescription;->iconId:I

    if-eqz v5, :cond_4

    .line 249
    iget-object v5, v7, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v5, v0, v15}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    .line 251
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    iget v0, v7, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v15}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 259
    :cond_4
    :goto_7
    if-nez v4, :cond_9

    .line 260
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v5, v4

    .line 263
    :goto_8
    const v4, 0x7f0400a9

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 265
    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const/4 v7, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v5, v7, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 267
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 254
    :catch_0
    move-exception v5

    .line 255
    const-string v5, "MasterClear"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Bad package name for account type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 256
    :catch_1
    move-exception v5

    .line 257
    const-string v21, "MasterClear"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid icon id for account type "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-static {v0, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 271
    :cond_5
    if-lez v5, :cond_6

    .line 272
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/MasterClear;->gC:Landroid/view/View;

    const v3, 0x7f130130

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v2

    sub-int/2addr v2, v13

    if-lez v2, :cond_7

    const/4 v2, 0x1

    .line 278
    :goto_9
    if-eqz v2, :cond_8

    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    return-void

    .line 277
    :cond_7
    const/4 v2, 0x0

    goto :goto_9

    .line 278
    :cond_8
    const/16 v2, 0x8

    goto :goto_a

    :cond_9
    move-object v5, v4

    goto/16 :goto_8

    :cond_a
    move-object v7, v4

    goto/16 :goto_5

    :cond_b
    move v4, v6

    goto/16 :goto_1
.end method

.method private a(Landroid/view/View;Ljava/lang/StringBuffer;)V
    .locals 2

    .prologue
    .line 178
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 179
    check-cast p1, Landroid/view/ViewGroup;

    .line 180
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 182
    invoke-direct {p0, v1, p2}, Lcom/android/settings/MasterClear;->a(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 185
    check-cast p1, Landroid/widget/TextView;

    .line 186
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 187
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/settings/MasterClear;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->eD()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MasterClear;I)Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->s(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/MasterClear;->pK:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private eD()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 100
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 101
    const-string v0, "erase_sd"

    iget-object v1, p0, Lcom/android/settings/MasterClear;->pK:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    const-class v1, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c04df

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 104
    return-void
.end method

.method private eE()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/settings/MasterClear;->gC:Landroid/view/View;

    const v2, 0x7f130134

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->gH:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/android/settings/MasterClear;->gH:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/MasterClear;->gK:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/MasterClear;->gC:Landroid/view/View;

    const v2, 0x7f130132

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->pJ:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/android/settings/MasterClear;->gC:Landroid/view/View;

    const v2, 0x7f130133

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->pK:Landroid/widget/CheckBox;

    .line 145
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    .line 146
    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->eF()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/android/settings/MasterClear;->pJ:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/android/settings/MasterClear;->gC:Landroid/view/View;

    const v3, 0x7f130131

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 151
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v2, p0, Lcom/android/settings/MasterClear;->gC:Landroid/view/View;

    const v3, 0x7f13012d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 154
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcom/android/settings/MasterClear;->pK:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 169
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 170
    invoke-direct {p0, v0}, Lcom/android/settings/MasterClear;->a(Landroid/os/UserManager;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/android/settings/MasterClear;->gC:Landroid/view/View;

    const v2, 0x7f13012c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 173
    invoke-direct {p0, v1, v0}, Lcom/android/settings/MasterClear;->a(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 174
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    return-void

    :cond_1
    move v0, v1

    .line 158
    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MasterClear;->pJ:Landroid/view/View;

    new-instance v1, Lcom/android/settings/dR;

    invoke-direct {v1, p0}, Lcom/android/settings/dR;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private eF()Z
    .locals 2

    .prologue
    .line 192
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s(I)Z
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/android/settings/aH;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/aH;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0c04d3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/android/settings/aH;->b(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 86
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->eD()V

    goto :goto_0

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->eE()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    const v0, 0x7f0400ab

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    .line 290
    :cond_1
    const v0, 0x7f0400a8

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->gC:Landroid/view/View;

    .line 292
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->eE()V

    .line 293
    iget-object v0, p0, Lcom/android/settings/MasterClear;->gC:Landroid/view/View;

    goto :goto_0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 298
    const/16 v0, 0x42

    return v0
.end method
