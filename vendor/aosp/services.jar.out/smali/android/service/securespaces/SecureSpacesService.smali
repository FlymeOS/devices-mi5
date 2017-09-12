.class public Landroid/service/securespaces/SecureSpacesService;
.super Landroid/os/securespaces/ISecureSpacesService$Stub;
.source "SecureSpacesService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/securespaces/SecureSpacesService$UserRestriction;,
        Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
    }
.end annotation


# static fields
.field private static final SPACE_EXTENSION_MAJOR_VERSION_SUFFIX:Ljava/lang/String; = "majorVersion"

.field private static final SPACE_EXTENSION_MINOR_VERSION_SUFFIX:Ljava/lang/String; = "minorVersion"

.field private static final SPACE_EXTENSION_NAME_SUFFIX:Ljava/lang/String; = "name"

.field private static final SPACE_EXTENSION_SERVICE_NAME_SUFFIX:Ljava/lang/String; = "serviceName"

.field private static final SPACE_EXTENSION_USER_RESTRICTIONS_SUFFIX:Ljava/lang/String; = "userRestrictions"

.field private static final TAG:Ljava/lang/String; = "SecureSpacesService"

.field public static final VERSION_MAJOR:I = 0x1

.field public static final VERSION_MINOR:I

.field private static final sSpaceExtensionPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final mContext:Landroid/content/Context;

.field mExtensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "^securespaces_extension_(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/service/securespaces/SecureSpacesService;->sSpaceExtensionPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/os/securespaces/ISecureSpacesService$Stub;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    .line 82
    iput-object p1, p0, Landroid/service/securespaces/SecureSpacesService;->mContext:Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Landroid/service/securespaces/SecureSpacesService;->findExtensions()V

    .line 84
    return-void
.end method

.method private buildUserRestrictions([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "entries"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/securespaces/SecureSpacesService$UserRestriction;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 184
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v8, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/securespaces/SecureSpacesService$UserRestriction;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 188
    .local v2, "entry":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "parts":[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    move-object v8, v9

    .line 203
    .end local v2    # "entry":Ljava/lang/String;
    .end local v7    # "parts":[Ljava/lang/String;
    .end local v8    # "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/securespaces/SecureSpacesService$UserRestriction;>;"
    :cond_0
    :goto_1
    return-object v8

    .line 190
    .restart local v2    # "entry":Ljava/lang/String;
    .restart local v7    # "parts":[Ljava/lang/String;
    .restart local v8    # "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/securespaces/SecureSpacesService$UserRestriction;>;"
    :cond_1
    const/4 v10, 0x0

    aget-object v5, v7, v10

    .line 191
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 193
    .local v6, "ownerControlled":Z
    const/4 v10, 0x1

    :try_start_0
    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-lez v10, :cond_2

    .line 194
    const/4 v6, 0x1

    .line 199
    :cond_2
    new-instance v10, Landroid/service/securespaces/SecureSpacesService$UserRestriction;

    invoke-direct {v10, p0, v5, v6}, Landroid/service/securespaces/SecureSpacesService$UserRestriction;-><init>(Landroid/service/securespaces/SecureSpacesService;Ljava/lang/String;Z)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v10, "SecureSpacesService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Added user restriction: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", ownerControlled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move-object v8, v9

    .line 197
    goto :goto_1
.end method

.method public static checkCallerIsSystem()V
    .locals 4

    .prologue
    .line 281
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 282
    .local v0, "caller":I
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 283
    const-string v1, "SecureSpacesService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller is from system, uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 286
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Only the system may call the internal SecureSpacesService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private findExtensions()V
    .locals 22

    .prologue
    .line 91
    const-class v8, Lcom/android/internal/R$bool;

    .line 92
    .local v8, "c":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/internal/R$bool;>;"
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 93
    .local v12, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/securespaces/SecureSpacesService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 94
    .local v17, "res":Landroid/content/res/Resources;
    const-string v2, "SecureSpacesService"

    const-string v3, "Finding extensions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v13, 0x0

    .local v13, "i":I
    array-length v15, v12

    .local v15, "max":I
    :goto_0
    if-ge v13, v15, :cond_0

    .line 99
    :try_start_0
    aget-object v2, v12, v13

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 103
    .local v18, "resourceId":I
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v19

    .line 104
    .local v19, "resourceName":Ljava/lang/String;
    if-nez v19, :cond_2

    .line 105
    const-string v2, "SecureSpacesService"

    const-string v3, "Error enumerating Secure Spaces Extensions"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v18    # "resourceId":I
    .end local v19    # "resourceName":Ljava/lang/String;
    :cond_0
    return-void

    .line 100
    :catch_0
    move-exception v9

    .line 96
    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 108
    .restart local v18    # "resourceId":I
    .restart local v19    # "resourceName":Ljava/lang/String;
    :cond_2
    sget-object v2, Landroid/service/securespaces/SecureSpacesService;->sSpaceExtensionPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 109
    .local v14, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 112
    .local v10, "enabled":Z
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, "extensionLabel":Ljava/lang/String;
    const-string v2, "SecureSpacesService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Found extension: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v21, ", enabled: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-nez v10, :cond_3

    .line 115
    const-string v2, "SecureSpacesService"

    const-string v3, "Extension not enabled.  Skipping..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/internal/R$string;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/service/securespaces/SecureSpacesService;->getPrivateResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 122
    .local v16, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "majorVersion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/internal/R$integer;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/service/securespaces/SecureSpacesService;->getPrivateResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 125
    .local v4, "majorVersion":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "minorVersion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/internal/R$integer;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/service/securespaces/SecureSpacesService;->getPrivateResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 128
    .local v5, "minorVersion":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "serviceName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/internal/R$string;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/service/securespaces/SecureSpacesService;->getPrivateResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 131
    .local v6, "serviceName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "userRestrictions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/internal/R$array;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/service/securespaces/SecureSpacesService;->getPrivateResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 135
    .local v20, "userRestrictionEntries":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v7, "userRestrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/securespaces/SecureSpacesService$UserRestriction;>;"
    if-eqz v20, :cond_4

    .line 137
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/service/securespaces/SecureSpacesService;->buildUserRestrictions([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 138
    if-nez v7, :cond_4

    .line 139
    const-string v2, "SecureSpacesService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid user restriction string in Secure Spaces Extension: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v21, ".  Skipping extention..."

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 147
    .end local v4    # "majorVersion":I
    .end local v5    # "minorVersion":I
    .end local v6    # "serviceName":Ljava/lang/String;
    .end local v7    # "userRestrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/securespaces/SecureSpacesService$UserRestriction;>;"
    .end local v16    # "name":Ljava/lang/String;
    .end local v20    # "userRestrictionEntries":[Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 148
    .local v9, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "SecureSpacesService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Could not find needed resource for Secure Spaces Extension: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v21, ". Skipping..."

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 144
    .end local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v4    # "majorVersion":I
    .restart local v5    # "minorVersion":I
    .restart local v6    # "serviceName":Ljava/lang/String;
    .restart local v7    # "userRestrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/securespaces/SecureSpacesService$UserRestriction;>;"
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v20    # "userRestrictionEntries":[Ljava/lang/String;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    move-object/from16 v21, v0

    new-instance v2, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;-><init>(Landroid/service/securespaces/SecureSpacesService;IILjava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v2, "SecureSpacesService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Added extension: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method private getPrivateResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "c"    # Ljava/lang/Class;

    .prologue
    .line 156
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 157
    .local v1, "fields":[Ljava/lang/reflect/Field;
    iget-object v7, p0, Landroid/service/securespaces/SecureSpacesService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 159
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "max":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 162
    :try_start_0
    aget-object v7, v1, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 166
    .local v5, "resourceId":I
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "resourceName":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 168
    const-class v7, Lcom/android/internal/R$bool;

    if-ne p2, v7, :cond_1

    .line 169
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 175
    :goto_1
    return-object v7

    .line 163
    .end local v5    # "resourceId":I
    .end local v6    # "resourceName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 159
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .restart local v5    # "resourceId":I
    .restart local v6    # "resourceName":Ljava/lang/String;
    :cond_1
    const-class v7, Lcom/android/internal/R$integer;

    if-ne p2, v7, :cond_2

    .line 171
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    .line 172
    :cond_2
    const-class v7, Lcom/android/internal/R$string;

    if-ne p2, v7, :cond_3

    .line 173
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 174
    :cond_3
    const-class v7, Lcom/android/internal/R$array;

    if-ne p2, v7, :cond_0

    .line 175
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 179
    .end local v5    # "resourceId":I
    .end local v6    # "resourceName":Ljava/lang/String;
    :cond_4
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v7}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v7
.end method


# virtual methods
.method public getDeviceOwnerUserRestrictions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 270
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v4, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;

    .line 272
    .local v0, "extention":Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
    iget-object v5, v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;->userRestrictions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/securespaces/SecureSpacesService$UserRestriction;

    .line 273
    .local v3, "restriction":Landroid/service/securespaces/SecureSpacesService$UserRestriction;
    iget-boolean v5, v3, Landroid/service/securespaces/SecureSpacesService$UserRestriction;->deviceOwnerOnly:Z

    if-eqz v5, :cond_1

    .line 274
    iget-object v5, v3, Landroid/service/securespaces/SecureSpacesService$UserRestriction;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    .end local v0    # "extention":Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "restriction":Landroid/service/securespaces/SecureSpacesService$UserRestriction;
    :cond_2
    return-object v4
.end method

.method public getExtensionMajorVersion(Ljava/lang/String;)I
    .locals 3
    .param p1, "extensionName"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 232
    iget-object v1, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;

    .line 233
    .local v0, "extension":Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
    if-nez v0, :cond_0

    .line 234
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Secure Spaces extension"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_0
    iget v1, v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;->majorVersion:I

    return v1
.end method

.method public getExtensionMinorVersion(Ljava/lang/String;)I
    .locals 3
    .param p1, "extensionName"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 241
    iget-object v1, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;

    .line 242
    .local v0, "extension":Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
    if-nez v0, :cond_0

    .line 243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Secure Spaces extension"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_0
    iget v1, v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;->minorVersion:I

    return v1
.end method

.method public getExtensionServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "extensionName"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 250
    iget-object v1, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;

    .line 251
    .local v0, "extension":Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
    if-nez v0, :cond_0

    .line 252
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Secure Spaces extension"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_0
    iget-object v1, v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;->serviceName:Ljava/lang/String;

    return-object v1
.end method

.method public getExtensions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMajorVersionNumber()I
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public getMinorVersionNumber()I
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public getUserRestrictions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v4, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;

    .line 260
    .local v0, "extention":Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
    iget-object v5, v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;->userRestrictions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/securespaces/SecureSpacesService$UserRestriction;

    .line 261
    .local v3, "restriction":Landroid/service/securespaces/SecureSpacesService$UserRestriction;
    iget-object v5, v3, Landroid/service/securespaces/SecureSpacesService$UserRestriction;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v0    # "extention":Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "restriction":Landroid/service/securespaces/SecureSpacesService$UserRestriction;
    :cond_1
    return-object v4
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 1
    .param p1, "extensionName"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 226
    iget-object v0, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
